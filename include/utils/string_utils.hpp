#pragma once

#include <algorithm>
#include <array>
#include <iomanip>
#include <ostream>
#include <random>
#include <string>

#ifndef _WIN32
    #include <gmpxx.h>
    #include <libff/algebra/fields/bigint.hpp>
#endif

#include "bit_pack.hpp"

#if __cplusplus >= 202002L

    #include <ranges>

// Print iterables (except std::string, std::string_view and char arrays)
template<std::ranges::range Iter,
         std::enable_if_t<!std::is_same_v<Iter, std::string> &&
                              !std::is_same_v<Iter, std::string_view> &&
                              !std::is_same_v<decltype(*std::begin(Iter{})), char>,
                          bool> = true>
std::ostream &operator<<(std::ostream &os, const Iter &it)
{
    using T = decltype(*std::begin(it));
    using cast_type = std::conditional_t<std::is_convertible_v<T, unsigned char>, int, T>;

    size_t fix_width = os.width();

    os << std::setw(0) << '{';
    if (std::begin(it) != std::end(it))
    {
        auto i = std::begin(it);
        auto last = std::end(it);

        for (--last; i != last; ++i)
            if (fix_width)
                os << std::setw(fix_width) << std::setfill('0') << static_cast<cast_type>(*i)
                   << ", ";
            else
                os << static_cast<cast_type>(*i) << ", ";


        os << static_cast<cast_type>(*i);
    }

    return os << '}';
}

// Convert an ASCII character to an hex digit
constexpr inline uint8_t ascii_to_digit(char c)
{
    c -= '0';
    if (c > 9)
        c -= 'A' - '0' - 10;
    if (c > 15)
        c -= 'a' - 'A';

    return c;
}

template<std::ranges::range Range>
constexpr void hexstring_to_range(std::string_view str, Range &out)
{
    auto out_it = std::ranges::begin(out);

    for (size_t i = 0; i < str.size(); i += 2)
        *out_it++ = ascii_to_digit(str[i]) << 4 | ascii_to_digit(str[i + 1]);
}


namespace detail
{
    template<size_t sz>
    struct StrToHex
    {
        std::array<uint8_t, sz / 2> v;

        consteval StrToHex(const char (&str)[sz])
        {
            for (size_t i = 0; i < v.size(); ++i)
                v[i] = ascii_to_digit(str[i * 2]) << 4 | ascii_to_digit(str[i * 2 + 1]);
        }
    };

    template<typename T, bool reverse = false>
    consteval T str_to_t(const char *s, size_t sz)
    {
        T x = 0;

        for (size_t i = 0; i < sizeof(x) && i < sz; ++i)
            if constexpr (reverse)
                x |= static_cast<decltype(x)>(s[i]) << (i * 8);
            else
                x |= static_cast<decltype(x)>(s[i]) << ((sizeof(x) - i - 1) * 8);

        return x;
    }
} // namespace detail

// Convert (at compile time) a string literal of hexadecimal digits to an std::array of
// hexadecimal values.
template<detail::StrToHex cvt>
consteval auto operator""_x()
{
    return cvt.v;
}

    #define CAT0(x, y) x##y
    #define CAT(x, y) CAT0(x, y)

    #define OPERATOR_STR_TO_INTTYPE_NAMED(sign, size, type, name)                                  \
        consteval type name(const char *s, size_t sz)                                              \
        {                                                                                          \
            return detail::str_to_t<type, false>(s, sz);                                           \
        }                                                                                          \
                                                                                                   \
        consteval type CAT(name, r)(const char *s, size_t sz)                                      \
        {                                                                                          \
            return detail::str_to_t<type, true>(s, sz);                                            \
        }

    #define OPERATOR_STR_TO_INTTYPE(sign, size)                                                    \
        OPERATOR_STR_TO_INTTYPE_NAMED(sign, size, CAT(CAT(CAT(sign, int), size), _t),              \
                                      CAT(CAT(operator""_, sign), size))

OPERATOR_STR_TO_INTTYPE(, 64)  // ""_64, ""_64r
OPERATOR_STR_TO_INTTYPE(u, 64) // ""_u64, ""_u64r
OPERATOR_STR_TO_INTTYPE(, 32)  // ""_32, ""_32r
OPERATOR_STR_TO_INTTYPE(u, 32) // ""_u32, ""_u32r
OPERATOR_STR_TO_INTTYPE(, 16)  // ""_16, ""_16r
OPERATOR_STR_TO_INTTYPE(u, 16) // ""_u16, ""_u16r
OPERATOR_STR_TO_INTTYPE(, 8)   // ""_8, ""_8r
OPERATOR_STR_TO_INTTYPE(u, 8)  // ""_u8, ""_u8r

    #undef OPERATOR_STR_TO_INTTYPE
    #undef OPERATOR_STR_TO_INTTYPE_NAMED
    #undef CAT
    #undef CAT0

#endif

// Print pairs
template<typename T1, typename T2>
std::ostream &operator<<(std::ostream &os, const std::pair<T1, T2> &pair)
{
    return os << '(' << pair.first << ", " << pair.second << ')';
}

// Print char16_t
inline std::ostream &operator<<(std::ostream &os, const char16_t *str)
{
    while (*str)
        os << (char)*str++;

    return os;
}

// Print hexadeciaml numbers in a compact way without leaking
#define hexout(x) std::hex << std::setw(sizeof(x) * 2) << std::setfill('0') << (x) << std::dec

// Print hexadeciaml ranges in a compact way without leaking
#define hexoutit(x) std::hex << std::setw(sizeof(*std::begin(x)) * 2) << (x) << std::dec

template<bool reverse = false, typename T>
std::string hexdump(T *arr, size_t sz, bool upper = false, size_t spacing = 0)
{
    const char *TO_CHAR = upper ? "0123456789ABCDEF" : "0123456789abcdef";

    std::string s(sz * sizeof(T) * 2, 0);
    uint8_t *d = (uint8_t *)arr;

    if (reverse)
        for (size_t i = 0; i < sz; ++i)
        {
            size_t k = i * sizeof(T);
            for (size_t j = 0; j < sizeof(T); ++j)
            {
                s[(k + j) * 2] = TO_CHAR[d[k + sizeof(T) - j - 1] >> 4];
                s[(k + j) * 2 + 1] = TO_CHAR[d[k + sizeof(T) - j - 1] & 0xF];
            }
        }
    else
        for (size_t i = 0; i < sz * sizeof(T); ++i)
        {
            s[i * 2] = TO_CHAR[d[i] >> 4];
            s[i * 2 + 1] = TO_CHAR[d[i] & 0xF];
        }

    if (spacing)
        for (size_t i = 0, j = 0; i < s.size(); ++i, ++j)
            if (i && (j % spacing) == 0)
                s.insert(i++, " ");

    return s;
}


template<bool reverse = false, typename Iter>
std::string hexdump(const Iter &first, const Iter &last, bool upper = false, size_t spacing = 0)
{
    return hexdump<reverse>(&*first, std::distance(first, last), upper, spacing);
}

template<bool reverse = false>
std::string hexdump(const std::vector<bool> &v, bool upper = false, size_t spacing = 0)
{
    std::vector<uint8_t> w(v.size() / CHAR_BIT + (v.size() % CHAR_BIT != 0));

    pack_bits(w.data(), v);

    return hexdump<reverse>(w.begin(), w.end(), upper, spacing);
}


#if __cplusplus >= 202002L
template<bool reverse = false, std::ranges::range Range>
std::string hexdump(const Range &it, bool upper = false, size_t spacing = 0)
{
    return hexdump<reverse>(std::ranges::begin(it), std::ranges::end(it), upper, spacing);
}
#else
template<bool reverse = false, typename T, size_t sz>
std::string hexdump(const T (&arr)[sz], bool upper = false, size_t spacing = 0)
{
    return hexdump<reverse>(arr, sz, upper, spacing);
}
#endif

#ifndef _WIN32
template<bool reverse = false, long limbs = 4>
std::string hexdump(const libff::bigint<limbs> &x, bool upper = false, size_t spacing = 0)
{
    uint8_t buff[limbs * 8]{}; // limbs are 64-bit wide
    mpz_class tmp;

    x.to_mpz(tmp.get_mpz_t());
    mpz_export(buff, NULL, 1, 1, 0, 0, tmp.get_mpz_t());

    return hexdump<reverse>(buff, upper, spacing);
}
#endif

inline std::string random_string(size_t len, std::string_view alphabet)
{
    static std::mt19937_64 rng{std::random_device{}()};

    std::uniform_int_distribution<size_t> dist{0, alphabet.size() - 1};
    std::string str(len, 0);

    std::generate(str.begin(), str.end(), [&]() { return alphabet[dist(rng)]; });

    return str;
}
