#include "fixed_abr.hpp"
#include "utils/string_utils.hpp"
#include <cstring>
#include <iostream>

static bool run_tests()
{
    bool check = true;
    bool all_check = true;

    static constexpr size_t HEIGHT = 4;

    std::vector<uint8_t> data(FixedAbr<HEIGHT, Sha256>::INPUT_SIZE);
    auto real_digest = "e54f319bda1edc07b45f34a5b6452a2c75bee8332a65ecf5c1803534b9b6e372"_x;

    std::cout << std::boolalpha;

    std::cout << "Hashing... ";
    check = true;

    FixedAbr<HEIGHT, Sha256> tree(data);

    check = memcmp(tree.digest(), real_digest.data(), real_digest.size()) == 0;

    std::cout << check << '\n';
    all_check &= check;

    return all_check;
}

int main()
{
    std::cout << "\n==== Testing ABR ====\n";

    bool all_check = run_tests();

    std::cout << "\n==== " << (all_check ? "ALL TESTS SUCCEEDED" : "SOME TESTS FAILED")
              << " ====\n\n";

#ifdef MEASURE_PERFORMANCE
#endif

    return 0;
}
