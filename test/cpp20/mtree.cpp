#include "fixed_mtree.hpp"
#include "utils/string_utils.hpp"
#include <cstring>
#include <iostream>

static bool run_tests()
{
    bool check = true;
    bool all_check = true;

    static constexpr size_t HEIGHT = 4;

    std::vector<uint8_t> data(FixedMTree<HEIGHT, Sha256>::INPUT_SIZE);
    auto real_digest = "26b0052694fc42fdff93e6fb5a71d38c3dd7dc5b6ad710eb048c660233137fab"_x;

    std::cout << std::boolalpha;

    std::cout << "Hashing... ";
    check = true;

    FixedMTree<HEIGHT, Sha256> tree(data);

    check = memcmp(tree.digest(), real_digest.data(), real_digest.size()) == 0;

    std::cout << check << '\n';
    all_check &= check;

    return all_check;
}

int main()
{
    std::cout << "\n==== Testing Merkle Tree ====\n";

    bool all_check = run_tests();

    std::cout << "\n==== " << (all_check ? "ALL TESTS SUCCEEDED" : "SOME TESTS FAILED")
              << " ====\n\n";

#ifdef MEASURE_PERFORMANCE
#endif

    return 0;
}
