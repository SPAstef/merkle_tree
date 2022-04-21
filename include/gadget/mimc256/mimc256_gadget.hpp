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
    using DigVar = field_variable<FieldT>;

    static constexpr size_t ROUNDS_N = Base::ROUNDS_N;
    static constexpr size_t DIGEST_SIZE = Base::DIGEST_SIZE;
    static constexpr size_t DIGEST_VARS = 1;
    static constexpr size_t BLOCK_SIZE = Base::BLOCK_SIZE;

    const DigVar A;
    const DigVar B;
    const DigVar out;

private:
    static constexpr size_t TEMP_N = 2 + 2 * (ROUNDS_N - 1) + 2 + 2 * (ROUNDS_N - 2) + 1;

    std::vector<DigVar> temp;

public:
    mimc256_two_to_one_hash_gadget(libsnark::protoboard<FieldT> &pb, const DigVar &A,
                                   const DigVar &B, const DigVar &out,
                                   const std::string &annotation_prefix) :
        Parent(pb, annotation_prefix),
        A{A}, B{B}, out{out}, temp{}
    {
        for (size_t i = 0; i < TEMP_N; ++i)
            temp.emplace_back(pb, DIGEST_VARS, FMT("mimc256_temp_%llu", i));
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
        constrain(A[0], A[0], temp[i][0]);

        // x^3
        i += constrain(temp[i][0], A[0], temp[i + 1][0]);

        // Loop body: (x + c)^3
        for (size_t j = 0; j < ROUNDS_N - 1; ++j)
        {
            i += constrain(temp[i][0] + Base::round_cf[j], temp[i][0] + Base::round_cf[j],
                           temp[i + 1][0]);
            i += constrain(temp[i][0], temp[i][0], temp[i + 1][0]);
        }

        // (x + y)^3
        i += constrain(temp[i][0] + B[0], temp[i][0] + B[0], temp[i + 1][0]);
        i += constrain(temp[i][0], temp[i][0], temp[i + 1][0]);

        // Loop body: x = (x + y + c)^3
        for (size_t j = 0; j < ROUNDS_N - 2; ++j)
        {
            i += constrain(temp[i][0] + B[0] + Base::round_cf[j],
                           temp[i][0] + B[0] + Base::round_cf[j], temp[i + 1][0]);
            i += constrain(temp[i][0], temp[i][0], temp[i + 1][0]);
        }
        // out = (x + y + c) ^ 3 + y <==> out - y = (x + y + c) ^ 3
        i += constrain(temp[i][0] + B[0] + Base::round_cf[ROUNDS_N - 2],
                       temp[i][0] + B[0] + Base::round_cf[ROUNDS_N - 2], temp[i + 1][0]);
        i += constrain(temp[i][0], temp[i][0], out[0] - B[0]);
    }

    void generate_r1cs_witness()
    {
        auto &pb = this->pb;
        size_t i = 0;

        // x^2
        pb.lc_val(temp[i][0]) = pb.lc_val(A[0]) * pb.lc_val(A[0]);

        // x^3
        pb.lc_val(temp[i + 1][0]) = pb.lc_val(temp[i][0]) * pb.lc_val(A[0]);
        ++i;

        // Loop body: (x + c)^3
        for (size_t j = 0; j < ROUNDS_N - 1; ++j)
        {
            pb.lc_val(temp[i + 1][0]) = (pb.lc_val(temp[i][0]) + Base::round_cf[j]) *
                                        (pb.lc_val(temp[i][0]) + Base::round_cf[j]);
            ++i;
            pb.lc_val(temp[i + 1][0]) = pb.lc_val(temp[i][0]) * pb.lc_val(temp[i][0]);
            ++i;
        }

        // (x + y)^3
        pb.lc_val(temp[i + 1][0]) = (pb.lc_val(temp[i][0]) + pb.lc_val(B[0])) *
                                    (pb.lc_val(temp[i][0]) + pb.lc_val(B[0]));
        ++i;
        pb.lc_val(temp[i + 1][0]) = pb.lc_val(temp[i][0]) * pb.lc_val(temp[i][0]);
        ++i;

        // Loop body: x = (x + y + c)^3
        for (size_t j = 0; j < ROUNDS_N - 2; ++j)
        {
            pb.lc_val(
                temp[i + 1][0]) = (pb.lc_val(temp[i][0]) + pb.lc_val(B[0]) + Base::round_cf[j]) *
                                  (pb.lc_val(temp[i][0]) + pb.lc_val(B[0]) + Base::round_cf[j]);
            ++i;
            pb.lc_val(temp[i + 1][0]) = pb.lc_val(temp[i][0]) * pb.lc_val(temp[i][0]);
            ++i;
        }
        // out = (x + y + c) ^ 3 + y <==> out - y = (x + y + c) ^ 3
        pb.lc_val(temp[i + 1][0]) =
            (pb.lc_val(temp[i][0]) + pb.lc_val(B[0]) + Base::round_cf[ROUNDS_N - 2]) *
            (pb.lc_val(temp[i][0]) + pb.lc_val(B[0]) + Base::round_cf[ROUNDS_N - 2]);

        ++i;
        pb.lc_val(out[0]) = (pb.lc_val(temp[i][0]) * pb.lc_val(temp[i][0])) + pb.lc_val(B[0]);
    }
};
