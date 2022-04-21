#pragma once

#include <gmpxx.h>
#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>

template<typename FieldT>
class field_variable : public libsnark::gadget<FieldT>
{
public:
    using super = libsnark::gadget<FieldT>;

    static constexpr size_t FIELDT_SIZE = 32;

    libsnark::pb_variable_array<FieldT> vars;

    field_variable(libsnark::protoboard<FieldT> &pb, const size_t num_vars,
                   const std::string &annotation_prefix) :
        super(pb, annotation_prefix)
    {
        vars.allocate(pb, num_vars, annotation_prefix);
    }

    void generate_r1cs_constraints(){};

    void generate_r1cs_witness(const std::vector<FieldT> &contents)
    {
        for (size_t i = 0, n = std::min(contents.size(), vars.size()); i < n; ++i)
            this->pb.val(vars[i]) = contents[i];
    };

    void generate_r1cs_witness(const void *data)
    {
        mpz_class tmp;


        for (size_t i = 0; i < vars.size(); ++i)
        {
            mpz_import(tmp.get_mpz_t(), FIELDT_SIZE, 1, 1, 0, 0,
                       (const char *)data + FIELDT_SIZE * i);

            this->pb.val(vars[i]) = FieldT{tmp.get_mpz_t()};
        }
    };

    const auto &operator[](size_t i) const { return vars[i]; }

    size_t size() const { return vars.size(); }
};
