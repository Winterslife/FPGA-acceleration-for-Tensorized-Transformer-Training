#include "MatrixMultiplication.h"
#include "Memory.h"
#include "Compute.h"
#include "hlslib/xilinx/Stream.h"

void MatrixMultiplicationKernel(
    MemoryPackN_t const input[],    
    MemoryPackM_t const weights[],  
    MemoryPackM_t output[],         
    const unsigned batch_size,      
    const unsigned seq_len,         
    const unsigned input_dim,       
    const unsigned output_dim) {

  #pragma HLS DATAFLOW

  // 定义流水线流
  Stream<ComputePackN_t> input_pipe("input_pipe");
  Stream<ComputePackM_t> weight_pipe("weight_pipe");
  Stream<ComputePackM_t> output_pipe("output_pipe");

  // 中间流
  Stream<ComputePackN_t> input_pipes[kParallelismN + 1];
  Stream<ComputePackM_t> weight_pipes[kParallelismN + 1];
  Stream<ComputePackM_t> output_pipes[kParallelismN + 1];
  
  #pragma HLS ARRAY_PARTITION variable=input_pipes complete dim=1
  #pragma HLS ARRAY_PARTITION variable=weight_pipes complete dim=1
  #pragma HLS ARRAY_PARTITION variable=output_pipes complete dim=1

  // 读取输入数据
  HLSLIB_DATAFLOW_INIT();

  // 读取输入
  HLSLIB_DATAFLOW_FUNCTION(ReadInput, input, input_pipes[0], 
                          batch_size, seq_len);

  // 读取权重
  HLSLIB_DATAFLOW_FUNCTION(ReadWeights, weights, weight_pipes[0],
                          input_dim, output_dim);

  // 计算处理单元
  for (unsigned pe = 0; pe < kParallelismN; ++pe) {
    #pragma HLS UNROLL
    HLSLIB_DATAFLOW_FUNCTION(ProcessingElement,
                            input_pipes[pe],
                            input_pipes[pe + 1],
                            weight_pipes[pe],
                            weight_pipes[pe + 1],
                            output_pipes[pe],
                            output_pipes[pe + 1],
                            batch_size, seq_len);
  }

  // 写回输出
  HLSLIB_DATAFLOW_FUNCTION(WriteOutput, output_pipes[0], output,
                          batch_size, seq_len);

  HLSLIB_DATAFLOW_FINALIZE();
}