#pragma once

#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>

#if defined(__INTELLISENSE__) && 0
    #include <libff/common/default_types/ec_pp.hpp>
using FieldT = libff::Fr<libsnark::default_r1cs_ppzksnark_pp>;
#else
template<typename FieldT>
#endif
class XOR_gadget : public libsnark::gadget<FieldT>
{
public:
    using PbLC = libsnark::pb_linear_combination<FieldT>;
    
    const PbLC A;
    const PbLC B;
    const PbLC out;

    XOR_gadget(libsnark::protoboard<FieldT> &pb, const PbLC &A, const PbLC &B, const PbLC &out,
               const std::string &annotation_prefix) :
        libsnark::gadget<FieldT>(pb, annotation_prefix),
        A(A), B(B), out(out)
    {}

    void generate_r1cs_constraints()
    {
        // (A + B) - out = (A + A)B  i.e. out = A xor B
        libsnark::generate_boolean_r1cs_constraint<FieldT>(pb, A,
                                                           FMT(this->annotation_prefix, "_A_bool"));
        libsnark::generate_boolean_r1cs_constraint<FieldT>(pb, B,
                                                           FMT(this->annotation_prefix, "_B_bool"));

        this->pb.add_r1cs_constraint(libsnark::r1cs_constraint<FieldT>(A + A, B, A + B - out),
                                     FMT(this->annotation_prefix, "_out"));
    }
    void generate_r1cs_witness()
    {
        this->pb.lc_val(out) = this->pb.lc_val(A) + this->pb.lc_val(B) -
                               (this->pb.lc_val(A) + this->pb.lc_val(A)) * this->pb.lc_val(B);
    }
};

#if defined(__INTELLISENSE__) && 0
    #include <libff/common/default_types/ec_pp.hpp>
using FieldT = libff::Fr<libsnark::default_r1cs_ppzksnark_pp>;
#else
template<typename FieldT>
#endif
class LongXOR_gadget : public libsnark::gadget<FieldT>
{
public:
    using DigVar = libsnark::digest_variable<FieldT>;

    const DigVar A;
    const DigVar B;
    const DigVar out;
    std::vector<XOR_gadget<FieldT>> xor_gad;

    LongXOR_gadget(libsnark::protoboard<FieldT> &pb, const DigVar &A, const DigVar &B,
                   const DigVar &out, const std::string &annotation_prefix) :
        libsnark::gadget<FieldT>(pb, annotation_prefix),
        A(A), B(B), out(out), xor_gad()
    {
        for (size_t i = 0; i < this->A.digest_size; ++i)
            xor_gad.emplace_back(pb, this->A.bits[i], this->B.bits[i], this->out.bits[i],
                                 FMT(this->annotation_prefix, "_xor"));
    }

    void generate_r1cs_constraints()
    {
        for (size_t i = 0; i < xor_gad.size(); ++i)
            xor_gad[i].generate_r1cs_constraints();
    }

    void generate_r1cs_witness()
    {
        for (size_t i = 0; i < xor_gad.size(); ++i)
            xor_gad[i].generate_r1cs_witness();
    }
};
