#pragma once

#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>
#include <libsnark/gadgetlib1/gadgets/hashes/hash_io.hpp>

#include "gadget/field_variable.hpp"
#include "utils/mimc512f.hpp"

#if defined(__INTELLISENSE__) && 0
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
    using PbVar = libsnark::pb_variable<FieldT>;
    using DigVar = field_variable<FieldT>;

    static constexpr size_t ROUNDS_N = Base::ROUNDS_N;
    static constexpr size_t DIGEST_SIZE = Base::DIGEST_SIZE;
    static constexpr size_t DIGEST_VARS = 2;
    static constexpr size_t BLOCK_SIZE = Base::BLOCK_SIZE;

    const DigVar x;
    const DigVar y;
    const DigVar out;

private:
    static constexpr size_t INTER_N = 4 + 2 * (ROUNDS_N - 2) + // first iteration
                                      2 + 2 * (ROUNDS_N - 1) + // second iteration
                                      2 + 2 * (ROUNDS_N - 1) + // third iteration
                                      2 + 2 * (ROUNDS_N - 3) + // fourth iteration
                                      2;

    std::vector<PbVar> inter;

public:
    mimc512f_two_to_one_hash_gadget(libsnark::protoboard<FieldT> &pb, const DigVar &x,
                                    const DigVar &y, const DigVar &out,
                                    const std::string &annotation_prefix) :
        Parent(pb, annotation_prefix),
        x{x}, y{y}, out{out}, inter{}
    {
        for (size_t i = 0; i < INTER_N; ++i)
        {
            inter.emplace_back();
            inter.back().allocate(pb, FMT(annotation_prefix, "_mimc512f_inter_%llu", i));
        }
    }

    inline size_t constrain(const LC &x, const LC &y, const LC &z)
    {
        this->pb.add_r1cs_constraint(Constraint(x, y, z), FMT(""));

        return 1;
    }

    void generate_r1cs_constraints()
    {
        // Remember x = x0||x1 and y = y0||y1, h = 0||0
        size_t i = 0;
        LC t;

        // We use the Davis-Meyer construction

        // Optimize first iteration
        // Optimize first round
        // h0 = x0^3
        i += constrain(x[0], x[0], inter[i]);
        i += constrain(inter[i - 1], x[0], inter[i]);

        // Optimize second round
        // h0 <- (h0+x0+c1)^3+h1 (h1 = 0)
        t = inter[i - 1] + x[0] + Base::round_cf[0];
        i += constrain(t, t, inter[i]);
        i += constrain(inter[i - 1], t, inter[i]);

        // We don't need to do h1 <- h0, as we can reuse old intermediates
        for (size_t j = 1; j < ROUNDS_N - 1; ++j)
        {
            // h0 <- (h0+x0+c)^3+h1
            t = inter[i - 1] + x[0] + Base::round_cf[j];
            i += constrain(t, t, inter[i]);
            // (h1 = inter[i-4])
            i += constrain(inter[i - 1], t, inter[i] - inter[i - 4]);
        }

        // 2nd iteration
        // Optimize first round
        t = inter[i - 1] + x[1];
        i += constrain(t, t, inter[i]);
        i += constrain(inter[i - 1], t, inter[i] - inter[i - 4]);
        for (size_t j = 0; j < ROUNDS_N - 1; ++j)
        {
            t = inter[i - 1] + x[1] + Base::round_cf[j];
            i += constrain(t, t, inter[i]);
            i += constrain(inter[i - 1], t, inter[i] - inter[i - 4]);
        }

        // 3rd iteration
        t = inter[i - 1] + y[0];
        i += constrain(t, t, inter[i]);
        i += constrain(inter[i - 1], t, inter[i] - inter[i - 4]);
        for (size_t j = 0; j < ROUNDS_N - 1; ++j)
        {
            t = inter[i - 1] + y[0] + Base::round_cf[j];
            i += constrain(t, t, inter[i]);
            i += constrain(inter[i - 1], t, inter[i] - inter[i - 4]);
        }

        // 4th iteration
        t = inter[i - 1] + y[1];
        i += constrain(t, t, inter[i]);
        i += constrain(inter[i - 1], t, inter[i] - inter[i - 4]);
        // skip last two rounds
        for (size_t j = 0; j < ROUNDS_N - 3; ++j)
        {
            t = inter[i - 1] + y[1] + Base::round_cf[j];
            i += constrain(t, t, inter[i]);
            i += constrain(inter[i - 1], t, inter[i] - inter[i - 4]);
        }
        // explicit last two rounds, as we put the results in out[0] and out[1]
        // second to last round
        t = inter[i - 1] + y[1] + Base::round_cf[ROUNDS_N - 3];
        i += constrain(t, t, inter[i]);
        // we don't add a new intermediate
        constrain(inter[i - 1], t, out[1] - inter[i - 4]);

        // last round
        t = out[1] + y[1] + Base::round_cf[ROUNDS_N - 2];
        i += constrain(t, t, inter[i]);
        constrain(inter[i - 1], t, out[0] - inter[i - 3]);
    }

    void generate_r1cs_witness()
    {
        // Remember x = x0||x1 and y = y0||y1, h = 0||0
        size_t i = 0;
        FieldT t;

        // We use the Davis-Meyer construction

        // Optimize first iteration
        // Optimize first round
        // h0 = x0^3
        this->pb.val(inter[i]) = this->pb.val(x[0]) * this->pb.val(x[0]);
        ++i;
        this->pb.val(inter[i]) = this->pb.val(inter[i - 1]) * this->pb.val(x[0]);
        ++i;

        // Optimize second round
        // h0 <- (h0+x0+c1)^3+h1 (h1 = 0)
        t = this->pb.val(inter[i - 1]) + this->pb.val(x[0]) + Base::round_cf[0];
        this->pb.val(inter[i]) = t * t;
        ++i;
        this->pb.val(inter[i]) = this->pb.val(inter[i - 1]) * t;
        ++i;

        // We don't need to do h1 <- h0, as we can reuse old intermediates
        for (size_t j = 1; j < ROUNDS_N - 1; ++j)
        {
            // h0 <- (h0+x0+c)^3+h1
            t = this->pb.val(inter[i - 1]) + this->pb.val(x[0]) + Base::round_cf[j];
            this->pb.val(inter[i]) = t * t;
            ++i;
            // (h1 = inter[i-4])
            this->pb.val(inter[i]) = this->pb.val(inter[i - 1]) * t;
            this->pb.val(inter[i]) += this->pb.val(inter[i - 4]);
            ++i;
        }

        // 2nd iteration
        // Optimize first round
        t = this->pb.val(inter[i - 1]) + this->pb.val(x[1]);
        this->pb.val(inter[i]) = t * t;
        ++i;
        this->pb.val(inter[i]) = this->pb.val(inter[i - 1]) * t;
        this->pb.val(inter[i]) += this->pb.val(inter[i - 4]);
        ++i;
        for (size_t j = 0; j < ROUNDS_N - 1; ++j)
        {
            t = this->pb.val(inter[i - 1]) + this->pb.val(x[1]) + Base::round_cf[j];
            this->pb.val(inter[i]) = t * t;
            ++i;
            this->pb.val(inter[i]) = this->pb.val(inter[i - 1]) * t;
            this->pb.val(inter[i]) += this->pb.val(inter[i - 4]);
            ++i;
        }

        // 3rd iteration
        t = this->pb.val(inter[i - 1]) + this->pb.val(y[0]);
        this->pb.val(inter[i]) = t * t;
        ++i;
        this->pb.val(inter[i]) = this->pb.val(inter[i - 1]) * t;
        this->pb.val(inter[i]) += this->pb.val(inter[i - 4]);
        ++i;
        for (size_t j = 0; j < ROUNDS_N - 1; ++j)
        {
            t = this->pb.val(inter[i - 1]) + this->pb.val(y[0]) + Base::round_cf[j];
            this->pb.val(inter[i]) = t * t;
            ++i;
            this->pb.val(inter[i]) = this->pb.val(inter[i - 1]) * t;
            this->pb.val(inter[i]) += this->pb.val(inter[i - 4]);
            ++i;
        }

        // 4th iteration
        t = this->pb.val(inter[i - 1]) + this->pb.val(y[1]);
        this->pb.val(inter[i]) = t * t;
        ++i;
        this->pb.val(inter[i]) = this->pb.val(inter[i - 1]) * t;
        this->pb.val(inter[i]) += this->pb.val(inter[i - 4]);
        ++i;
        // skip last two rounds
        for (size_t j = 0; j < ROUNDS_N - 3; ++j)
        {
            t = this->pb.val(inter[i - 1]) + this->pb.val(y[1]) + Base::round_cf[j];
            this->pb.val(inter[i]) = t * t;
            ++i;
            this->pb.val(inter[i]) = this->pb.val(inter[i - 1]) * t;
            this->pb.val(inter[i]) += this->pb.val(inter[i - 4]);
            ++i;
        }
        // explicit last two rounds, as we put the results in out[0] and out[1]
        // second to last round
        t = this->pb.val(inter[i - 1]) + this->pb.val(y[1]) + Base::round_cf[ROUNDS_N - 3];
        this->pb.val(inter[i]) = t * t;
        ++i;
        this->pb.val(out[1]) = this->pb.val(inter[i - 1]) * t;
        this->pb.val(out[1]) += this->pb.val(inter[i - 4]);

        // last round
        t = this->pb.val(out[1]) + this->pb.val(y[1]) + Base::round_cf[ROUNDS_N - 2];
        this->pb.val(inter[i]) = t * t;
        ++i;
        this->pb.val(out[0]) = this->pb.val(inter[i - 1]) * t;
        this->pb.val(out[0]) += this->pb.val(inter[i - 3]);
    }
};
