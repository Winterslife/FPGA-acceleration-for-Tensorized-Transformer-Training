#include "hlslib/xilinx/Stream.h"
#include "hlslib/xilinx/Simulation.h"
#include "hlslib/xilinx/DataPack.h"
#include "hlslib/xilinx/Utility.h"
#include "MatrixMultiplication.h"
#include "Memory.h"
#include "TTConfig.h"
#include <cassert>

void ProcessingElement(
    Stream<ComputePackN_t> &input_in,
    Stream<ComputePackN_t> &input_out,
    Stream<ComputePackM_t> &weight_in, 
    Stream<ComputePackM_t> &weight_out,
    Stream<ComputePackM_t> &output_out,
    Stream<ComputePackM_t> &output_in,
    const unsigned batch_size,
    const unsigned seq_len,
    const unsigned input_dim,
    const unsigned output_dim) {

  #pragma HLS INLINE off

  // 双缓冲输入 - 保持原有的缓存策略
  ComputePackN_t input_buffer[2][kTileSizeN/kParallelismN];
  #pragma HLS ARRAY_PARTITION variable=input_buffer complete dim=2

  // 计算缓存
  ComputePackM_t output_buffer[kBatchSize][kSeqLen][kTileSizeM/kParallelismM];
  #pragma HLS ARRAY_PARTITION variable=output_buffer complete dim=3

Compute_Batch:
  for(unsigned b = 0; b < batch_size; b++) {
  Compute_Seq:
    for(unsigned s = 0; s < seq_len; s++) {
    Compute_Out:
      for(unsigned o = 0; o < output_dim/kParallelismM; o++) {
      Compute_In:
        for(unsigned i = 0; i < input_dim/kParallelismN; i++) {
          #pragma HLS PIPELINE II=1
          
          // 获取输入数据
          ComputePackN_t input = input_in.Pop();
          // 及时转发给下一个PE
          input_out.Push(input);  
          
          // 获取权重数据
          ComputePackM_t weight = weight_in.Pop();
          // 及时转发给下一个PE
          weight_out.Push(weight);
          
          // 初始化部分和
          if (i == 0) {
            for(unsigned w = 0; w < kParallelismM; w++) {
              #pragma HLS UNROLL
              output_buffer[b][s][o][w] = 0;
            }
          }
          
          // 计算乘加，使用并行度参数
          for(unsigned n = 0; n < kParallelismN; n++) {
            #pragma HLS UNROLL
            for(unsigned w = 0; w < kParallelismM; w++) {
              #pragma HLS UNROLL
              output_buffer[b][s][o][w] += input[n] * weight[w];
            }
          }

          // 处理输出
          if(i == input_dim/kParallelismN - 1) {
            // 从前一级PE获取输出
            ComputePackM_t prev_output = output_in.Pop();
            
            // 累加前一级结果
            for(unsigned w = 0; w < kParallelismM; w++) {
              #pragma HLS UNROLL
              output_buffer[b][s][o][w] += prev_output[w];
            }
            
            // 将结果发送给下一级PE
            output_out.Push(output_buffer[b][s][o]);
          }
        }
      }
    }
  }
}

void TTProcessingElement(
    Stream<ComputePackN_t> &input_in,
    Stream<ComputePackN_t> &input_out,
    const TTCores &tt_cores,
    Stream<ComputePackM_t> &output_out,
    const unsigned batch_size,
    const unsigned seq_len) {
    
    #pragma HLS INLINE off
    
    // TT计算所需的缓冲区
    Data_t input_buffer[kTTRanks[0]][kTTShapes[0]];
    #pragma HLS ARRAY_PARTITION variable=input_buffer complete dim=0
    
    Data_t intermediate_results[kTTRanks[2]][kTTOutputShapes[0]];
    #pragma HLS ARRAY_PARTITION variable=intermediate_results complete dim=0

ComputeBatch:
    for(unsigned b = 0; b < batch_size; b++) {
    ComputeSeq:
        for(unsigned s = 0; s < seq_len; s++) {
            
        // 第一个TT核的计算
        TT_Core1:
            for(unsigned i = 0; i < kTTShapes[0]; i++) {
                #pragma HLS PIPELINE II=1
                
                const auto input = input_in.Pop();
                input_out.Push(input);  // Forward input to next PE
                
            Core1_Rank:
                for(unsigned r1 = 0; r1 < kTTRanks[1]; r1++) {
                    #pragma HLS UNROLL
                    Data_t sum = 0;
                    
                Core1_Compute:
                    for(unsigned j = 0; j < kTTOutputShapes[0]; j++) {
                        #pragma HLS UNROLL
                        sum += tt_cores.GetCore(0, 0, i, j, r1) * input[j];
                    }
                    intermediate_results[r1][i] = sum;
                }
            }
            
        // 剩余TT核的计算
        TT_Remaining_Cores:
            for(unsigned core = 1; core < 4; core++) {
            Core_Compute:
                for(unsigned r1 = 0; r1 < kTTRanks[core]; r1++) {
                    #pragma HLS PIPELINE II=1
                    
                    Data_t temp[kTTOutputShapes[core]];
                    #pragma HLS ARRAY_PARTITION variable=temp complete dim=0
                    
                Core_Inner:
                    for(unsigned i = 0; i < kTTShapes[core]; i++) {
                        for(unsigned j = 0; j < kTTOutputShapes[core]; j++) {
                            #pragma HLS UNROLL
                            for(unsigned r2 = 0; r2 < kTTRanks[core+1]; r2++) {
                                #pragma HLS UNROLL
                                temp[j] += intermediate_results[r1][i] * 
                                         tt_cores.GetCore(core, r1, i, j, r2);
                            }
                        }
                    }
                    
                    for(unsigned j = 0; j < kTTOutputShapes[core]; j++) {
                        #pragma HLS UNROLL
                        intermediate_results[r1][j] = temp[j];
                    }
                }
            }
            
            // 准备输出结果
            ComputePackM_t output;
            for(unsigned i = 0; i < kParallelismM; i++) {
                #pragma HLS UNROLL
                output[i] = intermediate_results[0][i];
            }
            
            output_out.Push(output);
        }
    }
}