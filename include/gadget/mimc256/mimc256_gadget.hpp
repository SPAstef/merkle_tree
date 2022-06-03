#pragma once

#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/hash_io.hpp>

#include "gadget/field_variable.hpp"
#include "utils/mimc256.hpp"

#if defined(__INTELLISENSE__) && 0
    #include <libff/common/default_types/ec_pp.hpp>
using FieldT = libff::Fr<libsnark::default_r1cs_ppzksnark_pp>;
#else
template<typename FieldT>
#endif
class mimc256_two_to_one_hash_gadget : public libsnark::gadget<FieldT>
{
public:
    using Base = Mimc256;
    using Constraint = libsnark::r1cs_constraint<FieldT>;
    using Parent = libsnark::gadget<FieldT>;
    using LC = libsnark::linear_combination<FieldT>;
    using PbVar = libsnark::pb_variable<FieldT>;
    using DigVar = field_variable<FieldT>;

    static constexpr size_t ROUNDS_N = Base::ROUNDS_N;
    static constexpr size_t DIGEST_SIZE = Base::DIGEST_SIZE;
    static constexpr size_t DIGEST_VARS = 1;
    static constexpr size_t BLOCK_SIZE = Base::BLOCK_SIZE;

    const DigVar x;
    const DigVar y;
    const DigVar out;

private:
    static constexpr size_t INTER_N = 2 + 2 * (ROUNDS_N - 1) + 2 + 2 * (ROUNDS_N - 2) + 1;

    std::vector<PbVar> inter;

public:
    mimc256_two_to_one_hash_gadget(libsnark::protoboard<FieldT> &pb, const DigVar &x,
                                   const DigVar &y, const DigVar &out,
                                   const std::string &annotation_prefix) :
        Parent(pb, annotation_prefix),
        x{x}, y{y}, out{out}, inter{}
    {
        for (size_t i = 0; i < INTER_N; ++i)
        {
            inter.emplace_back();
            inter.back().allocate(pb, FMT(annotation_prefix, "_mimc256_inter_%llu", i));
        }
    }

    inline size_t constrain(const LC &x, const LC &y, const LC &z)
    {
        this->pb.add_r1cs_constraint(Constraint(x, y, z), FMT(""));

        return 1;
    }

    void generate_r1cs_constraints()
    {
        size_t i = 0;
        LC t;

        // x^2
        i += constrain(x[0], x[0], inter[i]);

        // x^3
        i += constrain(inter[i - 1], x[0], inter[i]);

        // Loop body: (x + c)^3
        for (size_t j = 0; j < ROUNDS_N - 1; ++j)
        {
            t = inter[i - 1] + Base::round_cf[j];
            i += constrain(t, t, inter[i]);
            i += constrain(inter[i - 1], t, inter[i]);
        }

        // (x + y)^3
        t = inter[i - 1] + y[0];
        i += constrain(t, t, inter[i]);
        i += constrain(inter[i - 1], t, inter[i]);

        // Loop body: x = (x + y + c)^3
        for (size_t j = 0; j < ROUNDS_N - 2; ++j)
        {
            t = inter[i - 1] + y[0] + Base::round_cf[j];
            i += constrain(t, t, inter[i]);
            i += constrain(inter[i - 1], t, inter[i]);
        }
        t = inter[i - 1] + y[0] + Base::round_cf[ROUNDS_N - 2];
        constrain(t, t, inter[i]);
        constrain(inter[i], t, out[0] - y[0]);
    }

    void generate_r1cs_witness()
    {
        auto &pb = this->pb;
        size_t i = 0;
        FieldT t;

        // x^2
        pb.val(inter[i]) = pb.val(x[0]) * pb.val(x[0]);
        ++i;
        // x^3
        pb.val(inter[i]) = pb.val(inter[i - 1]) * pb.val(x[0]);
        ++i;

        // Loop body: (x + c)^3
        for (size_t j = 0; j < ROUNDS_N - 1; ++j)
        {
            // (x + c)
            t = pb.val(inter[i - 1]) + Base::round_cf[j];
            pb.val(inter[i]) = t * t;
            ++i;

            // ^3
            pb.val(inter[i]) = pb.val(inter[i - 1]) * t;
            ++i;
        }

        // (x + y)^2
        t = pb.val(inter[i - 1]) + pb.val(y[0]);
        pb.val(inter[i]) = t * t;
        ++i;

        // ^3
        pb.val(inter[i]) = pb.val(inter[i - 1]) * t;
        ++i;

        // Loop body: x = (x + y + c)^3
        for (size_t j = 0; j < ROUNDS_N - 2; ++j)
        {
            t = pb.val(inter[i - 1]) + pb.val(y[0]) + Base::round_cf[j];
            // (x + y + c)^2
            pb.val(inter[i]) = t * t;
            ++i;
            // ^3
            pb.val(inter[i]) = pb.val(inter[i - 1]) * t;
            ++i;
        }
        // (x + y + c)^2
        t = pb.val(inter[i - 1]) + pb.val(y[0]) + Base::round_cf[ROUNDS_N - 2];
        pb.val(inter[i]) = t * t;
        // ^3 + y
        pb.val(out[0]) = pb.val(inter[i]) * t;
        pb.val(out[0]) += pb.val(y[0]);
    }
};
