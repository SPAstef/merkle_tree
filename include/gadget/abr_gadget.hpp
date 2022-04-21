#pragma once

#include "gadget/field_variable.hpp"
#include "gadget/xor_gadget.hpp"
#include "gadget/add_gadget.hpp"
#include "utils/bit_pack.hpp"

#include <libsnark/common/default_types/r1cs_ppzksnark_pp.hpp>
#include <libsnark/gadgetlib1/gadget.hpp>
#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/hash_io.hpp>
#include <libsnark/gadgetlib1/protoboard.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_gg_ppzksnark/r1cs_gg_ppzksnark.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_gg_ppzksnark/r1cs_gg_ppzksnark.tcc>

#include <iostream>
#include <string>
#include <type_traits>

#if defined(__INTELLISENSE__) && 1
    #include "gadget/sha256/sha256_gadget.hpp"
    #include "utils/sha256.hpp"
using FieldT = libff::Fr<libsnark::default_r1cs_ppzksnark_pp>;
using Hash = Sha256;
using GadHash = libsnark::sha256_two_to_one_hash_gadget<FieldT>;
#else
template<typename FieldT, typename Hash, typename GadHash>
#endif
class ABR_Gadget : public libsnark::gadget<FieldT>
{
public:
    using super = libsnark::gadget<FieldT>;

    static inline constexpr size_t DIGEST_VARS = GadHash::DIGEST_VARS;
    static inline constexpr bool DIGEST_SIZE = GadHash::DIGEST_SIZE;
    static inline constexpr bool HASH_ISBOOLEAN = DIGEST_SIZE < DIGEST_VARS;

    using Protoboard = libsnark::protoboard<FieldT>;
    using GadXor = typename std::conditional_t<HASH_ISBOOLEAN, LongXOR_gadget<FieldT>, LongAdd_gadget<FieldT>>;
    using DigVar = typename std::conditional_t<HASH_ISBOOLEAN, libsnark::digest_variable<FieldT>,
                                               field_variable<FieldT>>;

private:
    DigVar trans;
    DigVar other;
    std::vector<DigVar> middle;
    std::vector<DigVar> otherx;
    std::vector<DigVar> otherxm;
    std::vector<DigVar> inter;
    std::vector<DigVar> interx;
    std::vector<DigVar> interxm;
    std::vector<GadHash> foo_hash;
    std::vector<GadXor> foo_xor;
    size_t height;
    size_t leaves_n;
    size_t idx;

public:
    const DigVar out;

    static void xor_digest(uint8_t *a, const uint8_t *b)
    {
        for (size_t i = 0; i < Hash::DIGEST_SIZE; ++i)
            a[i] ^= b[i];
    }

    ABR_Gadget(Protoboard &pb,                                                       //
               const DigVar &out, const DigVar &trans, const DigVar &other,          //
               const std::vector<DigVar> &middle, const std::vector<DigVar> &otherx, //
               size_t trans_idx, size_t height,                                      //
               const std::string &ap) :
        super(pb, ap),                  //
        trans{trans},                   //
        other{other},                   //
        middle{middle},                 //
        otherx{otherx},                 //
        height{height},                 //
        leaves_n{1ULL << (height - 1)}, //
        idx{trans_idx},                 //
        out{out}
    {
        // our node is a leaf
        if (trans_idx < leaves_n)
        {
            interx.emplace_back(pb, DIGEST_VARS, FMT(""));
            if (trans_idx & 1)
                foo_hash.emplace_back(pb, other, trans, interx[0], FMT(""));
            else
                foo_hash.emplace_back(pb, trans, other, interx[0], FMT(""));

            interxm.emplace_back(pb, DIGEST_VARS, FMT(""));
            foo_xor.emplace_back(pb, interx[0], middle[0], interxm[0], FMT(""));

            otherxm.emplace_back(pb, DIGEST_VARS, FMT(""));
            foo_xor.emplace_back(pb, middle[0], otherx[0], otherxm[0], FMT(""));

            trans_idx >>= 1;
            inter.emplace_back(pb, DIGEST_VARS, FMT(""));
            if (trans_idx & 1)
                foo_hash.emplace_back(pb, otherxm[0], interxm[0], inter[0], FMT(""));
            else
                foo_hash.emplace_back(pb, interxm[0], otherxm[0], inter[0], FMT(""));
        }
        // our node is a middle node
        else
        {
            // translate trans_idx to be used as a path along the tree
            trans_idx >>= 1;
            do
            {
                trans_idx -= leaves_n;
                leaves_n /= 2;
                --height;
            } while (trans_idx >= leaves_n);

            interxm.emplace_back(pb, DIGEST_VARS, FMT(""));
            foo_xor.emplace_back(pb, other, trans, interxm[0], FMT(""));

            otherxm.emplace_back(pb, DIGEST_VARS, FMT(""));
            foo_xor.emplace_back(pb, trans, otherx[0], otherxm[0], FMT(""));

            inter.emplace_back(pb, DIGEST_VARS, FMT(""));
            foo_hash.emplace_back(pb, interxm[0], otherxm[0], inter[0], FMT(""));
        }

        for (size_t i = 1; i < height - 2; ++i)
        {
            interx.emplace_back(pb, DIGEST_VARS, FMT(""));
            interxm.emplace_back(pb, DIGEST_VARS, FMT(""));
            otherxm.emplace_back(pb, DIGEST_VARS, FMT(""));
            inter.emplace_back(pb, DIGEST_VARS, FMT(""));

            // the node was a right leaf, the remainder is interx[0]
            if (trans_idx & 1)
                foo_xor.emplace_back(pb, inter[i - 1], interx[i - 1], interx[i], FMT(""));
            // the node was a left leaf or a middle, the remainder is otherx[0]
            else
                foo_xor.emplace_back(pb, inter[i - 1], otherx[i - 1], interx[i], FMT(""));

            trans_idx >>= 1;
            foo_xor.emplace_back(pb, interx[i], middle[i], interxm[i], FMT(""));
            foo_xor.emplace_back(pb, otherx[i], middle[i], otherxm[i], FMT(""));
            if (trans_idx & 1)
                foo_hash.emplace_back(pb, otherxm[i], interxm[i], inter[i], FMT(""));
            else
                foo_hash.emplace_back(pb, interxm[i], otherxm[i], inter[i], FMT(""));
        }
        if (trans_idx & 1)
            foo_xor.emplace_back(pb, inter.back(), interx.back(), out, FMT(""));
        // the node was a left leaf or a middle, the remainder is otherx[0]
        else
            foo_xor.emplace_back(pb, inter.back(), otherx.back(), out, FMT(""));
    }

    void generate_r1cs_constraints()
    {
/*
        for (auto &&x : inter)
            x.generate_r1cs_constraints();

        for (auto &&x : interx)
            x.generate_r1cs_constraints();

        for (auto &&x : interxm)
            x.generate_r1cs_constraints();

        for (auto &&x : otherxm)
            x.generate_r1cs_constraints();
*/
        for (auto &&x : foo_xor)
            x.generate_r1cs_constraints();

        for (auto &&x : foo_hash)
            x.generate_r1cs_constraints();
    }

    void generate_r1cs_witness()
    {
        uint8_t block[Hash::BLOCK_SIZE];
        uint8_t digest[Hash::DIGEST_SIZE];
        uint8_t remain[Hash::DIGEST_SIZE];
        size_t trans_idx = idx;
        libff::bit_vector inter_bv(DIGEST_VARS);
        libff::bit_vector otherxm_bv(DIGEST_VARS);

        // our node is a leaf
        if (trans_idx < leaves_n)
        {
            // compute interx[0] = inter[0]
            if (trans_idx & 1)
            {
                pack_bits(block, other_bv);
                pack_bits(block + Hash::DIGEST_SIZE, trans_bv);
            }
            else
            {
                pack_bits(block, trans_bv);
                pack_bits(block + Hash::DIGEST_SIZE, other_bv);
            }
            Hash::hash_oneblock(digest, block);
            unpack_bits(inter_bv, digest);
            interx[0].generate_r1cs_witness(inter_bv);
            trans_idx >>= 1;
            if (trans_idx & 1) // right side, so interx[0] will be a remainder
                memcpy(remain, digest, Hash::DIGEST_SIZE);

            // compute interxm[0], interx[0] is already packed in digest
            pack_bits(block, middle_bv[0]);
            xor_digest(digest, block);
            unpack_bits(inter_bv, digest);
            interxm[0].generate_r1cs_witness(inter_bv);

            // compute otherxm[0], middle[0] is already packed in block
            pack_bits(digest, otherx_bv[0]);
            if (!(trans_idx & 1)) // left side, so otherx[0] will be the remainder
                memcpy(remain, digest, Hash::DIGEST_SIZE);
            xor_digest(digest, block);
            unpack_bits(otherxm_bv, digest);
            otherxm[0].generate_r1cs_witness(otherxm_bv);

            // compute inter[0] (actually inter[1], since interx[0] stores the "real" inter[0])
            if (trans_idx & 1)
            {
                pack_bits(block, otherxm_bv);
                pack_bits(block + Hash::DIGEST_SIZE, inter_bv);
            }
            else
            {
                pack_bits(block, inter_bv);
                pack_bits(block + Hash::DIGEST_SIZE, otherxm_bv);
            }
            Hash::hash_oneblock(digest, block);
            unpack_bits(inter_bv, digest);
            inter[0].generate_r1cs_witness(inter_bv);
            trans_idx >>= 1;
        }
        // our node is a middle node
        else
        {
            // translate trans_idx to be used as a path along the tree
            trans_idx >>= 1;
            do
            {
                trans_idx -= leaves_n;
                leaves_n /= 2;
                --height;
            } while (trans_idx >= leaves_n);

            // compute interxm[0], other_bv is the left input
            pack_bits(digest, other_bv);
            pack_bits(block, trans_bv);
            xor_digest(digest, block);
            unpack_bits(inter_bv, digest);
            interxm[0].generate_r1cs_witness(inter_bv);

            // compute otherxm[0], trans is already stored in block. Also store the remainder
            pack_bits(digest, otherx_bv[0]);
            memcpy(remain, digest, Hash::DIGEST_SIZE);
            xor_digest(digest, block);
            unpack_bits(otherxm_bv, digest);
            otherxm[0].generate_r1cs_witness(otherxm_bv);
            // compute inter[0]
            if (trans_idx & 1)
            {
                pack_bits(block, otherxm_bv);
                pack_bits(block + Hash::DIGEST_SIZE, inter_bv);
            }
            else
            {
                pack_bits(block, inter_bv);
                pack_bits(block + Hash::DIGEST_SIZE, otherxm_bv);
            }
            Hash::hash_oneblock(digest, block);
            unpack_bits(inter_bv, digest);
            inter[0].generate_r1cs_witness(inter_bv);
            trans_idx >>= 1;
        }

        // iterative part. We compute everything from interx[i] to inter[i+1].
        // Since inter misses the first element, inter[i+1] is actually stored in inter[i]
        for (size_t i = 1; i < height - 2; ++i)
        {
            // compute interx[i]
            pack_bits(digest, inter_bv);
            xor_digest(digest, remain);
            unpack_bits(inter_bv, digest);
            interx[i].generate_r1cs_witness(inter_bv);
            if (trans_idx & 1) // right side, so interx[i] will be the new remainder
                memcpy(digest, remain, Hash::DIGEST_SIZE);

            // compute interxm[i], interx[i] is already stored in digest
            pack_bits(block, middle_bv[i]);
            xor_digest(digest, block);
            unpack_bits(inter_bv, digest);
            interxm[i].generate_r1cs_witness(inter_bv);

            // compute otherxm[i], middle[i] is already stored in block
            pack_bits(digest, otherx_bv[i]);
            if (!(trans_idx & 1)) // left side, so otherx[i] will be the new remainder
                memcpy(remain, digest, Hash::DIGEST_SIZE);
            xor_digest(digest, block);
            unpack_bits(otherxm_bv, digest);
            otherxm[i].generate_r1cs_witness(otherxm_bv);

            if (trans_idx & 1)
            {
                pack_bits(block, otherxm_bv);
                pack_bits(block + Hash::DIGEST_SIZE, inter_bv);
            }
            else
            {
                pack_bits(block, inter_bv);
                pack_bits(block + Hash::DIGEST_SIZE, otherxm_bv);
            }
            Hash::hash_oneblock(digest, block);
            unpack_bits(inter_bv, digest);
            inter[i].generate_r1cs_witness(inter_bv);
            trans_idx >>= 1;
        }

        for (auto &&x : foo_hash)
            x.generate_r1cs_witness();

        for (auto &&x : foo_xor)
            x.generate_r1cs_witness();
    }
};
