#ifndef CURVE_ALT_BN128
    #define CURVE_ALT_BN128
#endif

#include <gmpxx.h>
#include <libff/algebra/curves/public_params.hpp>
#include <libff/common/default_types/ec_pp.hpp>

using FieldT = libff::Fr<libff::default_ec_pp>;
using Bigint = libff::bigint<FieldT::num_limbs>;


int legendre(const FieldT &x)
{
    static const Bigint p = (FieldT{-1} * FieldT{2}.inverse()).as_bigint();

    unsigned long l = (x ^ p).as_ulong();
    if (l == 0)
        return 0;
    if (l == 1)
        return 1;
    return -1;
}

int main()
{

    libff::default_ec_pp::init_public_params();

    for (int i = 0; i < 100;)
    {
        FieldT a = FieldT::random_element();
        FieldT b = FieldT::random_element();

        if (legendre(a * a - (b + b + b + b)) < 0)
        {
            std::cout << '{' << a << ", " << b << "}\n";
            ++i;
        }
    }

    FieldT{-1}.as_bigint().print_hex();

    return 0;
}
