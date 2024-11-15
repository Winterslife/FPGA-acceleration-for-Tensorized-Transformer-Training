#pragma once

#include "TTConfig.h"
#include "MatrixMultiplication.h"
#include <chrono>
#include <vector>
#include <iostream>

class TTBenchmark {
public:
    struct BenchmarkResult {
        double execution_time_ms;
        double throughput_gops;
        double efficiency_percentage;
        unsigned long memory_bytes;
    };

    static BenchmarkResult RunBenchmark(
        const unsigned batch_size,
        const unsigned seq_len,
        const unsigned input_dim,
        const unsigned output_dim,
        const unsigned num_iterations = 100) {
        
        BenchmarkResult result;
        
        // 准备输入数据
        std::vector<MemoryPackN_t> input = GenerateRandomInput(
            batch_size, seq_len, input_dim);
        std::vector<MemoryPackM_t> weights = GenerateRandomWeights(
            input_dim, output_dim);
        std::vector<MemoryPackM_t> output(
            batch_size * seq_len * output_dim / kMemoryWidthM);

        // 预热运行
        TTLinearLayerKernel(input.data(), weights.data(), output.data(),
                           batch_size, seq_len, input_dim, output_dim);

        // 计时运行
        auto start = std::chrono::high_resolution_clock::now();
        
        for(unsigned i = 0; i < num_iterations; ++i) {
            TTLinearLayerKernel(input.data(), weights.data(), output.data(),
                               batch_size, seq_len, input_dim, output_dim);
        }
        
        auto end = std::chrono::high_resolution_clock::now();
        
        // 计算性能指标
        std::chrono::duration<double, std::milli> duration = end - start;
        result.execution_time_ms = duration.count() / num_iterations;
        
        // 计算理论峰值性能
        const double ops_per_run = 2.0 * batch_size * seq_len * input_dim * output_dim;
        result.throughput_gops = (ops_per_run / result.execution_time_ms) * 1e-6;
        
        // 计算理论峰值效率
        const double peak_throughput = kParallelismN * kParallelismM * (1000.0 / kClockPeriod);
        result.efficiency_percentage = (result.throughput_gops / peak_throughput) * 100.0;
        
        // 计算内存使用
        result.memory_bytes = CalculateMemoryUsage(
            batch_size, seq_len, input_dim, output_dim);
        
        return result;
    }

    static void PrintBenchmarkResult(const BenchmarkResult& result) {
        std::cout << "\nBenchmark Results:\n"
                  << "==================\n"
                  << "Execution time: " << result.execution_time_ms << " ms\n"
                  << "Throughput: " << result.throughput_gops << " GOp/s\n"
                  << "Hardware Efficiency: " << result.efficiency_percentage << "%\n"
                  << "Memory Usage: " << (result.memory_bytes / 1024.0 / 1024.0) 
                  << " MB\n" << std::endl;
    }

private:
    static std::vector<MemoryPackN_t> GenerateRandomInput(
        const unsigned batch_size,
        const unsigned seq_len,
        const unsigned input_dim) {
        
        const unsigned size = batch_size * seq_len * input_dim / kMemoryWidthN;
        std::vector<MemoryPackN_t> input(size);
        
        std::default_random_engine rng(kSeed);
        std::uniform_real_distribution<Data_t> dist(-1.0, 1.0);
        
        for(auto& pack : input) {
            for(unsigned i = 0; i < kMemoryWidthN; ++i) {
                pack[i] = dist(rng);
            }
        }
        
        return input;
    }
    
    static std::vector<MemoryPackM_t> GenerateRandomWeights(
        const unsigned input_dim,
        const unsigned output_dim) {
        
        // 计算TT核的总大小
        unsigned total_size = 0;
        for(unsigned i = 0; i < 4; ++i) {
            total_size += kTTRanks[i] * kTTShapes[i] * 
                         kTTOutputShapes[i] * kTTRanks[i+1];
        }
        
        const unsigned size = (total_size + kMemoryWidthM - 1) / kMemoryWidthM;
        std::vector<MemoryPackM_t> weights(size);
        
        std::default_random_engine rng(kSeed);
        std::uniform_real_distribution<Data_t> dist(-1.0, 1.0);
        
        for(auto& pack : weights) {
            for(unsigned i = 0; i < kMemoryWidthM; ++i) {
                pack[i] = dist(rng);
            }
        }
        
        return weights;
    }
    
    static unsigned long CalculateMemoryUsage(
        const unsigned batch_size,
        const unsigned seq_len,
        const unsigned input_dim,
        const unsigned output_dim) {
        
        // 输入内存
        unsigned long memory = batch_size * seq_len * input_dim * sizeof(Data_t);
        
        // TT核内存
        for(unsigned i = 0; i < 4; ++i) {
            memory += kTTRanks[i] * kTTShapes[i] * 
                     kTTOutputShapes[i] * kTTRanks[i+1] * sizeof(Data_t);
        }
        
        // 输出内存
        memory += batch_size * seq_len * output_dim * sizeof(Data_t);
        
        // 缓冲区内存
        memory += kTTBufferSize * sizeof(Data_t);
        
        return memory;
    }
};