/// @author    Johannes de Fine Licht (definelicht@inf.ethz.ch)
/// @copyright This software is copyrighted under the BSD 3-Clause License. 
#include "hlslib/xilinx/Stream.h"
#include "hlslib/xilinx/Simulation.h"
#include "hlslib/xilinx/DataPack.h"
#include "hlslib/xilinx/Utility.h"
#include "MatrixMultiplication.h"
#include "Memory.h"
#include "TTConfig.h"
#include <cassert>




// 实现矩阵乘法的基本计算单元
void ProcessingElement(
    Stream<ComputePackN_t> &input_in,
    Stream<ComputePackN_t> &input_out,
    Stream<ComputePackM_t> &weight_in, 
    Stream<ComputePackM_t> &weight_out,
    Stream<ComputePackM_t> &output_out,
    Stream<ComputePackM_t> &output_in,
    const unsigned batch_size,
    const unsigned seq_len,
    const unsigned input_dim,    // 添加参数
    const unsigned output_dim
    ) {
      #pragma HLS PIPELINE II=1
      #ifndef HLSLIB_SYNTHESIS
    static int pe_id = 0;
    std::cout << "PE " << pe_id++ << " started" << std::endl;
    #endif
  // 双缓冲输入 - 使用kParallelismN
  // ComputePackN_t input_buffer[2][kTileSizeN/kParallelismN];
  // #pragma HLS ARRAY_PARTITION variable=input_buffer complete dim=2

  // 计算缓存 - 使用kParallelismM  
  // ComputePackM_t output_buffer[kBatchSize][kSeqLen][kTileSizeM/kParallelismM];
  // ComputePackM_t output_buffer;
  // #pragma HLS ARRAY_PARTITION variable=output_buffer complete dim=3

Compute_Batch:
  for(unsigned b = 0; b < batch_size; b++) {
  Compute_Seq:
    for(unsigned s = 0; s < seq_len; s++) {
    Compute_Out:
      for(unsigned o = 0; o < kTileSizeM/kParallelismM; o++) {
        #pragma HLS PIPELINE II=1
        
        #ifndef HLSLIB_SYNTHESIS
        std::cout << "PE iteration: b=" << b << ", s=" << s << ", o=" << o << std::endl;
        #endif
        // bool valid_input = false;
        // 获取计算包大小的数据
        // auto input = input_in.Pop();
        // auto weight = weight_in.Pop();
        // 读取输入并立即转发
        #ifndef HLSLIB_SYNTHESIS
        if(input_in.empty()) {
            std::cout << "input_in is empty" << std::endl;
        }
        #endif
        ComputePackN_t input = input_in.Pop();
        input_out.Push(input);

        // 读取权重并转发  
        #ifndef HLSLIB_SYNTHESIS
        if(weight_in.empty()) {
            std::cout << "weight_in is empty" << std::endl; 
        }
        #endif
        ComputePackM_t weight = weight_in.Pop();
        weight_out.Push(weight);
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
        // for(unsigned w = 0; w < kParallelismM; w++) {
        //   #pragma HLS UNROLL
        //   output_buffer[b][s][o][w] = output_buffer[b][s][o][w] + partial_sum[w];
        // }
        ComputePackM_t result = partial_sum;
        #ifndef HLSLIB_SYNTHESIS
        std::cout << "Checking output_in..." << std::endl;
        #endif
        if(!output_in.empty()) {  // 非阻塞读取
            for(unsigned w = 0; w < kParallelismM; w++) {
                #pragma HLS UNROLL
                result[w] = result[w] + partial_sum[w];
            }
        }
        // // 输出
        // if(o == kTileSizeM/kParallelismM-1) {
        //   output_out.Push(output_buffer[b][s][o]);
        // }
        // 输出结果
        output_out.Push(result);
      }
    }
  }
}

// 在文件末尾添加:
void TTProcessingElement(
    Stream<ComputePackN_t> &input_in,
    Stream<ComputePackN_t> &input_out,
    const TTCores &tt_cores,
    Stream<ComputePackM_t> &output_out,
    const unsigned batch_size,
    const unsigned seq_len) {
    
    #pragma HLS INLINE off
    
    Data_t input_buffer[kTTRanks[0]][kTTShapes[0]];
    #pragma HLS ARRAY_PARTITION variable=input_buffer complete dim=0
    
    Data_t intermediate_results[kTTRanks[2]][kTTOutputShapes[0]];
    #pragma HLS ARRAY_PARTITION variable=intermediate_results complete dim=0

ComputeBatch:
    for(unsigned b = 0; b < batch_size; b++) {
    ComputeSeq:
        for(unsigned s = 0; s < seq_len; s++) {
            
        TT_Core1:
            for(unsigned i = 0; i < kTTShapes[0]; i++) {
                #pragma HLS PIPELINE II=1
                
                const auto input = input_in.Pop();
                
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
            
            ComputePackM_t output;
        Prepare_Output:
            for(unsigned i = 0; i < kParallelismM; i++) {
                #pragma HLS UNROLL
                output[i] = intermediate_results[0][i];
            }
            
            output_out.Push(output);
        }
    }
}