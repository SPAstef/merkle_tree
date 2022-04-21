#include "utils/fixed_mtree.hpp"
#include "utils/mimc256.hpp"
#include "utils/sha256.hpp"
#include "utils/sha512.hpp"
#include "utils/string_utils.hpp"
#include <cstring>
#include <iostream>

static bool run_tests()
{
    bool check = true;
    bool all_check = true;

    static constexpr size_t HEIGHT = 4;

    auto digest256 = "26b0052694fc42fdff93e6fb5a71d38c3dd7dc5b6ad710eb048c660233137fab"_x;
    auto digest512 =
        "6e3d539e81fcba88a5a6875590df1f6ec06e67b1656504bd60f33953b81b080637d790e65789a4e03bfa4d457cb820f5153a0299c74798775d4295e9b0955517"_x;
    auto digestMimc = "139cd8e3fe5f1e86975683cec8b0eb5e54a10cd170f9b28fbe6906978d6d91d1"_x;

    std::cout << std::boolalpha;

    std::cout << "SHA256... ";
    check = true;
    {
        std::vector<uint8_t> data(FixedMTree<HEIGHT, Sha256>::INPUT_SIZE);
        FixedMTree<HEIGHT, Sha256> tree(data);

        check = memcmp(tree.digest(), digest256.data(), digest256.size()) == 0;
    }
    std::cout << check << '\n';
    all_check &= check;

    std::cout << "SHA512... ";
    check = true;
    {
        std::vector<uint8_t> data(FixedMTree<HEIGHT, Sha512>::INPUT_SIZE);
        FixedMTree<HEIGHT, Sha512> tree(data);

        check = memcmp(tree.digest(), digest512.data(), digest512.size()) == 0;
    }
    std::cout << check << '\n';
    all_check &= check;

    std::cout << "MiMC256... ";
    check = true;
    {
        std::vector<uint8_t> data(FixedMTree<HEIGHT, Mimc256>::INPUT_SIZE);
        FixedMTree<HEIGHT, Mimc256> tree(data);

        check = memcmp(tree.digest(), digestMimc.data(), digestMimc.size()) == 0;
    }
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
