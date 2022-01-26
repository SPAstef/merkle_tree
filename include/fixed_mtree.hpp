#pragma once

#include "utils/sha256.hpp"
#include "utils/sha512.hpp"
#include "utils/sha_version.hpp"
#if __cplusplus >= 202002L
    #include "utils/string_utils.hpp"
#endif

#include <array>
#include <bit>
#include <cstring>
#include <iostream>
#include <ranges>
#include <stdexcept>
#include <variant>
#include <vector>

template<Sha_version sha_version>
class FixedMTreeNode
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
    FixedMTreeNode *f = nullptr;
    FixedMTreeNode *l = nullptr;
    FixedMTreeNode *r = nullptr;
    size_t depth = 0;

    template<size_t, Sha_version>
    friend class FixedMTree;

public:
    FixedMTreeNode() = default;

    FixedMTreeNode(const uint8_t *block, size_t depth) : depth{depth}
    {
        hash_oneblock(this->digest, block);
    }

    FixedMTreeNode(const uint8_t *left, const uint8_t *right, size_t depth) : depth{depth}
    {
        uint8_t block[BLK_SZ];

        memcpy(block, left, DIG_SZ);
        memcpy(block + DIG_SZ, right, DIG_SZ);

        hash_oneblock(this->digest, block);
    }

    const uint8_t *get_digest() const { return digest; }

#if __cplusplus >= 202002L
    friend std::ostream &operator<<(std::ostream &os, const FixedMTreeNode &node)
    {
        for (size_t i = 0; i < node.depth; ++i)
            os << "    ";

        os << "*: " << hexdump(node.digest) << '\n';

        if (node.l)
            os << *node.l;
        if (node.r)
            os << *node.r;

        return os;
    }
#endif
};


template<size_t height, Sha_version sha_version>
class FixedMTree
{
public:
    using Node = FixedMTreeNode<sha_version>;

private:
    static constexpr size_t BLK_SZ = sha_version == Sha_version::SHA256 ? sha256::BLOCK_SIZE
                                                                        : sha512::BLOCK_SIZE;

    std::vector<Node> nodes{};
    Node *root = nullptr;

public:
#if __cplusplus >= 202002L
    template<std::ranges::range Range>
    FixedMTree(const Range &range) :
        FixedMTree(std::ranges::cdata(range),
                   std::ranges::size(range) * sizeof(*std::ranges::cdata(range)))
    {}
#endif

    template<typename Iter>
    FixedMTree(const Iter begin, const Iter end) :
        FixedMTree(&*begin, std::distance(begin, end) * sizeof(*begin))
    {}

    FixedMTree(const void *vdata, size_t sz) : nodes((1ULL << height) - 1), root{&nodes.back()}
    {
        static constexpr size_t LEAVES_N = 1ULL << (height - 1);

        if (sz / BLK_SZ != LEAVES_N || sz % BLK_SZ != 0)
        {
            std::cerr << "FixedMTree: Bad size of input data\n";
            return;
        }

        const uint8_t *data = (const uint8_t *)vdata;
        size_t depth = height - 1;

        // add leaves
        for (size_t i = 0; i < LEAVES_N; ++i)
            this->nodes[i] = {data + BLK_SZ * i, depth};

        // build tree bottom-up
        for (size_t i = 0, last = LEAVES_N, len = LEAVES_N; depth > 0; len += 1ULL << depth)
        {
            --depth;
            while (i < len)
            {
                this->nodes[last] = {this->nodes[i].digest, this->nodes[i + 1].digest, depth};

                this->nodes[last].l = &this->nodes[i];
                this->nodes[last].r = &this->nodes[i + 1];
                this->nodes[i].f = &this->nodes[last];
                this->nodes[i + 1].f = &this->nodes[last];
                i += 2;
                ++last;
            }
        }
    }

    const uint8_t *digest() const { return root->digest; }

    const Node *get_node(size_t i) const { return &nodes[i]; }

#if __cplusplus >= 202002L
    friend std::ostream &operator<<(std::ostream &os, const FixedMTree &tree)
    {
        if (!tree.root)
            return os;

        return os << *tree.root;
    }
#endif
};
