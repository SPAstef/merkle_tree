#pragma once

#include "gadget/field_variable.hpp"
#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>

#if defined(__INTELLISENSE__) && 0
    #include <libff/common/default_types/ec_pp.hpp>
using FieldT = libff::Fr<libsnark::default_r1cs_ppzksnark_pp>;
#else
template<typename FieldT>
#endif
class Add_gadget : public libsnark::gadget<FieldT>
{
public:
    using super = libsnark::gadget<FieldT>;
    using PbLC = libsnark::pb_linear_combination<FieldT>;

    const PbLC A;
    const PbLC B;
    const PbLC out;

    Add_gadget(libsnark::protoboard<FieldT> &pb, const PbLC &A, const PbLC &B, const PbLC &out,
               const std::string &annotation_prefix) :
        super(pb, annotation_prefix),
        A(A), B(B), out(out)
    {}

    void generate_r1cs_constraints()
    {
        // out = A + B
        this->pb.add_r1cs_constraint(libsnark::r1cs_constraint<FieldT>(A + B, 1, out),
                                     FMT(this->annotation_prefix, "_out"));
    }
    void generate_r1cs_witness() { this->pb.lc_val(out) = this->pb.lc_val(A) + this->pb.lc_val(B); }
};

#if defined(__INTELLISENSE__) && 0
    #include <libff/common/default_types/ec_pp.hpp>
using FieldT = libff::Fr<libsnark::default_r1cs_ppzksnark_pp>;
#else
template<typename FieldT>
#endif
class LongAdd_gadget : public libsnark::gadget<FieldT>
{
public:
    using super = libsnark::gadget<FieldT>;
    using DigVar = field_variable<FieldT>;

    const DigVar A;
    const DigVar B;
    const DigVar out;
    std::vector<Add_gadget<FieldT>> add_gad;

    LongAdd_gadget(libsnark::protoboard<FieldT> &pb, const DigVar &A, const DigVar &B,
                   const DigVar &out, const std::string &annotation_prefix) :
        super(pb, annotation_prefix),
        A(A), B(B), out(out)
    {
        for (size_t i = 0; i < this->A.size(); ++i)
            add_gad.emplace_back(pb, this->A[i], this->B[i], this->out[i],
                                 FMT(this->annotation_prefix, "_add"));
    }

    void generate_r1cs_constraints()
    {
        for (auto &&x : add_gad)
            x.generate_r1cs_constraints();
    }

    void generate_r1cs_witness()
    {
        for (auto &&x : add_gad)
            x.generate_r1cs_witness();
    }
};
