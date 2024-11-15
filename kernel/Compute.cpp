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

  // 双缓冲输入 - 使用kParallelismN
  ComputePackN_t input_buffer[2][kTileSizeN/kParallelismN];
  #pragma HLS ARRAY_PARTITION variable=input_buffer complete dim=2

  // 计算缓存 - 使用kParallelismM  
  ComputePackM_t output_buffer[kBatchSize][kSeqLen][kTileSizeM/kParallelismM];
  #pragma HLS ARRAY_PARTITION variable=output_buffer complete dim=3

Compute_Batch:
  for(unsigned b = 0; b < batch_size; b++) {
  Compute_Seq:
    for(unsigned s = 0; s < seq_len; s++) {
    Compute_Out:
      for(unsigned o = 0; o < kTileSizeM/kParallelismM; o++) {
        #pragma HLS PIPELINE II=1
        
        // 获取计算包大小的数据
        auto input = input_in.Pop();
        auto weight = weight_in.Pop();
        
        // 初始化部分和
        ComputePackM_t partial_sum;
        for(unsigned w = 0; w < kParallelismM; w++) {
          #pragma HLS UNROLL
          partial_sum[w] = 0;
        }
        
        // 计算乘加，使用并行度参数
        for(unsigned i = 0; i < kParallelismN; i++) {
          #pragma HLS UNROLL
          for(unsigned w = 0; w < kParallelismM; w++) {
            #pragma HLS UNROLL
            partial_sum[w] = partial_sum[w] + input[i] * weight[w];
          }
        }

        // 累积结果
        for(unsigned w = 0; w < kParallelismM; w++) {
          #pragma HLS UNROLL
          output_buffer[b][s][o][w] = output_buffer[b][s][o][w] + partial_sum[w];
        }

        // 输出
        if(o == kTileSizeM/kParallelismM-1) {
          output_out.Push(output_buffer[b][s][o]);
        }
      }
    }
  }
}