/// @author    Johannes de Fine Licht (definelicht@inf.ethz.ch)
/// @copyright This software is copyrighted under the BSD 3-Clause License.

#include <algorithm>
#include <cmath>
#include <iostream>
#include <random>
#include <type_traits>
#include <vector>
#include "MatrixMultiplication.h"
#include "Utility.h"

int main() {
  // 定义维度
  const unsigned batch_size = 2;
  const unsigned seq_len = 4; 
  const unsigned input_dim = 512;  // 需要与配置匹配
  const unsigned output_dim = 512; // 需要与配置匹配

  // 创建输入和输出向量
  std::vector<Data_t> input_raw(batch_size * seq_len * input_dim);
  std::vector<Data_t> weights_raw(input_dim * output_dim);
  std::vector<Data_t> output_raw(batch_size * seq_len * output_dim);
  std::vector<Data_t> reference_output(batch_size * seq_len * output_dim, 0);

  // 创建数据包形式的向量
  std::vector<MemoryPackN_t> input_packed(batch_size * seq_len * input_dim / kMemoryWidthN);
  std::vector<MemoryPackM_t> weights_packed(input_dim * output_dim / kMemoryWidthM);
  std::vector<MemoryPackM_t> output_packed(batch_size * seq_len * output_dim / kMemoryWidthM);

  // 初始化随机数据
  std::default_random_engine rng(kSeed);
  std::uniform_real_distribution<float> dist(-1.0, 1.0);
  for(auto& x : input_raw) x = dist(rng);
  for(auto& x : weights_raw) x = dist(rng);

  // 打包输入数据
  for(size_t i = 0; i < input_packed.size(); ++i) {
    for(int j = 0; j < kMemoryWidthN; ++j) {
      input_packed[i][j] = input_raw[i * kMemoryWidthN + j];
    }
  }
  
  for(size_t i = 0; i < weights_packed.size(); ++i) {
    for(int j = 0; j < kMemoryWidthM; ++j) {
      weights_packed[i][j] = weights_raw[i * kMemoryWidthM + j];
    }
  }

  // 计算参考结果
  for(unsigned b = 0; b < batch_size; b++) {
    for(unsigned s = 0; s < seq_len; s++) {
      for(unsigned o = 0; o < output_dim; o++) {
        float sum = 0;
        for(unsigned i = 0; i < input_dim; i++) {
          sum += input_raw[b*seq_len*input_dim + s*input_dim + i] * 
                 weights_raw[i*output_dim + o];
        }
        reference_output[b*seq_len*output_dim + s*output_dim + o] = sum;
      }
    }
  }

  // 运行kernel
  MatrixMultiplicationKernel(input_packed.data(), 
                            weights_packed.data(), 
                            output_packed.data(),
                            batch_size, seq_len, 
                            input_dim, output_dim);

  // 解包输出数据
  for(size_t i = 0; i < output_packed.size(); ++i) {
    for(int j = 0; j < kMemoryWidthM; ++j) {
      output_raw[i * kMemoryWidthM + j] = output_packed[i][j];
    }
  }

  // 验证结果
  bool passed = true;
  for(size_t i = 0; i < output_raw.size(); i++) {
    float diff = std::abs(output_raw[i] - reference_output[i]);
    if(diff > 1e-4) {
      std::cout << "Mismatch at " << i << ": " 
                << output_raw[i] << " vs " << reference_output[i] << std::endl;
      passed = false;
      break;
    }
  }

  if(passed) {
    std::cout << "Test passed!" << std::endl;
    return 0;
  } else {
    std::cout << "Test failed!" << std::endl;
    return 1;
  }
}