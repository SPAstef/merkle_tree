#include "utils/mimc512f.hpp"
#include "utils/string_utils.hpp"
#include <cstring>
#include <iostream>

static bool run_tests()
{
    uint8_t msg[Mimc512F::BLOCK_SIZE]{};
    uint8_t dig[Mimc512F::DIGEST_SIZE]{};
    auto real_dig = "19b15c8e5edf3e5f25ecf7cef729200f9207cfb5047e14977fb0a2b21cfe3a62229005ac91ac7a34f8816807735a37e8a7c1e5ed7b5782304f3970dff1f3201d"_x;
    bool check = true;
    bool all_check = true;

    std::cout << std::boolalpha;

    std::cout << "Hashing... ";
    check = true;

    Mimc512F::hash_oneblock(dig, msg);
    check = memcmp(dig, real_dig.data(), sizeof(dig)) == 0;

    std::cout << hexdump(dig) << '\n';
    std::cout << check << '\n';
    all_check &= check;

    return all_check;
}

int main()
{
    std::cout << "\n==== Testing MiMC512F ====\n";

    libff::init_alt_bn128_params();
    bool all_check = run_tests();

    std::cout << "\n==== " << (all_check ? "ALL TESTS SUCCEEDED" : "SOME TESTS FAILED")
              << " ====\n\n";

#ifdef MEASURE_PERFORMANCE
#endif

    return 0;
}
