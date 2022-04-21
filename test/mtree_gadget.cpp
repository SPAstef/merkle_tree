#define CURVE_ALT_BN128

#include "gadget/mtree_gadget.hpp"
#include "gadget/mimc256/mimc256_gadget.hpp"
#include "gadget/mimc512f/mimc512f_gadget.hpp"
#include "gadget/sha256/sha256_gadget.hpp"
#include "gadget/sha512/sha512_gadget.hpp"
#include "utils/fixed_mtree.hpp"
#include "utils/measure.hpp"
#include "utils/mimc256.hpp"
#include "utils/mimc512f.hpp"
#include "utils/sha256.hpp"
#include "utils/sha512.hpp"

#include <libsnark/common/default_types/r1cs_ppzksnark_pp.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_ppzksnark/r1cs_ppzksnark.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_ppzksnark/r1cs_ppzksnark.tcc>

#include <libff/common/default_types/ec_pp.hpp>

#include <fstream>
#include <omp.h>

static constexpr size_t TRANS_IDX = 0;
static constexpr size_t TREE_HEIGHT = 4;

using ppT = libsnark::default_r1cs_ppzksnark_pp;
using FieldT = libff::Fr<ppT>;

using GadSha256 = libsnark::sha256_two_to_one_hash_gadget<FieldT>;
using GadSha512 = libsnark::sha512::sha512_two_to_one_hash_gadget<FieldT>;

using GadMimc256 = mimc256_two_to_one_hash_gadget<FieldT>;
//using GadMimc512F = mimc512f_two_to_one_hash_gadget<FieldT>;

template<size_t tree_height, typename Hash, typename GadHash>
bool test_mtree()
{
    using DigVar = libsnark::digest_variable<FieldT>;

    static constexpr size_t DIGEST_VARS = GadHash::DIGEST_VARS;

    static std::mt19937 rng{std::random_device{}()};

    // Build tree
    std::vector<uint8_t> data(FixedMTree<tree_height, Hash>::INPUT_SIZE);
    std::generate(data.begin(), data.end(), std::ref(rng));
    FixedMTree<tree_height, Hash> tree{data.begin(), data.end()};

    // Extract our transaction
    libff::bit_vector trans_bv(DIGEST_VARS);
    unpack_bits(trans_bv, tree.get_node(TRANS_IDX)->get_digest());

    // Extract other transaction/middle nodes
    std::vector<libff::bit_vector> other_bv(tree_height - 1, libff::bit_vector(DIGEST_VARS));
    for (size_t i = 0, j = 1; i < other_bv.size(); ++i, j += 1ULL << (tree_height - i))
        unpack_bits(other_bv[i], tree.get_node(j)->get_digest());

    // Extract output node
    libff::bit_vector out_bv(DIGEST_VARS);
    unpack_bits(out_bv, tree.digest());

    // Test Gadget
    libsnark::protoboard<FieldT> pb;
    DigVar out{pb, DIGEST_VARS, FMT("out")};
    DigVar trans{pb, DIGEST_VARS, FMT("trans")};
    std::vector<DigVar> other;

    for (size_t i = 0; i < tree_height - 1; ++i)
        other.emplace_back(pb, DIGEST_VARS, FMT("other_%llu", i));

    pb.set_input_sizes(DIGEST_VARS);
    MTree_Gadget<FieldT, GadHash> gadget{pb, out, trans, other, TRANS_IDX, FMT("merkle_tree")};

    out.generate_r1cs_constraints();
    trans.generate_r1cs_constraints();
    for (size_t i = 0; i < other.size(); ++i)
        other[i].generate_r1cs_constraints();
    gadget.generate_r1cs_constraints();

    //    out.generate_r1cs_witness(out_bv);
    trans.generate_r1cs_witness(trans_bv);
    for (size_t i = 0; i < other.size(); ++i)
        other[i].generate_r1cs_witness(other_bv[i]);
    gadget.generate_r1cs_witness();

    bool result;
    auto keypair = libsnark::r1cs_ppzksnark_generator<ppT>(pb.get_constraint_system());
    auto proof = libsnark::r1cs_ppzksnark_prover<ppT>(keypair.pk, pb.primary_input(),
                                                      pb.auxiliary_input());

    result = libsnark::r1cs_ppzksnark_verifier_strong_IC<ppT>(keypair.vk, pb.primary_input(),
                                                              proof);

    return result;
}

template<size_t tree_height, typename Hash, typename GadHash>
bool test_pmtree()
{
    using DigVar = field_variable<FieldT>;

    static constexpr size_t DIGEST_VARS = GadHash::DIGEST_VARS;

    static std::mt19937 rng{std::random_device{}()};

    // Build tree
    std::vector<uint8_t> data(FixedMTree<tree_height, Hash>::INPUT_SIZE);
    std::generate(data.begin(), data.end(), std::ref(rng));
    FixedMTree<tree_height, Hash> tree{data.begin(), data.end()};

    // Test Gadget
    libsnark::protoboard<FieldT> pb;
    DigVar out{pb, DIGEST_VARS, FMT("out")};
    DigVar trans{pb, DIGEST_VARS, FMT("trans")};
    std::vector<DigVar> other;

    for (size_t i = 0; i < tree_height - 1; ++i)
        other.emplace_back(pb, DIGEST_VARS, FMT("other_%llu", i));

    pb.set_input_sizes(DIGEST_VARS);
    MTree_Gadget<FieldT, GadHash> gadget{pb, out, trans, other, TRANS_IDX, FMT("merkle_tree")};

    out.generate_r1cs_constraints();
    trans.generate_r1cs_constraints();
    for (size_t i = 0; i < other.size(); ++i)
        other[i].generate_r1cs_constraints();
    gadget.generate_r1cs_constraints();

    //    out.generate_r1cs_witness(tree.digest());
    trans.generate_r1cs_witness(tree.get_node(TRANS_IDX)->get_digest());
    for (size_t i = 0, j = 1; i < other.size(); ++i, j += 1ULL << (tree_height - i))
        other[i].generate_r1cs_witness(tree.get_node(j)->get_digest());
    gadget.generate_r1cs_witness();

    bool result;
    auto keypair = libsnark::r1cs_ppzksnark_generator<ppT>(pb.get_constraint_system());
    auto proof = libsnark::r1cs_ppzksnark_prover<ppT>(keypair.pk, pb.primary_input(),
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

    ppT::init_public_params();

    std::cout << "SHA256... ";
    std::cout.flush();
    {
        check = test_mtree<TREE_HEIGHT, Sha256, GadSha256>();
    }
    std::cout << check << '\n';
    all_check &= check;

    std::cout << "SHA512... ";
    std::cout.flush();
    {
        check = test_mtree<TREE_HEIGHT, Sha512, GadSha512>();
    }
    std::cout << check << '\n';
    all_check &= check;

    std::cout << "MiMC256... ";
    std::cout.flush();
    {
        check = test_pmtree<TREE_HEIGHT, Mimc256, GadMimc256>();
    }
    std::cout << check << '\n';
    all_check &= check;
    /*
    std::cout << "MiMC512f... ";
    std::cout.flush();
    {
        check = test_mtree<TREE_HEIGHT, Mimc512F, GadMimc512F>();
    }
    std::cout << check << '\n';
    all_check &= check;
*/

    return all_check;
}

int main()
{
    std::cout << "\n==== Testing MerkleTree Gadget ====\n";

    bool all_check = run_tests();

    std::cout << "\n==== " << (all_check ? "ALL TESTS SUCCEEDED" : "SOME TESTS FAILED")
              << " ====\n\n";

#ifdef MEASURE_PERFORMANCE
    std::cout << "Measuring SHA256 performance:\n";
    measure([]() { test_mtree<TREE_HEIGHT, Sha256, GadSha256>(); });
    std::cout << "Measuring SHA512 performance:\n";
    measure([]() { test_mtree<TREE_HEIGHT, Sha512, GadSha512>(); });
#endif

    return 0;
}
