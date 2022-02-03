#define CURVE_ALT_BN128

#include "gadget/mtree_gadget.hpp"
#include "fixed_mtree.hpp"
#include "utils/measure.hpp"

#include <libsnark/common/default_types/r1cs_ppzksnark_pp.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_ppzksnark/r1cs_ppzksnark.hpp>

#include <libff/common/default_types/ec_pp.hpp>

#include <fstream>
#include <omp.h>

static constexpr size_t TRANS_IDX = 0;
static constexpr size_t TREE_HEIGHT = 4;

using ppT = libsnark::default_r1cs_ppzksnark_pp;
using FieldT = libff::Fr<ppT>;

template<size_t tree_height, typename Hash>
bool test_mtree()
{
    static constexpr size_t tree_leaves = 1ULL << (tree_height - 1);

    static std::mt19937 rng{std::random_device{}()};

    libsnark::protoboard<FieldT> pb;

    // Build tree
    std::vector<uint8_t> data(tree_leaves * Hash::BLOCK_SIZE);
    std::generate(data.begin(), data.end(), std::ref(rng));
    FixedMTree<tree_height, Hash> tree{data.begin(), data.end()};

    // Extract leftmost leaf
    libff::bit_vector my_trans_bv(Hash::DIGEST_SIZE * CHAR_BIT);
    unpack_bits(my_trans_bv, tree.get_node(TRANS_IDX)->get_digest());

    // Extract needed nodes
    std::vector<libff::bit_vector> hash_bv(tree_height,
                                           libff::bit_vector(Hash::DIGEST_SIZE * CHAR_BIT));
    for (size_t i = 0, j = 1; i < tree_height - 1; ++i, j += 1ULL << (tree_height - i))
        unpack_bits(hash_bv[i], tree.get_node(j)->get_digest());
    unpack_bits(hash_bv.back(), tree.digest());

    // Test Gadget
    libsnark::r1cs_ppzksnark_proof<ppT> proof;
    bool result;

    MTree_Gadget<FieldT, Hash> gadget{pb, tree_height, TRANS_IDX, FMT("merkle_tree")};

    gadget.generate_r1cs_constraints();
    auto keypair = libsnark::r1cs_ppzksnark_generator<ppT>(pb.get_constraint_system());

    gadget.generate_r1cs_witness(my_trans_bv, hash_bv, TRANS_IDX);

    proof = libsnark::r1cs_ppzksnark_prover<ppT>(keypair.pk, pb.primary_input(),
                                                 pb.auxiliary_input());

    result = libsnark::r1cs_ppzksnark_verifier_strong_IC<ppT>(keypair.vk, pb.primary_input(),
                                                              proof);

    return result;
}

static bool run_tests()
{
    bool check = true;
    bool all_check = true;
    std::cout << std::boolalpha;
    libff::inhibit_profiling_info = true;
    libff::inhibit_profiling_counters = true;

    libsnark::default_r1cs_ppzksnark_pp::init_public_params();

    std::cout << "Hashing SHA256... ";
    {
        check = test_mtree<TREE_HEIGHT, Sha256>();
    }
    std::cout << check << '\n';
    all_check &= check;

    std::cout << "Hashing SHA512... ";
    {
        check = test_mtree<TREE_HEIGHT, Sha256>();
    }
    std::cout << check << '\n';
    all_check &= check;

    return all_check;
}

int main()
{
    std::cout << "\n==== Testing MerkleTree Gadget ====\n";

    bool all_check = run_tests();

    std::cout << "\n==== " << (all_check ? "ALL TESTS SUCCEEDED" : "SOME TESTS FAILED")
              << " ====\n\n";

#ifdef MEASURE_PERFORMANCE
#endif

    return 0;
}
