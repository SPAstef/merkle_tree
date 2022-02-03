#pragma once

#include "utils/bit_pack.hpp"
#include "utils/sha256.hpp"
#include "utils/sha512.hpp"

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

#if defined(__INTELLISENSE__) && 0
using FieldT = libff::Fr<libsnark::default_r1cs_ppzksnark_pp>;
using Hash = Sha256;
#else
template<typename FieldT, typename Hash>
#endif
class MTree_Gadget : public libsnark::gadget<FieldT>
{
public:
    using DigVar = libsnark::digest_variable<FieldT>;
    using BlockVar = libsnark::block_variable<FieldT>;
    using Protoboard = libsnark::protoboard<FieldT>;
    using GadSha =
        typename std::conditional<std::is_same<Hash, Sha256>::value,
                                  libsnark::sha256_two_to_one_hash_gadget<FieldT>,
                                  libsnark::sha512::sha512_two_to_one_hash_gadget<FieldT>>::type;

private:
    std::vector<DigVar> hash_l;
    std::vector<DigVar> hash_r;
    std::vector<GadSha> hash_f;

public:
    const DigVar hash_out;

    MTree_Gadget(libsnark::protoboard<FieldT> &pb, size_t height, size_t trans_idx,
                 const std::string &annotation_prefix) :
        libsnark::gadget<FieldT>(pb, annotation_prefix),
        hash_out{pb, Hash::DIGEST_SIZE * CHAR_BIT, "out"}
    {
        std::string name_l{"hashL_"};
        std::string name_r{"hashR_"};
        std::string name_f{"hashF_"};

        hash_l.emplace_back(pb, Hash::DIGEST_SIZE * CHAR_BIT, "trans_l");
        hash_r.emplace_back(pb, Hash::DIGEST_SIZE * CHAR_BIT, "trans_r");

        for (size_t i = 0; i < height - 2; ++i)
        {
            std::string ext{std::to_string(i)};

            trans_idx >>= 1;

            hash_l.emplace_back(pb, Hash::DIGEST_SIZE * CHAR_BIT, FMT(name_l, ext));
            hash_r.emplace_back(pb, Hash::DIGEST_SIZE * CHAR_BIT, FMT(name_r, ext));

            if (trans_idx & 1)
            {
                hash_f.emplace_back(pb, hash_l[i], hash_r[i], hash_r.back(), FMT(name_f, ext));
            }
            else
            {
                hash_f.emplace_back(pb, hash_l[i], hash_r[i], hash_l.back(), FMT(name_f, ext));
            }
        }
        hash_f.emplace_back(pb, hash_l.back(), hash_r.back(), hash_out, "hashF_last");

        pb.set_input_sizes(Hash::DIGEST_SIZE * CHAR_BIT);
    }

    void generate_r1cs_constraints()
    {
        for (auto &&x : hash_l)
            x.generate_r1cs_constraints();
        for (auto &&x : hash_r)
            x.generate_r1cs_constraints();
        for (auto &&x : hash_f)
            x.generate_r1cs_constraints();
    }

    void generate_r1cs_witness(libff::bit_vector my_hash_v,                        //
                               const std::vector<libff::bit_vector> &other_hash_v, //
                               size_t trans_idx                                    //
    )
    {
        uint8_t block[Hash::BLOCK_SIZE];
        uint8_t digest[Hash::DIGEST_SIZE];

        const_cast<DigVar *>(&hash_out)->generate_r1cs_witness(other_hash_v.back());

        if (trans_idx & 1)
        {
            hash_l[0].generate_r1cs_witness(other_hash_v[0]);
            hash_r[0].generate_r1cs_witness(my_hash_v);

            pack_bits(block, other_hash_v[0]);
            pack_bits(block + Hash::DIGEST_SIZE, my_hash_v);
        }
        else
        {
            hash_l[0].generate_r1cs_witness(my_hash_v);
            hash_r[0].generate_r1cs_witness(other_hash_v[0]);

            pack_bits(block, my_hash_v);
            pack_bits(block + Hash::DIGEST_SIZE, other_hash_v[0]);
        }

        Hash::hash_oneblock(digest, block);
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
                pack_bits(block + Hash::DIGEST_SIZE, my_hash_v);
            }
            else
            {
                hash_l[i].generate_r1cs_witness(my_hash_v);
                hash_r[i].generate_r1cs_witness(other_hash_v[i]);
                hash_f[i].generate_r1cs_witness();

                pack_bits(block, my_hash_v);
                pack_bits(block + Hash::DIGEST_SIZE, other_hash_v[i]);
            }

            Hash::hash_oneblock(digest, block);
            unpack_bits(my_hash_v, digest);
        }
    }

    /*
    Proof generate_proof()
    {
        return libsnark::r1cs_gg_ppzksnark_prover<ppT>(keypair.pk, pb.primary_input(),
                                                       pb.auxiliary_input());
    }

    bool verify_proof(const Proof &proof, const libff::bit_vector &hash_v)
    {
        auto pvk = libsnark::r1cs_gg_ppzksnark_verifier_process_vk<ppT>(keypair.vk);

        hash_out.generate_r1cs_witness(hash_v);

        return libsnark::r1cs_gg_ppzksnark_online_verifier_strong_IC<ppT>(pvk, pb.primary_input(),
                                                                          proof);
    }*/
};
