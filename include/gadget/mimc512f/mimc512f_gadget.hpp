#pragma once

#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/hash_io.hpp>

#include "utils/mimc512f.hpp"

#if defined(__INTELLISENSE__) && 1
    #include <libff/common/default_types/ec_pp.hpp>
using FieldT = libff::Fr<libsnark::default_r1cs_ppzksnark_pp>;
#else
template<typename FieldT>
#endif
class mimc512f_two_to_one_hash_gadget : public libsnark::gadget<FieldT>
{
public:
    using Base = Mimc512F;
    using Constraint = libsnark::r1cs_constraint<FieldT>;
    using Parent = libsnark::gadget<FieldT>;
    using LC = libsnark::linear_combination<FieldT>;
    using DigVar = libsnark::pb_variable<FieldT>;
    using DigVarA = libsnark::pb_variable_array<FieldT>;
    static constexpr size_t ROUNDS_N = Base::ROUNDS_N;

    const DigVar A;
    const DigVar B;
    const DigVar out;

private:
    static constexpr size_t TEMP_N = 2 + 2 * (ROUNDS_N - 1) + 2 + 2 * (ROUNDS_N - 2) + 1;

    DigVarA temp;

public:
    mimc512f_two_to_one_hash_gadget(libsnark::protoboard<FieldT> &pb, const DigVar &A,
                                    const DigVar &B, const DigVar &out,
                                    const std::string &annotation_prefix) :
        Parent(pb, annotation_prefix),
        A{A}, B{B}, out{out}, temp{}
    {
        for (size_t i = 0; i < TEMP_N; ++i)
            temp.emplace_back(pb, FMT("mimc256_temp_%llu", i));
    }

    inline size_t constrain(const LC &a, const LC &b, const LC &c)
    {
        this->pb.add_r1cs_constraint(Constraint(a, b, c), FMT(""));

        return 1;
    }

    void generate_r1cs_constraints()
    {
        size_t i = 0;

        // x^2
        constrain(A, A, temp[i]);

        // x^3
        i += constrain(temp[i], A, temp[i + 1]);

        // Loop body: (x + c)^3
        for (size_t j = 0; j < ROUNDS_N - 1; ++j)
        {
            i += constrain(temp[i] + Base::round_cf[j], temp[i] + Base::round_cf[j],
                           temp[i + 1]);
            i += constrain(temp[i], temp[i], temp[i + 1]);
        }

        // (x + y)^3
        i += constrain(temp[i] + B, temp[i] + B, temp[i + 1]);
        i += constrain(temp[i], temp[i], temp[i + 1]);

        // Loop body: x = (x + y + c)^3
        for (size_t j = 0; j < ROUNDS_N - 2; ++j)
        {
            i += constrain(temp[i] + B + Base::round_cf[j], temp[i] + B + Base::round_cf[j],
                           temp[i + 1]);
            i += constrain(temp[i], temp[i], temp[i + 1]);
        }
        // out = (x + y + c) ^ 3 + y <==> out - y = (x + y + c) ^ 3
        i += constrain(temp[i] + B + Base::round_cf[ROUNDS_N - 2],
                       temp[i] + B + Base::round_cf[ROUNDS_N - 2], temp[i + 1]);
        i += constrain(temp[i], temp[i], out - B);
    }

    void generate_r1cs_witness()
    {
        auto &pb = this->pb;
        size_t i = 0;

        // x^2
        pb.lc_val(temp[i]) = pb.lc_val(A) * pb.lc_val(A);

        // x^3
        pb.lc_val(temp[i + 1]) = pb.lc_val(temp[i]) * pb.lc_val(A);
        ++i;

        // Loop body: (x + c)^3
        for (size_t j = 0; j < ROUNDS_N - 1; ++j)
        {
            pb.lc_val(temp[i + 1]) = (pb.lc_val(temp[i]) + Base::round_cf[j]) *
                                     (pb.lc_val(temp[i]) + Base::round_cf[j]);
            ++i;
            pb.lc_val(temp[i + 1]) = pb.lc_val(temp[i]) * pb.lc_val(temp[i]);
            ++i;
        }

        // (x + y)^3
        pb.lc_val(temp[i + 1]) = (pb.lc_val(temp[i]) + pb.lc_val(B)) *
                                 (pb.lc_val(temp[i]) + pb.lc_val(B));
        ++i;
        pb.lc_val(temp[i + 1]) = pb.lc_val(temp[i]) * pb.lc_val(temp[i]);
        ++i;

        // Loop body: x = (x + y + c)^3
        for (size_t j = 0; j < ROUNDS_N - 2; ++j)
        {
            pb.lc_val(temp[i + 1]) = (pb.lc_val(temp[i]) + pb.lc_val(B) + Base::round_cf[j]) *
                                     (pb.lc_val(temp[i]) + pb.lc_val(B) + Base::round_cf[j]);
            ++i;
            pb.lc_val(temp[i + 1]) = pb.lc_val(temp[i]) * pb.lc_val(temp[i]);
            ++i;
        }
        // out = (x + y + c) ^ 3 + y <==> out - y = (x + y + c) ^ 3
        pb.lc_val(
            temp[i + 1]) = (pb.lc_val(temp[i]) + pb.lc_val(B) + Base::round_cf[ROUNDS_N - 2]) *
                           (pb.lc_val(temp[i]) + pb.lc_val(B) + Base::round_cf[ROUNDS_N - 2]);

        ++i;
        pb.lc_val(out) = (pb.lc_val(temp[i]) * pb.lc_val(temp[i])) + pb.lc_val(B);
    }
};
