#define CURVE_ALT_BN128

#include "utils/sha256.hpp"
#include "utils/sha512.hpp"
#include "gadget/abr_gadget.hpp"
#include "utils/fixed_abr.hpp"
#include "utils/measure.hpp"

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
using DigVar = libsnark::digest_variable<FieldT>;

using GadSha256 = libsnark::sha256_two_to_one_hash_gadget<FieldT>;
using GadSha512 = libsnark::sha512::sha512_two_to_one_hash_gadget<FieldT>;

template<size_t tree_height, typename Hash, typename GadHash>
bool test_tRee()
{
    using Abr = FixedAbr<tree_height, Hash>;

    static constexpr size_t DIGEST_BITS = Hash::DIGEST_SIZE * CHAR_BIT;

    static std::mt19937 rng{std::random_device{}()};


    // Build tree
    std::vector<uint8_t> data(Abr::INPUT_SIZE);
    //    std::generate(data.begin(), data.end(), std::ref(rng));
    Abr tree{data.begin(), data.end()};

    // Extract our transaction
    libff::bit_vector trans_bv(DIGEST_BITS);
    unpack_bits(trans_bv, tree.get_node(TRANS_IDX)->get_digest());

    // Extract other transaction node
    libff::bit_vector other_bv(DIGEST_BITS);
    unpack_bits(trans_bv, tree.get_node(TRANS_IDX + 1)->get_digest());

    // Extract middle nodes
    std::vector<libff::bit_vector> middle_bv(tree_height - 1, libff::bit_vector(DIGEST_BITS));
    for (size_t i = 0, j = Abr::LEAVES_N; i < middle_bv.size();
         ++i, j += 1ULL << (tree_height - 2 - i))
        unpack_bits(middle_bv[i], tree.get_node(j)->get_digest());

    // Extract otherx nodes
    std::vector<libff::bit_vector> otherx_bv(tree_height - 1, libff::bit_vector(DIGEST_BITS));
    for (size_t i = 0, j = Abr::INPUT_N; i < otherx_bv.size();
         ++i, j += 1ULL << (tree_height - 1 - i))
        unpack_bits(otherx_bv[i], tree.get_node(j)->get_digest());

    // Extract output node
    libff::bit_vector out_bv(DIGEST_BITS);
    unpack_bits(out_bv, tree.digest());

    // Test Gadget
    libsnark::protoboard<FieldT> pb;
    DigVar out{pb, DIGEST_BITS, FMT("out")};
    DigVar trans{pb, DIGEST_BITS, FMT("trans")};
    DigVar other{pb, DIGEST_BITS, FMT("trans")};

    std::vector<DigVar> middle;
    for (size_t i = 0; i < tree_height - 1; ++i)
        middle.emplace_back(pb, DIGEST_BITS, FMT("middle_%llu", i));

    std::vector<DigVar> otherx;
    for (size_t i = 0; i < tree_height - 1; ++i)
        otherx.emplace_back(pb, DIGEST_BITS, FMT("otherx_%llu", i));

    pb.set_input_sizes(DIGEST_BITS);
    ABR_Gadget<FieldT, Hash, GadHash> gadget{
        pb, out, trans, other, middle, otherx, TRANS_IDX, tree_height, FMT("merkle_tree")};

    out.generate_r1cs_constraints();
    trans.generate_r1cs_constraints();
    other.generate_r1cs_constraints();
    for (auto &&x : middle)
        x.generate_r1cs_constraints();
    for (auto &&x : otherx)
        x.generate_r1cs_constraints();
    gadget.generate_r1cs_constraints();

    out.generate_r1cs_witness(out_bv);
    trans.generate_r1cs_witness(trans_bv);
    other.generate_r1cs_witness(other_bv);

    for (size_t i = 0; i < middle.size(); ++i)
        middle[i].generate_r1cs_witness(middle_bv[i]);

    for (size_t i = 0; i < otherx.size(); ++i)
        otherx[i].generate_r1cs_witness(otherx_bv[i]);

    gadget.generate_r1cs_witness(trans_bv, other_bv, middle_bv, otherx_bv);

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
        check = test_tRee<TREE_HEIGHT, Sha256, GadSha256>();
    }
    std::cout << check << '\n';
    all_check &= check;

    std::cout << "SHA512... ";
    std::cout.flush();
    {
        check = test_tRee<TREE_HEIGHT, Sha512, GadSha512>();
    }
    std::cout << check << '\n';
    all_check &= check;

    return all_check;
}

int main()
{
    std::cout << "\n==== Testing ABR Gadget ====\n";

    bool all_check = run_tests();

    std::cout << "\n==== " << (all_check ? "ALL TESTS SUCCEEDED" : "SOME TESTS FAILED")
              << " ====\n\n";

#ifdef MEASURE_PERFORMANCE
#endif

    return 0;
}
