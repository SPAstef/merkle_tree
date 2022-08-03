#include <array>
#include <iostream>

constexpr inline uint8_t ascii_to_digit(char c)
{
    c -= '0';
    if (c > 9)
        c -= 'A' - '0' - 10;
    if (c > 15)
        c -= 'a' - 'A';

    return c;
}

template<char... str>
constexpr auto operator""_x()
{
    std::array<uint8_t, sizeof...(str)> s{str...};
    std::array<uint8_t, (sizeof...(str) - 2) / 2> v;

    for (size_t i = 0; i < v.size(); ++i)
        v[i] = ascii_to_digit(s[(i + 1) * 2]) << 4 | ascii_to_digit(s[(i + 1) * 2 + 1]);

    return v;
}

int main()
{
    auto v = 0x1234_x;

    for (auto i : v)
        std::cout << (int)i << ' ';
    std::cout << '\n';

    std::cout << v.size() << '\n';

    return 0;
}
