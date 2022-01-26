#pragma once

#include <climits>
#include <cstdint>
#include <vector>

static inline void pack_bits(uint8_t *v, const std::vector<bool> &bv)
{
    for (size_t i = 0, sz = bv.size() / CHAR_BIT; i < sz; ++i)
    {
        v[i] = 0;
        v[i] |= bv[i * 8 + 0] << 7;
        v[i] |= bv[i * 8 + 1] << 6;
        v[i] |= bv[i * 8 + 2] << 5;
        v[i] |= bv[i * 8 + 3] << 4;
        v[i] |= bv[i * 8 + 4] << 3;
        v[i] |= bv[i * 8 + 5] << 2;
        v[i] |= bv[i * 8 + 6] << 1;
        v[i] |= bv[i * 8 + 7] << 0;
    }
}

static inline void unpack_bits(std::vector<bool> &bv, const uint8_t *v)
{
    for (size_t i = 0, sz = bv.size() / CHAR_BIT; i < sz; ++i)
    {
        bv[i * 8 + 0] = v[i] >> 7 & 1;
        bv[i * 8 + 1] = v[i] >> 6 & 1;
        bv[i * 8 + 2] = v[i] >> 5 & 1;
        bv[i * 8 + 3] = v[i] >> 4 & 1;
        bv[i * 8 + 4] = v[i] >> 3 & 1;
        bv[i * 8 + 5] = v[i] >> 2 & 1;
        bv[i * 8 + 6] = v[i] >> 1 & 1;
        bv[i * 8 + 7] = v[i] >> 0 & 1;
    }
}
