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
  // 1. 定义输入维度
  const unsigned batch_size = 2;
  const unsigned seq_len = 4; 
  const unsigned input_dim = 16;
  const unsigned output_dim = 32;

  // 2. 准备测试数据
  std::vector<Data_t> input(batch_size * seq_len * input_dim);
  std::vector<Data_t> weights(input_dim * output_dim);
  std::vector<Data_t> output(batch_size * seq_len * output_dim);
  std::vector<Data_t> reference(batch_size * seq_len * output_dim, 0);

  // 3. 初始化随机数据
  std::default_random_engine rng(kSeed);
  std::uniform_real_distribution<float> dist(-1.0, 1.0);
  for(auto& x : input) x = dist(rng);
  for(auto& x : weights) x = dist(rng);

  // 4. 计算参考结果
  for(unsigned b = 0; b < batch_size; b++) {
    for(unsigned s = 0; s < seq_len; s++) {
      for(unsigned o = 0; o < output_dim; o++) {
        float sum = 0;
        for(unsigned i = 0; i < input_dim; i++) {
          sum += input[b*seq_len*input_dim + s*input_dim + i] * 
                 weights[i*output_dim + o];
        }
        reference[b*seq_len*output_dim + s*output_dim + o] = sum;
      }
    }
  }

  // 5. 运行kernel
  MatrixMultiplicationKernel(input.data(), weights.data(), output.data(),
                            batch_size, seq_len, input_dim, output_dim);

  // 6. 验证结果
  for(unsigned i = 0; i < output.size(); i++) {
    float diff = std::abs(output[i] - reference[i]);
    if(diff > 1e-4) {
      std::cout << "Mismatch at " << i << ": " 
                << output[i] << " vs " << reference[i] << std::endl;
      return 1;
    }
  }

  std::cout << "Test passed!" << std::endl;
  return 0;
}