#pragma once

#include "utils/bit_pack.hpp"
#include "utils/sha256.hpp"
#include "utils/sha512.hpp"
#include "utils/sha_version.hpp"
#include "xor_gadget.hpp"

#include <libsnark/common/default_types/r1cs_ppzksnark_pp.hpp>
#include <libsnark/gadgetlib1/gadget.hpp>
#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/hash_io.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/sha256/sha256_gadget.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/sha512/sha512_gadget.hpp>
#include <libsnark/gadgetlib1/protoboard.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_gg_ppzksnark/r1cs_gg_ppzksnark.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_gg_ppzksnark/r1cs_gg_ppzksnark.tcc>

#include <iostream>
#include <string>
#include <type_traits>

#if defined(__INTELLISENSE__) && 1
using ppT = libsnark::default_r1cs_ppzksnark_pp;
static constexpr Sha_version sha_version = Sha_version::SHA256;
#else
template<typename ppT = libsnark::default_r1cs_ppzksnark_pp,
         Sha_version sha_version = Sha_version::SHA256>
#endif
class ABR_Gadget
{
public:
    using Fr = libff::Fr<ppT>;
    using DigVar = libsnark::digest_variable<Fr>;
    using BlockVar = libsnark::block_variable<Fr>;
    using Keypair = libsnark::r1cs_gg_ppzksnark_keypair<ppT>;
    using Protoboard = libsnark::protoboard<Fr>;
    using GadSha = typename std::conditional<
        sha_version == Sha_version::SHA256, libsnark::sha256_two_to_one_hash_gadget<libff::Fr<ppT>>,
        libsnark::sha512::sha512_two_to_one_hash_gadget<libff::Fr<ppT>>>::type;
    using GadXor = XOR_gadget<Fr>;
    using Proof = libsnark::r1cs_gg_ppzksnark_proof<ppT>;


private:
    Protoboard pb;
    Keypair keypair;

    DigVar hash_out;

    std::vector<DigVar> hash_l;
    std::vector<DigVar> hash_r;
    std::vector<DigVar> hash_lx;
    std::vector<DigVar> hash_rx;
    std::vector<DigVar> hash_lxm;
    std::vector<DigVar> hash_rxm;
    std::vector<DigVar> hash_m;
    std::vector<GadSha> foo_hash;
    std::vector<GadXor> foo_xor;

public:
    static constexpr size_t DIGEST_SZ = sha_version == Sha_version::SHA256
                                            ? libsnark::SHA256_digest_size
                                            : libsnark::sha512::SHA512_digest_size;
    static constexpr size_t BLOCK_SZ = sha_version == Sha_version::SHA256
                                           ? libsnark::SHA256_block_size
                                           : libsnark::sha512::SHA512_block_size;
    static constexpr auto hash_oneblock = sha_version == Sha_version::SHA256
                                              ? sha256::hash_oneblock
                                              : ::sha512::hash_oneblock;

    ABR_Gadget(size_t height, size_t trans_idx) :
        pb{},                          //
        keypair{},                     //
        hash_out{pb, DIGEST_SZ, "out"} //
    {
        size_t leaves_n = 1ULL << (height - 1);

        std::string name_l{"hashL_"};
        std::string name_r{"hashR_"};
        std::string name_lx{"hashLX_"};
        std::string name_rx{"hashRX_"};
        std::string name_lxm{"hashLXM_"};
        std::string name_rxm{"hashEXM_"};
        std::string name_m{"hashM_"};
        std::string name_foo_h{"fooH_"};
        std::string name_foo_x{"fooX_"};

        hash_lx.emplace_back(pb, DIGEST_SZ, FMT(name_lx, "0"));
        hash_rx.emplace_back(pb, DIGEST_SZ, FMT(name_rx, "0"));
        hash_m.emplace_back(pb, DIGEST_SZ, FMT(name_m, "0"));
        hash_lxm.emplace_back(pb, DIGEST_SZ, FMT(name_lxm, "1"));
        hash_rxm.emplace_back(pb, DIGEST_SZ, FMT(name_rxm, "1"));

        if (trans_idx < leaves_n)
        {
            trans_idx >>= 1;

            foo_hash.emplace_back(pb,                                              //
                                  hash_lxm.back(), hash_rxm.back(),                //
                                  trans_idx & 1 ? hash_rx.back() : hash_lx.back(), //
                                  FMT(name_foo_h, "0"));
            foo_hash.back().generate_r1cs_constraints();

            hash_lxm.emplace_back(pb, DIGEST_SZ, FMT(name_lxm, "0"));
            hash_rxm.emplace_back(pb, DIGEST_SZ, FMT(name_rxm, "0"));

            if (trans_idx & 1)
            {
                foo_xor.emplace_back(pb,                            //
                                     hash_rx.back(), hash_m.back(), //
                                     hash_rxm.back(),               //
                                     FMT(name_foo_x, "0"));
                foo_xor.back().generate_r1cs_constraints();
            }
            else
            {
                foo_xor.emplace_back(pb,                            //
                                     hash_lx.back(), hash_m.back(), //
                                     hash_lxm.back(),               //
                                     FMT(name_foo_x, "0"));
                foo_xor.back().generate_r1cs_constraints();
            }
        }
        else
        {
            trans_idx >>= 1;
            do
            {
                trans_idx -= leaves_n;
                leaves_n /= 2;
                --height;
            } while (trans_idx >= leaves_n);

            foo_xor.emplace_back(pb,                            //
                                 hash_rx.back(), hash_m.back(), //
                                 hash_rxm.back(),               //
                                 FMT(name_foo_x, "0"));
            foo_xor.back().generate_r1cs_constraints();

            foo_xor.emplace_back(pb,                            //
                                 hash_lx.back(), hash_m.back(), //
                                 hash_lxm.back(),               //
                                 FMT(name_foo_x, "0"));
            foo_xor.back().generate_r1cs_constraints();
        }

        trans_idx >>= 1;
        if (trans_idx & 1)
        {

            hash_r.emplace_back(pb, DIGEST_SZ, FMT(name_r, "0"));
            foo_hash.emplace_back(pb,                               //
                                  hash_lxm.back(), hash_rxm.back(), //
                                  hash_r.back(),                    //
                                  FMT(name_foo_h, "1"));

            foo_hash.back().generate_r1cs_constraints();
        }
        else
        {
            hash_l.emplace_back(pb, DIGEST_SZ, FMT(name_l, "0"));
            foo_hash.emplace_back(pb,                               //
                                  hash_lxm.back(), hash_rxm.back(), //
                                  hash_l.back(),                    //
                                  FMT(name_foo_h, "1"));
            foo_hash.back().generate_r1cs_constraints();
        }

        for (size_t i = 1; i < height - 1; ++i)
        {
            std::string ext{std::to_string(i)};

            hash_lx.emplace_back(pb, DIGEST_SZ, FMT(name_lx, ext));
            hash_rx.emplace_back(pb, DIGEST_SZ, FMT(name_rx, ext));
            hash_m.emplace_back(pb, DIGEST_SZ, FMT(name_m, "0"));
            hash_lxm.emplace_back(pb, DIGEST_SZ, FMT(name_lxm, ext));
            hash_rxm.emplace_back(pb, DIGEST_SZ, FMT(name_rxm, ext));

            if (trans_idx & 1)
            {
                foo_xor.emplace_back(pb,                                         //
                                     hash_r.back(), hash_rx[hash_rx.size() - 2], //
                                     hash_rx.back(),                             //
                                     FMT(name_foo_x, ext));
                foo_xor.back().generate_r1cs_constraints();
            }
            else
            {
                foo_xor.emplace_back(pb,                                         //
                                     hash_l.back(), hash_rx[hash_rx.size() - 2], //
                                     hash_lx.back(),                             //
                                     FMT(name_foo_x, ext));
                foo_xor.back().generate_r1cs_constraints();
            }
            foo_xor.emplace_back(pb,                            //
                                 hash_lx.back(), hash_m.back(), //
                                 hash_lxm.back(),               //
                                 FMT(name_foo_x, ext));
            foo_xor.back().generate_r1cs_constraints();
            foo_xor.emplace_back(pb,                            //
                                 hash_rx.back(), hash_m.back(), //
                                 hash_rxm.back(),               //
                                 FMT(name_foo_x, ext));
            foo_xor.back().generate_r1cs_constraints();

            trans_idx >>= 1;

            if (trans_idx & 1)
            {
                hash_r.emplace_back(pb, DIGEST_SZ, FMT(name_r, ext));

                foo_hash.emplace_back(pb,                               //
                                      hash_lxm.back(), hash_rxm.back(), //
                                      hash_r.back(),                    //
                                      FMT(name_foo_h, ext));
                foo_hash.back().generate_r1cs_constraints();
            }
            else
            {
                hash_l.emplace_back(pb, DIGEST_SZ, FMT(name_l, ext));

                foo_hash.emplace_back(pb,                               //
                                      hash_lxm.back(), hash_rxm.back(), //
                                      hash_l.back(),                    //
                                      FMT(name_foo_h, ext));
                foo_hash.back().generate_r1cs_constraints();
            }
        }
        foo_xor.emplace_back(pb, hash_l.back(), hash_rx.back(), hash_out, "fooX_last");
        foo_xor.back().generate_r1cs_constraints();

        pb.set_input_sizes(DIGEST_SZ);

        // Generate keys when finished
        Keypair tmp = libsnark::r1cs_gg_ppzksnark_generator<ppT>(pb.get_constraint_system());
        keypair.pk = tmp.pk;
        keypair.vk = tmp.vk;
    }

    Proof generate_proof(libff::bit_vector my_hash_v,                        //
                         const std::vector<libff::bit_vector> &other_hash_v, //
                         size_t trans_idx                                    //
    )
    {
        static constexpr size_t DIG_SZ = DIGEST_SZ / CHAR_BIT;
        static constexpr size_t BLK_SZ = BLOCK_SZ / CHAR_BIT;
        uint8_t block[BLK_SZ];
        uint8_t digest[DIG_SZ];

        pb.clear_values();
        hash_out.generate_r1cs_witness(other_hash_v.back());

        if (trans_idx & 1)
        {
            hash_l[0].generate_r1cs_witness(other_hash_v[0]);
            hash_r[0].generate_r1cs_witness(my_hash_v);

            pack_bits(block, other_hash_v[0]);
            pack_bits(block + DIG_SZ, my_hash_v);
        }
        else
        {
            hash_l[0].generate_r1cs_witness(my_hash_v);
            hash_r[0].generate_r1cs_witness(other_hash_v[0]);

            pack_bits(block, my_hash_v);
            pack_bits(block + DIG_SZ, other_hash_v[0]);
        }

        hash_oneblock(digest, block);
        unpack_bits(my_hash_v, digest);
        hash_f[0].generate_r1cs_witness();

        for (size_t i = 1; i < other_hash_v.size() - 1; ++i)
        {
            trans_idx >>= 1;

            if (trans_idx & 1)
            {
                hash_l[i].generate_r1cs_witness(other_hash_v[i]);
                hash_r[i].generate_r1cs_witness(my_hash_v);
                hash_f[i].generate_r1cs_witness();

                pack_bits(block, other_hash_v[i]);
                pack_bits(block + DIG_SZ, my_hash_v);
            }
            else
            {
                hash_l[i].generate_r1cs_witness(my_hash_v);
                hash_r[i].generate_r1cs_witness(other_hash_v[i]);
                hash_f[i].generate_r1cs_witness();

                pack_bits(block, my_hash_v);
                pack_bits(block + DIG_SZ, other_hash_v[i]);
            }

            hash_oneblock(digest, block);
            unpack_bits(my_hash_v, digest);
        }

        return libsnark::r1cs_gg_ppzksnark_prover<ppT>(keypair.pk, pb.primary_input(),
                                                       pb.auxiliary_input());
    }

    bool verify_proof(const Proof &proof, const libff::bit_vector &hash_v)
    {
        auto pvk = libsnark::r1cs_gg_ppzksnark_verifier_process_vk<ppT>(keypair.vk);

        hash_out.generate_r1cs_witness(hash_v);

        return libsnark::r1cs_gg_ppzksnark_online_verifier_strong_IC<ppT>(pvk, pb.primary_input(),
                                                                          proof);
    }
};
