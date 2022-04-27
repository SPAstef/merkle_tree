#ifndef CURVE_ALT_BN128
    #define CURVE_ALT_BN128
#endif

#include "utils/measure.hpp"

#include <gmpxx.h>
#include <libff/algebra/curves/public_params.hpp>
#include <libff/common/default_types/ec_pp.hpp>

using FieldT = libff::Fr<libff::default_ec_pp>;
using Bigint = libff::bigint<FieldT::num_limbs>;


int main()
{
    static constexpr size_t TEST_N = 1ULL << 25;
    static constexpr size_t REPEAT_N = 10;

    libff::default_ec_pp::init_public_params();

    {
        FieldT x{0x38492534958437};
        FieldT y;
        measure([&]() { y = x * x; }, TEST_N, REPEAT_N);
    }

    {
        FieldT x{0x38492534958437};
        FieldT y{0x38492534958437};
        measure(
            [&]()
            {
                y = x;
                y *= y;
            },
            TEST_N, REPEAT_N);
    }

    return 0;
}
