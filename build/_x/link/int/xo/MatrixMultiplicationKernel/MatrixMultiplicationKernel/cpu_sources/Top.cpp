#include "MatrixMultiplication.h"
#include "Compute.h"
#include "Memory.h"
#include "hlslib/xilinx/Simulation.h"

#ifdef MM_TRANSPOSED_A
void MatrixMultiplicationKernel(MemoryPackN_t const a[],
                                MemoryPackM_t const b[], MemoryPackM_t c[]
#else
void MatrixMultiplicationKernel(MemoryPackK_t const a[],
                                MemoryPackM_t const b[], MemoryPackM_t c[]
#endif
#ifdef MM_DYNAMIC_SIZES
                                ,
                                const unsigned size_n, const unsigned size_k,
                                const unsigned size_m
#endif
) {

  #pragma HLS INTERFACE m_axi port=a offset=slave bundle=gmem0 max_read_burst_length=16
  #pragma HLS INTERFACE m_axi port=b offset=slave bundle=gmem1 max_read_burst_length=16
  #pragma HLS INTERFACE m_axi port=c offset=slave bundle=gmem2 max_write_burst_length=16
  #pragma HLS INTERFACE s_axilite port=size_n
  #pragma HLS INTERFACE s_axilite port=size_k
  #pragma HLS INTERFACE s_axilite port=size_m
  #pragma HLS INTERFACE s_axilite port=return
  #pragma HLS DATAFLOW

#ifndef MM_DYNAMIC_SIZES
  const unsigned size_n = kSizeN;
  const unsigned size_k = kSizeK;
  const unsigned size_m = kSizeM;
#endif

  // Memory accesses and pipes for A 
#ifndef MM_TRANSPOSED_A
  Stream<Data_t> aSplit[kTransposeWidth];
  #pragma HLS ARRAY_PARTITION variable=aSplit complete dim=1
  #pragma HLS STREAM variable=aSplit depth=2*kOuterTileSizeN
  Stream<Data_t> aConvert("aConvert");
  #pragma HLS STREAM variable=aConvert depth=2
#else
  Stream<MemoryPackN_t> aMemory("aMemory");
  #pragma HLS STREAM variable=aMemory depth=2*kOuterTileSizeNMemory
#endif

  // Memory accesses and pipes for B 
  Stream<MemoryPackM_t> bMemory("bMemory");
  #pragma HLS STREAM variable=bMemory depth=2*kOuterTileSizeMMemory

  Stream<ComputePackN_t> aPipes[kComputeTilesN + 1];
  #pragma HLS ARRAY_PARTITION variable=aPipes complete dim=1
  #pragma HLS STREAM variable=aPipes depth=kPipeDepth

  Stream<ComputePackM_t> bPipes[kComputeTilesN + 1];
  #pragma HLS ARRAY_PARTITION variable=bPipes complete dim=1
  #pragma HLS STREAM variable=bPipes depth=kPipeDepth

  Stream<ComputePackM_t> cPipes[kComputeTilesN + 1];
  #pragma HLS ARRAY_PARTITION variable=cPipes complete dim=1
  #pragma HLS STREAM variable=cPipes depth=kPipeDepth

  HLSLIB_DATAFLOW_INIT();

  // Only convert memory width if necessary
#ifndef MM_TRANSPOSED_A
  HLSLIB_DATAFLOW_FUNCTION(ReadA, a, aSplit, size_n, size_k, size_m);
#ifdef MM_CONVERT_A
  HLSLIB_DATAFLOW_FUNCTION(TransposeA, aSplit, aConvert, size_n, size_k,
                           size_m);
  HLSLIB_DATAFLOW_FUNCTION(ConvertWidthA, aConvert, aPipes[0], size_n, size_k,
                           size_m);
#else
  HLSLIB_DATAFLOW_FUNCTION(TransposeA, aSplit, aPipes[0], size_n, size_k,
                           size_m);
#endif
#else
  HLSLIB_DATAFLOW_FUNCTION(ReadATransposed, a, aMemory, size_n, size_k, size_m);
  HLSLIB_DATAFLOW_FUNCTION(ConvertWidthATransposed, aMemory, aPipes[0], size_n,
                           size_k, size_m);
#endif

  HLSLIB_DATAFLOW_FUNCTION(ReadB, b, bMemory, size_n, size_k, size_m);

#ifdef MM_CONVERT_B
  Stream<ComputePackM_t> bFeed("bFeed");
  #pragma HLS STREAM variable=bFeed depth=2
  HLSLIB_DATAFLOW_FUNCTION(ConvertWidthB, bMemory, bFeed, size_n, size_k,
                           size_m);
  HLSLIB_DATAFLOW_FUNCTION(FeedB, bFeed, bPipes[0], size_n, size_k, size_m);
#else
  HLSLIB_DATAFLOW_FUNCTION(FeedB, bMemory, bPipes[0], size_n, size_k, size_m);
#endif

  for (unsigned pe = 0; pe < kComputeTilesN; ++pe) {
    #pragma HLS UNROLL
    #pragma HLS DEPENDENCE variable=aPipes inter false
    #pragma HLS DEPENDENCE variable=bPipes inter false
    HLSLIB_DATAFLOW_FUNCTION(ProcessingElement,
                             aPipes[pe],
                             aPipes[pe + 1],
                             bPipes[pe],
                             bPipes[pe + 1],
                             cPipes[pe],
                             cPipes[pe + 1],
                             pe, size_n, size_k, size_m);
  }

  Stream<MemoryPackM_t> cMemory("cMemory");
  #pragma HLS STREAM variable=cMemory depth=2*kOuterTileSizeMMemory
  HLSLIB_DATAFLOW_FUNCTION(ConvertWidthC, cPipes[0], cMemory, size_n, size_k,
                           size_m);
  HLSLIB_DATAFLOW_FUNCTION(WriteC, cMemory, c, size_n, size_k, size_m);

  HLSLIB_DATAFLOW_FINALIZE();
}
