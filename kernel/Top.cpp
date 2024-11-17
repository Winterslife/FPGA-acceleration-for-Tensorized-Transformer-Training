#include "MatrixMultiplication.h"
#include "Memory.h"
#include "Compute.h"
#include "TTConfig.h"
#include "hlslib/xilinx/Stream.h"
#include "hlslib/xilinx/Simulation.h"  // 添加这行
#include "hlslib/xilinx/DataPack.h"    // 添加这行
#include "hlslib/xilinx/Utility.h"     // 添加这行

using hlslib::Stream;
// 顶层计算函数,管理整个计算流程
void MatrixMultiplicationKernel(
    MemoryPackN_t const input[],    
    MemoryPackM_t const weights[],  
    MemoryPackM_t output[],         
    const unsigned batch_size,      
    const unsigned seq_len,         
    const unsigned input_dim,       
    const unsigned output_dim) {     

    #pragma HLS DATAFLOW
    #ifndef HLSLIB_SYNTHESIS
    std::cout << "=============== Matrix Multiplication Kernel ===============" << std::endl;
    std::cout << "Dimensions:" << std::endl;
    std::cout << "  input_dim = " << input_dim << std::endl;
    std::cout << "  output_dim = " << output_dim << std::endl;
    std::cout << "  batch_size = " << batch_size << std::endl;
    std::cout << "  seq_len = " << seq_len << std::endl;
    std::cout << "Configuration:" << std::endl;
    std::cout << "  kParallelismN = " << kParallelismN << std::endl;
    std::cout << "  kParallelismM = " << kParallelismM << std::endl;
    std::cout << "  kTileSizeN = " << kTileSizeN << std::endl;
    std::cout << "  kTileSizeM = " << kTileSizeM << std::endl;
    std::cout << "=========================================================" << std::endl;
    #endif
    // 定义流水线流
    Stream<ComputePackN_t> input_pipe("input_pipe");
    Stream<ComputePackM_t> weight_pipe("weight_pipe");
    Stream<ComputePackM_t> output_pipe("output_pipe");

    // 中间流
    Stream<ComputePackN_t, 32> input_pipes[kParallelismN + 1];
    Stream<ComputePackM_t, 32> weight_pipes[kParallelismN + 1];
    Stream<ComputePackM_t, 32> output_pipes[kParallelismN + 1];
    
    for(int i = 0; i < kParallelismN + 1; i++) {
            std::string name = "input_pipe_" + std::to_string(i);
            SetName(input_pipes[i], name.c_str());
            name = "weight_pipe_" + std::to_string(i);
            SetName(weight_pipes[i], name.c_str());
            name = "output_pipe_" + std::to_string(i);
            SetName(output_pipes[i], name.c_str());
        }

    #pragma HLS ARRAY_PARTITION variable=input_pipes complete dim=1
    #pragma HLS ARRAY_PARTITION variable=weight_pipes complete dim=1
    #pragma HLS ARRAY_PARTITION variable=output_pipes complete dim=1

    HLSLIB_DATAFLOW_INIT();
     #ifndef HLSLIB_SYNTHESIS
    std::cout << "Starting dataflow pipeline..." << std::endl;
    #endif
    // 读取输入
    HLSLIB_DATAFLOW_FUNCTION(ReadInput, input, input_pipes[0], 
                            batch_size, seq_len);
     #ifndef HLSLIB_SYNTHESIS
    std::cout << "Expected weight reads: " 
              << (input_dim/kParallelismN) * (output_dim/kParallelismM) 
              << std::endl;
    #endif
    // 读取权重
    HLSLIB_DATAFLOW_FUNCTION(ReadWeights, weights, weight_pipes[0],
                            input_dim, output_dim);
    // 先添加日志确认PE的调用顺序
    #ifndef HLSLIB_SYNTHESIS 
    std::cout << "Starting PE chain..." << std::endl;
    #endif
    // 计算处理单元
    for (unsigned pe = 0; pe < kParallelismN; ++pe) {
        #pragma HLS UNROLL
        #ifndef HLSLIB_SYNTHESIS
        std::cout << "Initializing PE " << pe << std::endl;
        #endif
        HLSLIB_DATAFLOW_FUNCTION(ProcessingElement,
                         input_pipes[pe],
                         input_pipes[pe + 1],
                         weight_pipes[pe],
                         weight_pipes[pe + 1],
                         output_pipes[pe],
                         output_pipes[pe + 1],
                         batch_size, 
                         seq_len,
                         input_dim,   // 添加input_dim参数
                         output_dim); // 添加output_dim参数
    }

    // 写回输出
    HLSLIB_DATAFLOW_FUNCTION(WriteOutput, output_pipes[0], output,
                            batch_size, seq_len);
     #ifndef HLSLIB_SYNTHESIS
    std::cout << "Finalizing dataflow pipeline..." << std::endl;
    #endif
    HLSLIB_DATAFLOW_FINALIZE();
}

void TTLinearLayerKernel(
    MemoryPackN_t const input[],    
    MemoryPackM_t const weights[],  
    MemoryPackM_t output[],         
    const unsigned batch_size,       
    const unsigned seq_len,          
    const unsigned input_dim,        
    const unsigned output_dim) {     

    #pragma HLS DATAFLOW

    // Stream<ComputePackN_t> input_pipe("input_pipe");
    // Stream<ComputePackM_t> output_pipe("output_pipe");

    TTCores tt_cores;
    #pragma HLS ARRAY_PARTITION variable=tt_cores.cores complete dim=1
    
    LoadTTCores(weights, tt_cores);

    Stream<ComputePackN_t, 32> input_pipes[kParallelismN + 1];
    Stream<ComputePackM_t, 32> output_pipes[kParallelismN + 1];
    
    #pragma HLS ARRAY_PARTITION variable=input_pipes complete dim=1
    #pragma HLS ARRAY_PARTITION variable=output_pipes complete dim=1

    HLSLIB_DATAFLOW_INIT();

    HLSLIB_DATAFLOW_FUNCTION(ReadTTInput, input, input_pipes[0], 
                            batch_size, seq_len);

    for(unsigned pe = 0; pe < kParallelismN; ++pe) {
        #pragma HLS UNROLL
        HLSLIB_DATAFLOW_FUNCTION(TTProcessingElement,
                                input_pipes[pe],
                                input_pipes[pe + 1],
                                tt_cores,
                                output_pipes[pe],
                                batch_size, seq_len);
    }

    HLSLIB_DATAFLOW_FUNCTION(WriteOutput, output_pipes[0], output,
                            batch_size, seq_len);

    HLSLIB_DATAFLOW_FINALIZE();
}