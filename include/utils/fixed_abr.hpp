#pragma once

#include "utils/string_utils.hpp"

#include <cstring>
#include <iostream>
#include <vector>

#if __cplusplus >= 202002L
    #include <ranges>
#endif

template<typename Hash>
class FixedAbrNode
{
private:
    uint8_t digest[Hash::DIGEST_SIZE];
    FixedAbrNode *f = nullptr;
    FixedAbrNode *l = nullptr;
    FixedAbrNode *e = nullptr;
    FixedAbrNode *r = nullptr;
    size_t depth = 0;

    template<size_t, typename>
    friend class FixedAbr;

public:
    FixedAbrNode() = default;

    FixedAbrNode(const uint8_t *block, size_t depth) : depth{depth}
    {
        Hash::hash_oneblock(this->digest, block);
    }

    FixedAbrNode(const uint8_t *left, const uint8_t *right, size_t depth) : depth{depth}
    {
        uint8_t block[Hash::BLOCK_SIZE];

        memcpy(block, left, Hash::DIGEST_SIZE);
        memcpy(block + Hash::DIGEST_SIZE, right, Hash::DIGEST_SIZE);

        Hash::hash_oneblock(this->digest, block);
    }

    FixedAbrNode(const uint8_t *left, const uint8_t *right, const uint8_t *middle, size_t depth) :
        depth{depth}
    {
        uint8_t block[Hash::BLOCK_SIZE];

        memcpy(block, left, Hash::DIGEST_SIZE);
        memcpy(block + Hash::DIGEST_SIZE, right, Hash::DIGEST_SIZE);

        Hash::hash_add(block, middle);
        Hash::hash_add(block + Hash::DIGEST_SIZE, middle);
        Hash::hash_oneblock(this->digest, block);
        Hash::hash_add(this->digest, right);
    }

    const uint8_t *get_digest() const { return digest; }

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
                os << 'M';
        }
        else
            os << '*';

        os << ": " << hexdump(node.digest, Hash::DIGEST_SIZE) << '\n';
        if (node.l)
            os << *node.l;
        if (node.e)
            os << *node.e;
        if (node.r)
            os << *node.r;

        return os;
    }
};


template<size_t height, typename Hash>
class FixedAbr
{
private:
    using Node = FixedAbrNode<Hash>;

    /*
    Nodes layout is as follows:
    - The first LEAVES_N nodes contain the leaves
    - The next INTERNAL_N nodes contain the "internal leaves" (aka middle nodes)
    - The remaining nodes are the internal nodes of the tree
    */
    std::vector<Node> nodes{};
    Node *root = nullptr;

public:
    static constexpr size_t INTERNAL_N = (1ULL << (height - 2)) - 1;
    static constexpr size_t LEAVES_N = 1ULL << (height - 1);
    static constexpr size_t INPUT_N = LEAVES_N + INTERNAL_N;
    static constexpr size_t INPUT_SIZE = INPUT_N * Hash::BLOCK_SIZE;

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
        if (sz / Hash::BLOCK_SIZE != INPUT_N || sz % Hash::BLOCK_SIZE != 0)
        {
            std::cerr << "FixedAbr: Bad size of input data\n";
            return;
        }

        const uint8_t *data = (const uint8_t *)vdata;
        size_t depth = height - 1;
        size_t last = 0;

        // add leaves and middle nodes
        for (size_t i = 0; i < INPUT_N; ++i)
            this->nodes[last++] = Node{data + Hash::BLOCK_SIZE * i, depth};


        // build first internal layer (only hash, no addition)
        --depth;
        for (size_t i = 0; i < LEAVES_N; i += 2)
        {
            this->nodes[last] = Node{this->nodes[i].digest, this->nodes[i + 1].digest, depth};

            this->nodes[last].l = &this->nodes[i];
            this->nodes[last].r = &this->nodes[i + 1];
            this->nodes[i].f = &this->nodes[last];
            this->nodes[i + 1].f = &this->nodes[last];
            ++last;
        }

        for (size_t i = INPUT_N, len = i + LEAVES_N / 2, e = LEAVES_N; depth > 0;
             len += 1ULL << depth)
        {
            --depth;
            while (i < len)
            {
                this->nodes[last] = Node{this->nodes[i].digest, this->nodes[i + 1].digest,
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

    const uint8_t *digest() const { return root->digest; }

    const Node *get_node(size_t i) const { return &nodes[i]; }

    friend std::ostream &operator<<(std::ostream &os, const FixedAbr &tree)
    {
        if (!tree.root)
            return os;

        return os << *tree.root;
    }
};
