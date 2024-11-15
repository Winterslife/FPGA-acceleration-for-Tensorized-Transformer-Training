#include <algorithm>
#include <cmath>
#include <iostream>
#include <random>
#include <type_traits>
#include <vector>
#include "MatrixMultiplication.h"
#include "TTUtils.h"
#include "Utility.h"

void TestTTImplementation(const unsigned size_n, const unsigned size_k, 
                         const unsigned size_m) {
    std::cout << "Testing TT implementation...\n";
    
    // 生成随机输入数据
    std::default_random_engine rng(kSeed);
    typename std::conditional<std::is_integral<Data_t>::value,
                            std::uniform_int_distribution<unsigned long>,
                            std::uniform_real_distribution<double>>::type
        dist(1, 10);

    // 创建输入数据
    std::vector<Data_t> input(size_n * size_k);
    std::vector<Data_t> weights(size_k * size_m);
    std::vector<Data_t> output_reference(size_n * size_m, 0);
    
    // 初始化数据
    std::for_each(input.begin(), input.end(),
                  [&dist, &rng](Data_t &in) { in = Data_t(dist(rng)); });
    std::for_each(weights.begin(), weights.end(),
                  [&dist, &rng](Data_t &in) { in = Data_t(dist(rng)); });

    // 运行参考实现
    std::cout << "Running reference implementation...\n";
    ReferenceImplementation(input.data(), weights.data(), output_reference.data(),
                          size_n, size_k, size_m);

    // 转换为TT格式
    std::cout << "Converting to TT format...\n";
    auto tt_weights = TTConverter::DenseToTT(weights, size_k, size_m);
    auto packed_tt_weights = TTConverter::PackTTCores(tt_weights);
    auto packed_input = Pack<kMemoryWidthN>(input);

    // 准备输出缓冲区
    std::vector<MemoryPackM_t> packed_output(
        (size_n * size_m + kMemoryWidthM - 1) / kMemoryWidthM);

    // 运行TT实现
    std::cout << "Running TT implementation...\n";
    TTLinearLayerKernel(packed_input.data(), packed_tt_weights.data(), 
                        packed_output.data(), 1, size_n, size_k, size_m);

    // 验证结果
    std::cout << "Verifying results...\n";
    auto output_test = Unpack<kMemoryWidthM>(packed_output);

    // 比较结果
    double max_error = 0.0;
    for(unsigned i = 0; i < size_n * size_m; ++i) {
        double error = std::abs(output_test[i] - output_reference[i]);
        max_error = std::max(max_error, error);
        
        if(error > 1e-3) {
            std::cout << "Mismatch at index " << i << ": " 
                      << output_test[i] << " vs " 
                      << output_reference[i] << "\n";
            return;
        }
    }
    
    std::cout << "TT implementation verified successfully.\n";
    std::cout << "Maximum error: " << max_error << "\n";
}

int main(int argc, char **argv) {
#ifdef MM_DYNAMIC_SIZES
    if (argc < 4 || argc > 4) {
        std::cerr << "Usage: ./TestSimulation N K M" << std::endl;
        return 1;
    }
    const unsigned size_n = std::stoul(argv[1]);
    const unsigned size_k = std::stoul(argv[2]);
    const unsigned size_m = std::stoul(argv[3]);
#else
    constexpr auto size_n = kSizeN;
    constexpr auto size_k = kSizeK;
    constexpr auto size_m = kSizeM;
#endif

    // 验证原始矩阵乘法实现
    std::cout << "\nTesting original matrix multiplication...\n";
    std::vector<Data_t> a(size_n * size_k);
    std::vector<Data_t> b(size_k * size_m);
    std::vector<Data_t> cReference(size_n * size_m, 0);

    std::default_random_engine rng(kSeed);
    typename std::conditional<std::is_integral<Data_t>::value,
                            std::uniform_int_distribution<unsigned long>,
                            std::uniform_real_distribution<double>>::type
        dist(1, 10);

    std::for_each(a.begin(), a.end(),
                  [&dist, &rng](Data_t &in) { in = Data_t(dist(rng)); });
    std::for_each(b.begin(), b.end(),
                  [&dist, &rng](Data_t &in) { in = Data_t(dist(rng)); });

    const auto aKernel = Pack<kMemoryWidthA>(a);
    const auto bKernel = Pack<kMemoryWidthM>(b);
    auto cKernel = Pack<kMemoryWidthM>(cReference);

    ReferenceImplementation(a.data(), b.data(), cReference.data(), size_n, size_k,
                          size_m);

    std::cout << "Running original implementation simulation...\n" << std::flush;
#ifdef MM_DYNAMIC_SIZES
    MatrixMultiplicationKernel(aKernel.data(), bKernel.data(), cKernel.data(),
                             size_n, size_k, size_m);
#else
    MatrixMultiplicationKernel(aKernel.data(), bKernel.data(), cKernel.data());
#endif
    std::cout << "Verifying original implementation results...\n" << std::flush;

    const auto cTest = Unpack<kMemoryWidthM>(cKernel);

    for (unsigned i = 0; i < size_n; ++i) {
        for (unsigned j = 0; j < size_m; ++j) {
            const auto testVal = make_signed<Data_t>(cTest[i * size_m + j]);
            const auto refVal = make_signed<Data_t>(cReference[i * size_m + j]);
            const Data_t diff = std::abs(testVal - refVal);
            bool mismatch;
            if (std::is_floating_point<Data_t>::value) {
                mismatch = diff / refVal > static_cast<Data_t>(1e-3);
            } else {
                mismatch = diff != 0;
            }
            if (mismatch) {
                std::cerr << "Mismatch at (" << i << ", " << j << "): " << testVal
                          << " vs. " << refVal << "\n";
                return 1;
            }
        }
    }
    std::cout << "Original implementation verified successfully.\n";

    // 测试TT实现
    TestTTImplementation(size_n, size_k, size_m);

    return 0;
}