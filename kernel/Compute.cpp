/// @author    Johannes de Fine Licht (definelicht@inf.ethz.ch)
/// @copyright This software is copyrighted under the BSD 3-Clause License. 

#include "hlslib/xilinx/Stream.h"
#include "hlslib/xilinx/Simulation.h"
#include "hlslib/xilinx/Utility.h"
#include "MatrixMultiplication.h"
#include "Memory.h"
#include <cassert>





void ProcessingElement(
    Stream<ComputePackN_t> &input_in,
    Stream<ComputePackN_t> &input_out,
    Stream<ComputePackM_t> &weight_in, 
    Stream<ComputePackM_t> &weight_out,
    Stream<ComputePackM_t> &output_out,
    Stream<ComputePackM_t> &output_in,
    const unsigned batch_size,
    const unsigned seq_len) {

  // 双缓冲输入
  ComputePackN_t input_buffer[2][kInputDim];
  #pragma HLS ARRAY_PARTITION variable=input_buffer complete dim=2

  // 计算缓存
  ComputePackM_t output_buffer[kBatchSize][kSeqLen][kOutputDim];
  #pragma HLS ARRAY_PARTITION variable=output_buffer complete dim=3

Compute_Batch:
  for(unsigned b = 0; b < batch_size; b++) {
  Compute_Seq:
    for(unsigned s = 0; s < seq_len; s++) {
    Compute_Out:
      for(unsigned o = 0; o < kOutputDim; o++) {
        #pragma HLS PIPELINE II=1
        
        // 获取数据
        auto input = input_in.Pop();
        auto weight = weight_in.Pop();
        
        // 计算乘加
        ComputePackM_t partial_sum = 0;
      Compute_In:
        for(unsigned i = 0; i < kInputDim; i++) {
          #pragma HLS UNROLL
          partial_sum += input[i] * weight[i];
        }
        
        // 累积结果
        output_buffer[b][s][o] += partial_sum;

        // 输出结果
        if(o == kOutputDim-1) {
          output_out.Push(output_buffer[b][s][o]);
        }
      }
    }
  }
}