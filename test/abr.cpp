#include "fixed_abr.hpp"
#include <iostream>
#include <random>
#include <vector>

int main()
{
    std::vector<uint8_t> data(FixedAbr<4>::INPUT_SZ);
    std::mt19937 rng{std::random_device{}()};

    std::ranges::generate(data, std::ref(rng));

    FixedAbr<4> tree(data);

    std::cout << tree << '\n';

    return 0;
}
