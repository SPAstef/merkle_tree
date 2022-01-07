#pragma once

#include "utils/sha256.hpp"
#include "utils/sha512.hpp"
#include "utils/sha_version.hpp"

#include <libsnark/common/default_types/r1cs_ppzksnark_pp.hpp>
#include <libsnark/gadgetlib1/gadget.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/hash_io.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/sha256/sha256_gadget.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/sha512/sha512_gadget.hpp>
#include <libsnark/gadgetlib1/protoboard.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_gg_ppzksnark/r1cs_gg_ppzksnark.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_gg_ppzksnark/r1cs_gg_ppzksnark.tcc>

#include <iostream>
#include <string>
#include <type_traits>

static inline void unpack_bits(libff::bit_vector &bv, const uint8_t *v)
{
    for (size_t i = 0, sz = bv.size() / CHAR_BIT; i < sz; ++i)
    {
        bv[i * 8 + 0] = v[i] >> 7 & 1;
        bv[i * 8 + 1] = v[i] >> 6 & 1;
        bv[i * 8 + 2] = v[i] >> 5 & 1;
        bv[i * 8 + 3] = v[i] >> 4 & 1;
        bv[i * 8 + 4] = v[i] >> 3 & 1;
        bv[i * 8 + 5] = v[i] >> 2 & 1;
        bv[i * 8 + 6] = v[i] >> 1 & 1;
        bv[i * 8 + 7] = v[i] >> 0 & 1;
    }
}

static inline void pack_bits(uint8_t *v, const libff::bit_vector &bv)
{
    for (size_t i = 0, sz = bv.size() / CHAR_BIT; i < sz; ++i)
    {
        v[i] = 0;
        v[i] |= bv[i * 8 + 0] << 7;
        v[i] |= bv[i * 8 + 1] << 6;
        v[i] |= bv[i * 8 + 2] << 5;
        v[i] |= bv[i * 8 + 3] << 4;
        v[i] |= bv[i * 8 + 4] << 3;
        v[i] |= bv[i * 8 + 5] << 2;
        v[i] |= bv[i * 8 + 6] << 1;
        v[i] |= bv[i * 8 + 7] << 0;
    }
}

#if defined(__INTELLISENSE__) && 0
using ppT = libsnark::default_r1cs_ppzksnark_pp;
static constexpr Sha_version sha_version = Sha_version::SHA256;
#else
template<typename ppT = libsnark::default_r1cs_ppzksnark_pp,
         Sha_version sha_version = Sha_version::SHA256>
#endif
class MTree_Gadget
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
    using Proof = libsnark::r1cs_gg_ppzksnark_proof<ppT>;


private:
    Protoboard pb;
    Keypair keypair;

    DigVar hash_out;

    std::vector<DigVar> hash_l;
    std::vector<DigVar> hash_r;
    std::vector<GadSha> hash_f;

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

    MTree_Gadget(size_t height, size_t trans_idx) :
        pb{},                          //
        keypair{},                     //
        hash_out{pb, DIGEST_SZ, "out"} //
    {
        std::string name_l{"hashL_"};
        std::string name_r{"hashR_"};
        std::string name_f{"hashF_"};

        hash_l.emplace_back(pb, DIGEST_SZ, "trans_l");
        hash_r.emplace_back(pb, DIGEST_SZ, "trans_r");

        for (size_t i = 0; i < height - 2; ++i)
        {
            std::string ext{std::to_string(i)};

            trans_idx >>= 1;

            hash_l.emplace_back(pb, DIGEST_SZ, name_l + ext);
            hash_r.emplace_back(pb, DIGEST_SZ, name_r + ext);

            hash_f.emplace_back(pb,                                            //
                                hash_l[i], hash_r[i],                          //
                                trans_idx & 1 ? hash_r[i + 1] : hash_l[i + 1], //
                                name_f + ext);

            hash_f[i].generate_r1cs_constraints();
        }
        hash_f.emplace_back(pb, hash_l.back(), hash_r.back(), hash_out, "hashF_last");
        hash_f.back().generate_r1cs_constraints();

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
