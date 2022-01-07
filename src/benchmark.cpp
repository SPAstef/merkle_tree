#define CURVE_ALT_BN128

#include "fixed_mtree.hpp"
#include "gadget/mtree_gadget.hpp"
#include "utils/measure.hpp"

#include <libsnark/common/default_types/r1cs_gg_ppzksnark_pp.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_gg_ppzksnark/r1cs_gg_ppzksnark.hpp>

#include <libff/common/default_types/ec_pp.hpp>

#include <fstream>
#include <omp.h>

struct GadgetTiming
{
    double gen;
    double ver;
    bool ans;
};

static constexpr size_t TRANS_IDX = 0;

template<typename ppT, Sha_version sha_version>
GadgetTiming run_inner_circuit(size_t tree_height, const libff::bit_vector &my_trans_bv,
                               const std::vector<libff::bit_vector> &hash_bv)
{
    std::pair<double, double> timing;
    libsnark::r1cs_gg_ppzksnark_proof<ppT> proof;
    GadgetTiming res;

    libff::print_header("R1CS GG-ppzkSNARK Generator");
    MTree_Gadget<ppT, sha_version> tree{tree_height, TRANS_IDX};
    printf("\n");
    libff::print_indent();
    libff::print_mem("after generator");

    libff::print_header("R1CS GG-ppzkSNARK Prover");
    res.gen = measure(
        [&]()
        {
            proof = tree.generate_proof(my_trans_bv, hash_bv, TRANS_IDX);
            printf("\n");
            libff::print_indent();
            libff::print_mem("after prover");
        });

    libff::print_header("R1CS GG-ppzkSNARK Verifier");
    res.ver = measure([&]() { res.ans = tree.verify_proof(proof, hash_bv.back()); });

    return res;
}

template<typename ppT, size_t tree_height>
void run_mtree_circuit()
{
    static constexpr size_t tree_leaves = 1ULL << (tree_height - 1);

    // Generate random data
    std::mt19937 rng{std::random_device{}()};
    GadgetTiming sha256_time;
    GadgetTiming sha512_time;

    std::ofstream result_file{"results.txt", std::ios::app};

    {
        // Build tree
        std::vector<uint8_t> data(tree_leaves * ::sha256::BLOCK_SIZE);
        std::generate(data.begin(), data.end(), std::ref(rng));
        FixedMTree<tree_height, Sha_version::SHA256> tree{data.begin(), data.end()};

        // Extract leftmost leaf
        libff::bit_vector my_trans_bv(sha256::DIGEST_SIZE * CHAR_BIT);
        unpack_bits(my_trans_bv, tree.get_node(TRANS_IDX)->get_digest());

        // Extract needed nodes
        std::vector<libff::bit_vector> hash_bv(tree_height,
                                               libff::bit_vector(sha256::DIGEST_SIZE * CHAR_BIT));
        for (size_t i = 0, j = 1; i < tree_height - 1; ++i, j += 1ULL << (tree_height - i))
            unpack_bits(hash_bv[i], tree.get_node(j)->get_digest());
        unpack_bits(hash_bv.back(), tree.digest());

        // Measure performance
        sha256_time = run_inner_circuit<ppT, Sha_version::SHA256>(tree_height, my_trans_bv,
                                                                  hash_bv);
    }

    {
        // Build Tree
        std::vector<uint8_t> data(tree_leaves * ::sha512::BLOCK_SIZE);
        std::generate(data.begin(), data.end(), std::ref(rng));
        FixedMTree<tree_height, Sha_version::SHA512> tree{data.begin(), data.end()};

        // Extract leftmost leaf
        libff::bit_vector my_trans_bv(::sha512::DIGEST_SIZE * CHAR_BIT);
        unpack_bits(my_trans_bv, tree.get_node(TRANS_IDX)->get_digest());

        // Extract needed nodes
        std::vector<libff::bit_vector> hash_bv(tree_height,
                                               libff::bit_vector(::sha512::DIGEST_SIZE * CHAR_BIT));
        for (size_t i = 0, j = 1; i < tree_height - 1; ++i, j += 1ULL << (tree_height - i))
            unpack_bits(hash_bv[i], tree.get_node(j)->get_digest());
        unpack_bits(hash_bv.back(), tree.digest());

        // Measure performance
        sha512_time = run_inner_circuit<ppT, Sha_version::SHA512>(tree_height, my_trans_bv,
                                                                  hash_bv);
    }
    result_file << tree_height << '\t'                                //
                << sha256_time.gen << '\t' << sha256_time.ver << '\t' //
                << sha512_time.gen << '\t' << sha512_time.ver << '\n';
    result_file.flush();
}

int main()
{
    libsnark::default_r1cs_gg_ppzksnark_pp::init_public_params();

    run_mtree_circuit<libsnark::default_r1cs_gg_ppzksnark_pp, 28>();

    return 0;
}
