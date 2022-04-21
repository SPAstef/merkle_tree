#pragma once

#include "utils/bit_pack.hpp"
#include "utils/string_utils.hpp"
#include "gadget/field_variable.hpp"

#include <boost/type_traits.hpp>
#include <boost/typeof/typeof.hpp>
#include <libsnark/common/default_types/r1cs_ppzksnark_pp.hpp>
#include <libsnark/gadgetlib1/gadget.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/hash_io.hpp>
#include <libsnark/gadgetlib1/protoboard.hpp>

#include <iostream>
#include <string>
#include <type_traits>

#if defined(__INTELLISENSE__) && 0
    #include "utils/sha256.hpp"
    #include <libsnark/gadgetlib1/gadgets/hashes/sha256/sha256_gadget.hpp>
using FieldT = libff::Fr<libsnark::default_r1cs_ppzksnark_pp>;
using Hash = Sha256;
using GadHash = libsnark::sha256_two_to_one_hash_gadget<FieldT>;
#else
template<typename FieldT, typename GadHash>
#endif
class MTree_Gadget : public libsnark::gadget<FieldT>
{
public:
    using super = libsnark::gadget<FieldT>;

    static inline constexpr size_t DIGEST_VARS = GadHash::DIGEST_VARS;
    static inline constexpr bool DIGEST_SIZE = GadHash::DIGEST_SIZE;
    static inline constexpr bool HASH_ISBOOLEAN = DIGEST_SIZE < DIGEST_VARS;

    using DigVar = typename std::conditional_t<HASH_ISBOOLEAN, libsnark::digest_variable<FieldT>,
                                      field_variable<FieldT>>;
    using Protoboard = libsnark::protoboard<FieldT>;

private:
    DigVar trans;
    std::vector<DigVar> other;
    std::vector<DigVar> inter;
    std::vector<GadHash> foo_hash;
    size_t height;
    size_t idx;

public:
    const DigVar out;

    MTree_Gadget(Protoboard &pb, const DigVar &out, const DigVar &trans,
                 const std::vector<DigVar> &other, size_t trans_idx, const std::string &ap) :
        super(pb, ap),
        trans{trans}, other{other}, height{other.size() + 1}, idx{trans_idx}, out{out}
    {
        std::string name_i{"hashI_"};
        std::string name_f{"foo_hash_"};


        inter.emplace_back(pb, DIGEST_VARS, FMT(ap, name_i, "0"));
        if (trans_idx & 1)
            foo_hash.emplace_back(pb, other[0], trans, inter[0], FMT(ap, name_f, "0"));
        else
            foo_hash.emplace_back(pb, trans, other[0], inter[0], FMT(ap, name_f, "0"));
        trans_idx >>= 1;

        for (size_t i = 1; i < height - 2; ++i, trans_idx >>= 1)
        {
            std::string ext{std::to_string(i)};

            inter.emplace_back(pb, DIGEST_VARS, FMT(ap, name_i, ext));
            if (trans_idx & 1)
                foo_hash.emplace_back(pb, other[i], inter[i - 1], inter[i], FMT(ap, name_f, ext));
            else
                foo_hash.emplace_back(pb, inter[i - 1], other[i], inter[i], FMT(ap, name_f, ext));
        }
        if (trans_idx & 1)
            foo_hash.emplace_back(pb, other.back(), inter.back(), out, FMT(ap, "foo_hash_last"));
        else
            foo_hash.emplace_back(pb, inter.back(), other.back(), out, FMT(ap, "foo_hash_last"));
    }

    void generate_r1cs_constraints()
    {
        for (auto &&x : foo_hash)
            x.generate_r1cs_constraints();
    }

    void generate_r1cs_witness()
    {
        for (auto &&x : foo_hash)
            x.generate_r1cs_witness();
    }
};
