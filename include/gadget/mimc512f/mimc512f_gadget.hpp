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
    static constexpr size_t INTER_N = 4 + 2 * (ROUNDS_N - 2) + 4 + 2 * (ROUNDS_N - 4) + 2;

    std::vector<PbVar> inter;

public:
    mimc512f_two_to_one_hash_gadget(libsnark::protoboard<FieldT> &pb, const DigVar &x,
                                    const DigVar &y, const DigVar &out,
                                    const std::string &annotation_prefix) :
        Parent(pb, annotation_prefix),
        x{x}, y{y}, out{out}, inter{}
    {
        for (size_t i = 0; i < INTER_N; ++i)
            inter.emplace_back(pb, FMT("mimc512f_inter_%llu", i));
    }

    inline size_t constrain(const LC &x, const LC &y, const LC &z)
    {
        this->pb.add_r1cs_constraint(Constraint(x, y, z), FMT(""));

        return 1;
    }

    void generate_r1cs_constraints()
    {
        // Remember x = x0||x1 and y = y0||y1
        size_t i = 0;
        LC t;

        // ROUND 0
        // x0 = (x0^3 + x1)
        i += constrain(x[0], x[0], inter[i]);
        i += constrain(inter[i - 1], x[0], inter[i] - x[1]);
        // We don't need to do x1 <- x0, as we can reuse x[0] in the next round

        // ROUND 1
        // x0 <- (x0+c1)^3+x1 (x1 = x[0])
        t = inter[i - 1] + Base::round_cf[0];
        i += constrain(t, t, inter[i]);
        i += constrain(inter[i - 1], t, inter[i] - x[0]);
        // Again we can reuse the current inter[i - 3] in the next round

        // ROUNDS 2..N
        for (size_t j = 1; j < ROUNDS_N - 1; ++j)
        {
            // x0 <- (x0+c)^3+x1 (x1 = inter[i-4] at the end)
            t = inter[i - 1] + Base::round_cf[j];
            i += constrain(t, t, inter[i]);
            i += constrain(inter[i - 1], t, inter[i] - inter[i - 4]);
        }

        // x0 (i.e. inter[i - 1]) is now the key
        size_t k = i - 1;

        // We use the Davis-Meyer construction

        // ROUND 0
        // y0 <- (y0 + k)^3 + y1
        t = y[0] + inter[k];
        i += constrain(t, t, inter[i]);
        i += constrain(inter[i - 1], t, inter[i] - y[1]);

        // ROUND 1
        // y0 <- (y0 + k + c)^3 + y1 (y1 = y[0])
        t = inter[i - 1] + inter[k] + Base::round_cf[0];
        i += constrain(t, t, inter[i]);
        i += constrain(inter[i - 1], t, inter[i] - y[0]);

        // ROUNDS 2..N-2
        for (size_t j = 1; j < ROUNDS_N - 3; ++j)
        {
            // y0 <- (y0 + k + c)^3 + y1 (y1 = inter[i-4] at the end)
            t = inter[i - 1] + inter[k] + Base::round_cf[j];
            i += constrain(t, t, inter[i]);
            i += constrain(inter[i - 1], t, inter[i] - inter[i - 4]);
        }
        // ROUND N-2
        // we put the result in out[1]
        t = inter[i - 1] + inter[k] + Base::round_cf[ROUNDS_N - 3];
        constrain(t, t, inter[i]);
        // old x0 is inter[i-3]
        i += constrain(inter[i], t, out[1] - inter[i - 3]);

        // ROUND N-1
        // we put the result in out[0]
        t = out[1] + inter[k] + Base::round_cf[ROUNDS_N - 2];
        constrain(t, t, inter[i]);
        // old x0 is inter[i-2]
        constrain(inter[i], t, out[0] - inter[i - 2] - inter[k]);
    }

    void generate_r1cs_witness()
    {
        auto &pb = this->pb;
        size_t i = 0;
        FieldT t;

        // ROUND 0
        pb.val(inter[i]) = pb.val(x[0]) * pb.val(x[0]);
        ++i;
        pb.val(inter[i]) = pb.val(inter[i - 1]) * pb.val(x[0]);
        pb.val(inter[i]) += pb.val(x[1]);
        ++i;

        // ROUND 1
        t = pb.val(inter[i - 1]) + Base::round_cf[0];
        pb.val(inter[i]) = t * t;
        ++i;
        pb.val(inter[i]) = pb.val(inter[i - 1]) * t;
        pb.val(inter[i]) += pb.val(x[0]);
        ++i;

        // ROUNDS 2..N-1
        for (size_t j = 1; j < ROUNDS_N - 1; ++j)
        {
            t = pb.val(inter[i - 1]) + Base::round_cf[j];
            pb.val(inter[i]) = t * t;
            ++i;
            pb.val(inter[i]) = pb.val(inter[i - 1]) * t;
            pb.val(inter[i]) += pb.val(inter[i - 4]);
            ++i;
        }

        // We use the Davis-Meyer construction

        // ROUND 0
        size_t k = i - 1;
        t = pb.val(y[0]) + pb.val(inter[k]);
        pb.val(inter[i]) = t * t;
        ++i;
        pb.val(inter[i]) = pb.val(inter[i - 1]) * t;
        pb.val(inter[i]) += pb.val(y[1]);
        ++i;

        // ROUND 1
        t = pb.val(inter[i - 1]) + pb.val(inter[k]) + Base::round_cf[0];
        pb.val(inter[i]) = t * t;
        ++i;
        pb.val(inter[i]) = pb.val(inter[i - 1]) * t;
        pb.val(inter[i]) += pb.val(y[0]);
        ++i;

        // ROUNDS 2..N-2
        for (size_t j = 1; j < ROUNDS_N - 3; ++j)
        {
            t = pb.val(inter[i - 1]) + pb.val(inter[k]) + Base::round_cf[j];
            pb.val(inter[i]) = t * t;
            ++i;
            pb.val(inter[i]) = pb.val(inter[i - 1]) * t;
            pb.val(inter[i]) += pb.val(inter[i - 4]);
            ++i;
        }
        // ROUND N-2
        t = pb.val(inter[i - 1]) + pb.val(inter[k]) + Base::round_cf[ROUNDS_N - 3];
        pb.val(inter[i]) = t * t;
        pb.val(out[1]) = pb.val(inter[i]) * t;
        pb.val(out[1]) += pb.val(inter[i - 3]);
        ++i;

        // ROUND N-1
        t = pb.val(out[1]) + pb.val(inter[k]) + Base::round_cf[ROUNDS_N - 2];
        pb.val(inter[i]) = t * t;
        pb.val(out[0]) = pb.val(inter[i]) * t;
        pb.val(out[0]) += pb.val(inter[i - 2]);
        pb.val(out[0]) += pb.val(inter[k]);
    }
};
