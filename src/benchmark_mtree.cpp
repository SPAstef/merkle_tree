#define CURVE_ALT_BN128

#include "gadget/mimc256/mimc256_gadget.hpp"
#include "gadget/mimc512f/mimc512f_gadget.hpp"
#include "gadget/mimc512f2k/mimc512f2k_gadget.hpp"
#include "gadget/mtree_gadget.hpp"
#include "gadget/sha256/sha256_gadget.hpp"
#include "gadget/sha512/sha512_gadget.hpp"
#include "utils/fixed_mtree.hpp"
#include "utils/measure.hpp"


#include <libsnark/common/default_types/r1cs_ppzksnark_pp.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_ppzksnark/r1cs_ppzksnark.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_ppzksnark/r1cs_ppzksnark.tcc>

#include <libff/common/default_types/ec_pp.hpp>

#include <fstream>
#include <omp.h>

static constexpr size_t TRANS_IDX = 0;
static constexpr size_t MIN_TREE_HEIGHT = 4;
static constexpr size_t MAX_TREE_HEIGHT = 17;

using ppT = libsnark::default_r1cs_ppzksnark_pp;
using FieldT = libff::Fr<ppT>;

using GadSha256 = libsnark::sha256_two_to_one_hash_gadget<FieldT>;
using GadSha512 = libsnark::sha512::sha512_two_to_one_hash_gadget<FieldT>;
using GadMimc256 = mimc256_two_to_one_hash_gadget<FieldT>;
using GadMimc512F = mimc512f_two_to_one_hash_gadget<FieldT>;
using GadMimc512F2K = mimc512f2k_two_to_one_hash_gadget<FieldT>;

std::ofstream log_file{"log.txt"};

template<size_t tree_height, typename Hash, typename GadHash>
bool test_mtree()
{
    using GadTree = MTree_Gadget<FieldT, GadHash>;
    using DigVar = typename GadTree::DigVar;
    using FixTree = FixedMTreePath<tree_height, Hash>;

    static constexpr size_t DIGEST_VARS = GadHash::DIGEST_VARS;

    static std::mt19937 rng{std::random_device{}()};

    double elap = 0;

    // Build tree
    libff::bit_vector trans_bv;
    std::vector<libff::bit_vector> other_bv;
    libff::bit_vector out_bv;

    elap = measure(
        [&]()
        {
            std::vector<uint8_t> data(FixTree::INPUT_SIZE);
            std::generate(data.begin(), data.end(), std::ref(rng));
            FixTree tree{data.begin(), data.end()};

            // Extract our transaction
            trans_bv.resize(DIGEST_VARS);
            unpack_bits(trans_bv, tree.get_node(TRANS_IDX)->get_digest());

            // Extract other transaction/middle nodes
            other_bv.resize(tree_height - 1);
            std::fill(other_bv.begin(), other_bv.end(), libff::bit_vector(DIGEST_VARS));

            for (size_t i = 0; i < other_bv.size(); ++i)
                unpack_bits(other_bv[i], tree.get_node(TRANS_IDX + i + 1)->get_digest());

            // Extract output node
            out_bv.resize(DIGEST_VARS);
            unpack_bits(out_bv, tree.digest());
        },
        1, 1, "Tree Generation", false);
    log_file << elap << '\t';
    log_file.flush();

    // Test Gadget
    libsnark::protoboard<FieldT> pb;

    std::vector<DigVar> out;
    std::vector<DigVar> trans;
    std::vector<DigVar> other;
    std::vector<GadTree> gadget;

    elap = measure(
        [&]()
        {
            out.emplace_back(pb, DIGEST_VARS, FMT("out"));
            trans.emplace_back(pb, DIGEST_VARS, FMT("trans"));

            for (size_t i = 0; i < tree_height - 1; ++i)
                other.emplace_back(pb, DIGEST_VARS, FMT("other_%llu", i));

            pb.set_input_sizes(DIGEST_VARS);
            gadget.emplace_back(pb, out[0], trans[0], other, TRANS_IDX, FMT("merkle_tree"));
        },
        1, 1, "Gadget construction", false);
    log_file << elap << '\t';
    log_file.flush();

    elap = measure(
        [&]()
        {
            out[0].generate_r1cs_constraints();
            trans[0].generate_r1cs_constraints();
            for (size_t i = 0; i < other.size(); ++i)
                other[i].generate_r1cs_constraints();
            gadget[0].generate_r1cs_constraints();
        },
        1, 1, "Constraint generation", false);
    log_file << elap << '\t';
    log_file.flush();

    elap = measure(
        [&]()
        {
            out[0].generate_r1cs_witness(out_bv);
            trans[0].generate_r1cs_witness(trans_bv);
            for (size_t i = 0; i < other.size(); ++i)
                other[i].generate_r1cs_witness(other_bv[i]);
            gadget[0].generate_r1cs_witness();
        },
        1, 1, "Witness generation", false);
    log_file << elap << '\t';
    log_file.flush();

    bool result;
    std::vector<libsnark::r1cs_ppzksnark_keypair<ppT>> keypair;
    libsnark::r1cs_ppzksnark_proof<ppT> proof;

    elap = measure(
        [&]() {
            keypair.emplace_back(
                libsnark::r1cs_ppzksnark_generator<ppT>(pb.get_constraint_system()));
        },
        1, 1, "Key generation", false);
    log_file << elap << '\t';
    log_file.flush();

    elap = measure(
        [&]()
        {
            proof = libsnark::r1cs_ppzksnark_prover<ppT>(keypair[0].pk, pb.primary_input(),
                                                         pb.auxiliary_input());
        },
        1, 1, "Proof generation", false);
    log_file << elap << '\t';
    log_file.flush();

    elap = measure(
        [&]()
        {
            result = libsnark::r1cs_ppzksnark_verifier_strong_IC<ppT>(keypair[0].vk,
                                                                      pb.primary_input(), proof);
        },
        1, 1, "Proof verification", false);
    log_file << elap << '\n';
    log_file.flush();


    return result;
}

template<size_t tree_height, typename Hash, typename GadHash>
bool test_pmtree()
{
    using GadTree = MTree_Gadget<FieldT, GadHash>;
    using DigVar = typename GadTree::DigVar;
    using FixTree = FixedMTreePath<tree_height, Hash>;

    static constexpr size_t DIGEST_VARS = GadHash::DIGEST_VARS;

    static std::mt19937 rng{std::random_device{}()};
    double elap = 0;

    // Build tree
    FixTree tree;
    elap = measure(
        [&]()
        {
            std::vector<uint8_t> data(FixTree::INPUT_SIZE);
            std::generate(data.begin(), data.end(), std::ref(rng));
            tree = FixTree{data.begin(), data.end()};
        },
        1, 1, "", false);
    log_file << elap << '\t';
    log_file.flush();

    // Build Gadget
    libsnark::protoboard<FieldT> pb;
    std::vector<DigVar> out;
    std::vector<DigVar> trans;
    std::vector<DigVar> other;
    std::vector<GadTree> gadget;

    elap = measure(
        [&]()
        {
            out.emplace_back(pb, DIGEST_VARS, FMT("out"));
            trans.emplace_back(pb, DIGEST_VARS, FMT("trans"));

            for (size_t i = 0; i < tree_height - 1; ++i)
                other.emplace_back(pb, DIGEST_VARS, FMT("other_%llu", i));

            pb.set_input_sizes(1);
            gadget.emplace_back(pb, out[0], trans[0], other, TRANS_IDX, FMT("merkle_tree"));
        },
        1, 1, "", false);
    log_file << elap << '\t';
    log_file.flush();

    // Generate constraints
    elap = measure([&]() { gadget[0].generate_r1cs_constraints(); }, 1, 1, "", false);
    log_file << elap << '\t';
    log_file.flush();

    // Generate witnesses
    elap = measure(
        [&]()
        {
            out[0].generate_r1cs_witness(tree.digest());
            trans[0].generate_r1cs_witness(tree.get_node(TRANS_IDX)->get_digest());

            for (size_t i = 0; i < other.size(); ++i)
                other[i].generate_r1cs_witness(tree.get_node(TRANS_IDX + i + 1)->get_digest());

            gadget[0].generate_r1cs_witness();
        },
        1, 1, "", false);
    log_file << elap << '\t';
    log_file.flush();

    // Generate key
    bool result;
    std::vector<libsnark::r1cs_ppzksnark_keypair<ppT>> keypair;
    elap = measure(
        [&]() {
            keypair.emplace_back(
                libsnark::r1cs_ppzksnark_generator<ppT>(pb.get_constraint_system()));
        },
        1, 1, "", false);
    log_file << elap << '\t';
    log_file.flush();

    // Generate proof
    libsnark::r1cs_ppzksnark_proof<ppT> proof;
    elap = measure(
        [&]()
        {
            proof = libsnark::r1cs_ppzksnark_prover<ppT>(keypair[0].pk, pb.primary_input(),
                                                         pb.auxiliary_input());
        },
        1, 1, "", false);
    log_file << elap << '\t';
    log_file.flush();

    // Verify proof
    elap = measure(
        [&]()
        {
            result = libsnark::r1cs_ppzksnark_verifier_strong_IC<ppT>(keypair[0].vk,
                                                                      pb.primary_input(), proof);
        },
        1, 1, "", false);
    log_file << elap << '\n';
    log_file.flush();


    return result;
}

template<size_t first, size_t last, typename Hash, typename GadHash>
void test_mtree_from(const char *name)
{
    if constexpr (first < last)
    {
        log_file << first << '\t';
        log_file.flush();

        test_mtree<first, Hash, GadHash>();

        test_mtree_from<first + 1, last, Hash, GadHash>(name);
    }
}

template<size_t first, size_t last, typename Hash, typename GadHash>
void test_pmtree_from(const char *name)
{
    if constexpr (first < last)
    {
        log_file << first << '\t';
        log_file.flush();

        test_pmtree<first, Hash, GadHash>();

        test_pmtree_from<first + 1, last, Hash, GadHash>(name);
    }
}

int main()
{

    log_file << std::boolalpha;
    libff::inhibit_profiling_info = true;
    libff::inhibit_profiling_counters = true;

    ppT::init_public_params();
    log_file << "SHA256\n";
    log_file << "Height\tTree\tGadget\tConstraint\tWitness\tKey\tProof\tVerify\n";
    test_mtree_from<MIN_TREE_HEIGHT, MAX_TREE_HEIGHT, Sha256, GadSha256>("SHA256");

    log_file << "SHA512\n";
    log_file << "Height\tTree\tGadget\tConstraint\tWitness\tKey\tProof\tVerify\n";
    test_mtree_from<MIN_TREE_HEIGHT, MAX_TREE_HEIGHT, Sha512, GadSha512>("SHA512");

    log_file << "MiMC256\n";
    log_file << "Height\tTree\tGadget\tConstraint\tWitness\tKey\tProof\tVerify\n";
    test_pmtree_from<MIN_TREE_HEIGHT, MAX_TREE_HEIGHT, Mimc256, GadMimc256>("MiMC256");

    log_file << "MiMC512F\n";
    log_file << "Height\tTree\tGadget\tConstraint\tWitness\tKey\tProof\tVerify\n";
    test_pmtree_from<MIN_TREE_HEIGHT, MAX_TREE_HEIGHT, Mimc512F, GadMimc512F>("MiMC512F");

    log_file << "MiMC512f2k\n";
    log_file << "Height\tTree\tGadget\tConstraint\tWitness\tKey\tProof\tVerify\n";
    test_pmtree_from<MIN_TREE_HEIGHT, MAX_TREE_HEIGHT, Mimc512F2K, GadMimc512F2K>("MiMC512f2k");
    return 0;
}
