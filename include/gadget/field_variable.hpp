#pragma once

#include "utils/string_utils.hpp"
#include <gmpxx.h>
#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>

template<typename FieldT>
class field_variable : public libsnark::gadget<FieldT>
{
private:
    libsnark::pb_variable_array<FieldT> vars;

public:
    using super = libsnark::gadget<FieldT>;

    static constexpr size_t FIELDT_SIZE = 32;


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
    }

    void generate_r1cs_witness(const void *data)
    {
        mpz_class tmp;


        for (size_t i = 0; i < vars.size(); ++i)
        {
            mpz_import(tmp.get_mpz_t(), FIELDT_SIZE, 1, 1, 0, 0,
                       (const char *)data + FIELDT_SIZE * i);

            this->pb.val(vars[i]) = FieldT{tmp.get_mpz_t()};
        }
    }

    const auto &operator[](size_t i) const { return vars[i]; }

    auto &operator[](size_t i) { return vars[i]; }

    size_t size() const { return vars.size(); }

    auto begin() { return vars.begin(); }

    auto end() { return vars.end(); }

    auto begin() const { return vars.begin(); }

    auto end() const { return vars.end(); }
};
