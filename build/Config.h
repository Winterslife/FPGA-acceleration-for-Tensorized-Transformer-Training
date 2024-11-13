/// @author    Johannes de Fine Licht (definelicht@inf.ethz.ch)
/// @copyright This software is copyrighted under the BSD 3-Clause License. 

#pragma once

#include <cstddef>
#include <cstdint>
#ifdef MM_HALF_PRECISION
#include "hls_half.h"
#endif
#include "hlslib/xilinx/Operators.h"

using uint8_t = unsigned char;

using Data_t = float; 
constexpr int kMemoryWidthBytesN = 64;
constexpr int kMemoryWidthBytesK = 64;
constexpr int kMemoryWidthBytesM = 64;
#ifndef MM_DYNAMIC_SIZES
constexpr unsigned long kSizeN = 512;
constexpr unsigned long kSizeK = 512;
constexpr unsigned long kSizeM = 512;
#endif
constexpr unsigned long kOuterTileSizeN = 512;
constexpr unsigned long kOuterTileSizeM = 512;
constexpr unsigned long kInnerTileSizeN = 32;
constexpr int kComputeTileSizeM = 8;
// constexpr int kComputeTileSizeN = ; // NYI
constexpr int kComputeTileSizeN = 1;
constexpr int kTransposeWidthBytes = 64;
constexpr float kFrequency = 300.000000;
constexpr auto kGoldenDir = ""; 

using OperatorMap = hlslib::op::Multiply<Data_t>;
using OperatorReduce = hlslib::op::Add<Data_t>;

#if 64 != 32 
  #define MM_CONVERT_B
#endif

// When A is not transposed, the data width must be converted if a PE buffers
// more than one row of A (currently unsupported). When A is transposed, the
// data width must be converted if the memory bus is wider than the number of
// rows buffered per PE.
#if (defined(MM_TRANSPOSED_A) && \
     (4 != 64))
#define MM_CONVERT_A
#endif
