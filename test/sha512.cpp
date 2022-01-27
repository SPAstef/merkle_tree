#include "utils/string_utils.hpp"
#include "utils/sha512.hpp"
#include <iostream>

int main()
{
    uint8_t msg[sha512::BLOCK_SIZE]{0x80, 0x0, 0x0, 0x00};
    uint8_t dig[sha512::DIGEST_SIZE]{};

    sha512::hash_oneblock(dig, msg);

    std::cout << hexdump(dig) << '\n';

    return 0;
}
