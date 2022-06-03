#pragma once

#include "utils/string_utils.hpp"

#include <cstring>
#include <iostream>
#include <omp.h>
#include <vector>

#if __cplusplus >= 202002L
    #include <ranges>
#endif

template<typename Hash>
class FixedMTreeNode
{
private:
    uint8_t digest[Hash::DIGEST_SIZE];
    FixedMTreeNode *f = nullptr;
    FixedMTreeNode *l = nullptr;
    FixedMTreeNode *r = nullptr;
    size_t depth = 0;

    template<size_t, typename>
    friend class FixedMTree;

public:
    FixedMTreeNode() = default;

    FixedMTreeNode(const uint8_t *block, size_t depth) : depth{depth}
    {
        Hash::hash_oneblock(this->digest, block);
    }

    FixedMTreeNode(const uint8_t *left, const uint8_t *right, size_t depth) : depth{depth}
    {
        uint8_t block[Hash::BLOCK_SIZE]{};

        memcpy(block, left, Hash::DIGEST_SIZE);
        memcpy(block + Hash::DIGEST_SIZE, right, Hash::DIGEST_SIZE);

        Hash::hash_oneblock(this->digest, block);
    }

    const uint8_t *get_digest() const { return digest; }

    friend std::ostream &operator<<(std::ostream &os, const FixedMTreeNode &node)
    {
        for (size_t i = 0; i < node.depth; ++i)
            os << "    ";

        os << "*: " << hexdump(node.digest, Hash::DIGEST_SIZE, false, 64) << '\n';

        if (node.l)
            os << *node.l;
        if (node.r)
            os << *node.r;

        return os;
    }
};


template<size_t height, typename Hash>
class FixedMTree
{
public:
    using Node = FixedMTreeNode<Hash>;

private:
    static constexpr size_t LEAVES_N = 1ULL << (height - 1);

    std::vector<Node> nodes{};
    Node *root = nullptr;

public:
    static constexpr size_t INPUT_SIZE = LEAVES_N * Hash::BLOCK_SIZE;

    FixedMTree() = default;
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
        if (sz / Hash::BLOCK_SIZE != LEAVES_N || sz % Hash::BLOCK_SIZE != 0)
        {
            std::cerr << "FixedMTree: Bad size of input data\n";
            return;
        }

        const uint8_t *data = (const uint8_t *)vdata;
        size_t depth = height - 1;

        if constexpr (0) // serial code
        {

            // add leaves
            for (size_t i = 0; i < LEAVES_N; ++i)
                this->nodes[i] = {data + Hash::BLOCK_SIZE * i, depth};

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
        else // parallel code
        {
#pragma omp parallel for
            // add leaves
            for (size_t i = 0; i < LEAVES_N; ++i)
                this->nodes[i] = {data + Hash::BLOCK_SIZE * i, depth};

            // build tree bottom-up
            for (size_t i = 0, last = LEAVES_N, len = LEAVES_N; depth > 0; len += 1ULL << depth)
            {
                size_t iters = (len - i) >> 1;
                --depth;
#pragma omp parallel for
                for (size_t j = 0; j < iters; ++j)
                {
                    size_t k = i + j * 2;
                    size_t l = last + j;
                    this->nodes[l] = {this->nodes[k].digest, this->nodes[k + 1].digest, depth};

                    this->nodes[l].l = &this->nodes[k];
                    this->nodes[l].r = &this->nodes[k + 1];
                    this->nodes[k].f = &this->nodes[l];
                    this->nodes[k + 1].f = &this->nodes[l];
                }
                last += iters;
                i += iters * 2;
            }
        }
    }

    const uint8_t *digest() const
    {
        return root->digest;
    }

    const Node *get_node(size_t i) const
    {
        return &nodes[i];
    }

    friend std::ostream &operator<<(std::ostream &os, const FixedMTree &tree)
    {
        if (!tree.root)
            return os;

        return os << *tree.root;
    }
};
