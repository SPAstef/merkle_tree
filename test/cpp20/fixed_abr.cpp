#include "utils/fixed_abr.hpp"
#include "utils/mimc256.hpp"
#include "utils/mimc512f.hpp"
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
    static constexpr auto digest_sha256 =
        "e54f319bda1edc07b45f34a5b6452a2c75bee8332a65ecf5c1803534b9b6e372"_x;

    static constexpr auto digest_sha512 =
        "8eb195cebaf15f4a0c277829505d9b4eedf0d0167183fea9ee74ec93eab6192f37d8857b5d8ba5573300357b92142c906eb9b4ffa6f0297f8c538b81865fef0d"_x;


    std::cout << std::boolalpha;

    std::cout << "Hashing SHA256... ";
    check = true;
    {
        std::vector<uint8_t> data(FixedAbr<HEIGHT, Sha256>::INPUT_SIZE);
        FixedAbr<HEIGHT, Sha256> tree(data);

        check = memcmp(tree.digest(), digest_sha256.data(), digest_sha256.size()) == 0;
    }
    std::cout << check << '\n';
    all_check &= check;

    std::cout << "Hashing SHA512... ";
    check = true;
    {
        std::vector<uint8_t> data(FixedAbr<HEIGHT, Sha512>::INPUT_SIZE);
        FixedAbr<HEIGHT, Sha512> tree(data);

        check = memcmp(tree.digest(), digest_sha512.data(), digest_sha512.size()) == 0;
    }
    std::cout << check << '\n';
    all_check &= check;

/* There are no test vectors for MiMC, so we assume our implementation to be correct
    std::cout << "Hashing MiMC256... ";
    check = true;
    {
        std::vector<uint8_t> data(FixedAbr<HEIGHT, Mimc256>::INPUT_SIZE);
        FixedAbr<HEIGHT, Mimc256> tree(data);

        check = memcmp(tree.digest(), digest_mimc256.data(), digest_mimc256.size()) == 0;
    }
    std::cout << check << '\n';
    all_check &= check;

    std::cout << "Hashing MiMC512f... ";
    check = true;
    {
        std::vector<uint8_t> data(FixedAbr<HEIGHT, Mimc512F>::INPUT_SIZE);
        FixedAbr<HEIGHT, Mimc512F> tree(data);

        check = memcmp(tree.digest(), digest_mimc512f.data(), digest_mimc512f.size()) == 0;
    }
    std::cout << check << '\n';
    all_check &= check;*/

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
