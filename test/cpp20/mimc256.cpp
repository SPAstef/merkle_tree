#include "utils/mimc256.hpp"
#include "utils/string_utils.hpp"
#include <cstring>
#include <iostream>

static bool run_tests()
{
    uint8_t msg[Mimc256::BLOCK_SIZE]{};
    uint8_t dig[Mimc256::DIGEST_SIZE]{};
    auto real_dig = "0d089f049d792a1cf51d9f40a2e9cea4c49a676fe1baa4b82ba9371e3a2b5734"_x;

    bool check = true;
    bool all_check = true;

    std::cout << std::boolalpha;

    std::cout << "Hashing... ";
    check = true;

    Mimc256::hash_oneblock(dig, msg);
    check = memcmp(dig, real_dig.data(), sizeof(dig)) == 0;

    std::cout << hexdump(dig) << '\n';
    std::cout << check << '\n';
    all_check &= check;

    return all_check;
}

int main()
{
    std::cout << "\n==== Testing MIMC256 ====\n";
    
    bool all_check = run_tests();

    std::cout << "\n==== " << (all_check ? "ALL TESTS SUCCEEDED" : "SOME TESTS FAILED")
              << " ====\n\n";

#ifdef MEASURE_PERFORMANCE
#endif

    return 0;
}
