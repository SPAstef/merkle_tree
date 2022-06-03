#include "include/utils/measure.hpp"
#include "include/utils/string_utils.hpp"

unsigned char ascii_to_digit1(char c)
{
    unsigned char x = 0;

    if ('0' <= c && c <= '9')
        x = c - '0' + 0x0;
    else if ('A' <= c && c <= 'F')
        x = c - 'A' + 0xA;
    else if ('a' <= c && c <= 'f')
        x = c - 'a' + 0xa;

    return x;
}

unsigned char ascii_to_digit2(char c)
{
    unsigned char x = c - '0';

    if (x > 9)
        x -= 'A' - '0' - 10;
    if (x > 15)
        x -= 'a' - 'A';

    return x;
}

unsigned char ascii_to_digit3(char c)
{
    c -= 48;
    c -= (c > 9) * 7;
    c -= (c > 25) * 32;

    return c;
}

unsigned char ascii_to_digit31(char c)
{
    return (c - '0') - (c > '9') * 7 - (c > 'F') * 32;
}

unsigned char ascii_to_digit4(char c)
{
    static constexpr unsigned char map[256] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  2,  3,
        4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 13, 14, 15, 0,  0,  0,  0,  0,  0,  0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0,  0,  10, 11, 12, 13, 14, 15, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,
    };

    return map[(unsigned char)c];
}

unsigned char ascii_to_digit5(char c)
{
    switch (c)
    {
    case '1': return 0x1;
    case '2': return 0x2;
    case '3': return 0x3;
    case '4': return 0x4;
    case '5': return 0x5;
    case '6': return 0x6;
    case '7': return 0x7;
    case '8': return 0x8;
    case '9': return 0x9;
    case 'A':
    case 'a': return 0xA;
    case 'B':
    case 'b': return 0xB;
    case 'C':
    case 'c': return 0xC;
    case 'D':
    case 'd': return 0xD;
    case 'E':
    case 'e': return 0xE;
    case 'F':
    case 'f': return 0xF;
    default: return 0x0;
    }
}


int main()
{
    static constexpr size_t REPEAT_N = 1ULL << 28;
    static constexpr size_t TIMES_N = 5ULL;
    std::string str{random_string(REPEAT_N, "0123456789ABCDEFabcdef")};

    unsigned char x[256];
    for (int c = -128; c < 128; ++c)
    {
        x[0] = ascii_to_digit1(c);
        x[1] = ascii_to_digit2(c);
        x[2] = ascii_to_digit3(c);
        x[2] = ascii_to_digit31(c);
        x[3] = ascii_to_digit4(c);
        x[4] = ascii_to_digit5(c);

        printf("%d: %d %d %d %d %d\n", c, x[0], x[1], x[2], x[3], x[4]);
    }

    measure([&](size_t i) { x[ascii_to_digit2(str[i])] = ascii_to_digit2(str[i]); }, REPEAT_N,
            TIMES_N);
    measure([&](size_t i) { x[ascii_to_digit3(str[i])] = ascii_to_digit3(str[i]); }, REPEAT_N,
            TIMES_N);
    measure([&](size_t i) { x[ascii_to_digit31(str[i])] = ascii_to_digit31(str[i]); }, REPEAT_N,
            TIMES_N);
    measure([&](size_t i) { x[ascii_to_digit4(str[i])] = ascii_to_digit4(str[i]); }, REPEAT_N,
            TIMES_N);

    std::cout << x << '\n';

    return 0;
}
