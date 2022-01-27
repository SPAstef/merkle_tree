#pragma once

#include "utils/sha256.hpp"
#include "utils/sha512.hpp"
#include "utils/sha_version.hpp"
#include "utils/string_utils.hpp"

#include <cstring>
#include <iostream>
#include <vector>

#if __cplusplus >= 202002L
    #include <ranges>
#endif

template<Sha_version sha_version>
class FixedAbrNode
{
private:
    static constexpr size_t DIG_SZ = sha_version == Sha_version::SHA256 ? sha256::DIGEST_SIZE
                                                                        : sha512::DIGEST_SIZE;
    static constexpr size_t BLK_SZ = sha_version == Sha_version::SHA256 ? sha256::BLOCK_SIZE
                                                                        : sha512::BLOCK_SIZE;
    static constexpr auto hash_oneblock = sha_version == Sha_version::SHA256
                                              ? sha256::hash_oneblock
                                              : sha512::hash_oneblock;

    uint8_t digest[DIG_SZ];
    FixedAbrNode *f = nullptr;
    FixedAbrNode *l = nullptr;
    FixedAbrNode *e = nullptr;
    FixedAbrNode *r = nullptr;
    size_t depth = 0;

    template<size_t height>
    requires(height > 0) friend class FixedAbr;

public:
    FixedAbrNode() = default;

    FixedAbrNode(const uint8_t *block, size_t depth) : depth{depth}
    {
        hash_oneblock(this->digest, block);
    }

    FixedAbrNode(const uint8_t *left, const uint8_t *right, size_t depth) : depth{depth}
    {
        uint8_t block[BLK_SZ];

        memcpy(block, left, DIG_SZ);
        memcpy(block + DIG_SZ, right, DIG_SZ);

        hash_oneblock(this->digest, block);
    }

    FixedAbrNode(const uint8_t *left, const uint8_t *right, const uint8_t *middle, size_t depth) :
        depth{depth}
    {
        uint8_t block[BLK_SZ];

        memcpy(block, left, DIG_SZ);
        memcpy(block + DIG_SZ, right, DIG_SZ);

        // xoring left
        for (size_t i = 0; i < DIG_SZ; ++i)
            block[i] ^= middle[i];

        // xoring right
        for (size_t i = 0; i < DIG_SZ; ++i)
            block[DIG_SZ + i] ^= middle[i];

        hash_oneblock(this->digest, block);

        for (size_t i = 0; i < DIG_SZ; ++i)
            this->digest[i] ^= right[i];
    }

    friend std::ostream &operator<<(std::ostream &os, const FixedAbrNode &node)
    {
        for (size_t i = 0; i < node.depth; ++i)
            os << "    ";


        if (node.f)
        {
            if (&node == node.f->l)
                os << 'L';
            else if (&node == node.f->r)
                os << 'R';
            else if (&node == node.f->e)
                os << 'E';
        }
        else
            os << '*';

        os << ": " << hexdump(node.digest, DIG_SZ) << '\n';
        if (node.l)
            os << *node.l;
        if (node.e)
            os << *node.e;
        if (node.r)
            os << *node.r;

        return os;
    }
};


template<size_t height, Sha_version sha_version>
class FixedAbr
{
private:
    static constexpr size_t BLK_SZ = sha_version == Sha_version::SHA256 ? sha256::BLOCK_SIZE
                                                                        : sha512::BLOCK_SIZE;

    static constexpr size_t INTERNAL_N = (1ULL << (height - 2)) - 1;
    static constexpr size_t LEAVES_N = 1ULL << (height - 1);
    static constexpr size_t INPUT_BLKS = LEAVES_N + INTERNAL_N;

    std::vector<FixedAbrNode> nodes{};
    FixedAbrNode *root = nullptr;

public:
    static constexpr size_t INPUT_SZ = INPUT_BLKS * BLK_SZ;

#if __cplusplus >= 202002L
    template<std::ranges::range Range>
    FixedAbr(const Range &range) :
        FixedAbr(std::ranges::cdata(range),
                 std::ranges::size(range) * sizeof(*std::ranges::cdata(range)))
    {}
#endif

    template<typename Iter>
    FixedAbr(const Iter begin, const Iter end) :
        FixedAbr(&*begin, std::distance(begin, end) * sizeof(*begin))
    {}

    FixedAbr(const void *vdata, size_t sz) :
        nodes((1ULL << height) - 1 + INTERNAL_N), root{&nodes.back()}
    {
        if (sz / BLK_SZ != INPUT_BLKS || sz % BLK_SZ != 0)
        {
            std::cerr << "FixedAbr: Bad size of input data\n";
            return;
        }

        const uint8_t *data = (const uint8_t *)vdata;
        size_t depth = height - 1;
        size_t last = 0;

        // add leaves and internal hashes
        for (size_t i = 0; i < INPUT_BLKS; ++i)
            this->nodes[last++] = {data + BLK_SZ * i, depth};


        // build first internal layer
        --depth;
        for (size_t i = 0; i < LEAVES_N; i += 2)
        {
            this->nodes[last] = FixedAbrNode{this->nodes[i].digest, this->nodes[i + 1].digest,
                                             depth};

            this->nodes[last].l = &this->nodes[i];
            this->nodes[last].r = &this->nodes[i + 1];
            this->nodes[i].f = &this->nodes[last];
            this->nodes[i + 1].f = &this->nodes[last];
            ++last;
        }

        for (size_t i = INPUT_BLKS, len = i + LEAVES_N / 2, e = LEAVES_N; depth > 0;
             len += 1ULL << depth)
        {
            --depth;
            while (i < len)
            {
                this->nodes[last] = FixedAbrNode{this->nodes[i].digest, this->nodes[i + 1].digest,
                                                 this->nodes[e].digest, depth};

                this->nodes[last].l = &this->nodes[i];
                this->nodes[last].e = &this->nodes[e];
                this->nodes[last].r = &this->nodes[i + 1];

                this->nodes[last].e->depth = depth + 1;

                this->nodes[i].f = &this->nodes[last];
                this->nodes[e].f = &this->nodes[last];
                this->nodes[i + 1].f = &this->nodes[last];

                i += 2;
                ++last;
                ++e;
            }
        }
    }

    const uint8_t digest() const { return root->digest; }

    friend std::ostream &operator<<(std::ostream &os, const FixedAbr &tree)
    {
        if (!tree.root)
            return os;

        return os << *tree.root;
    }
};
