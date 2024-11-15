/// @author    Your Name
/// @copyright This software is copyrighted under the BSD 3-Clause License.

#pragma once

#include "MatrixMultiplication.h"
#include <cassert>

// TT分解参数定义
constexpr unsigned kTTRanks[] = {1, 16, 16, 16, 1};  // TT-ranks [r0,r1,r2,r3,r4]
constexpr unsigned kTTShapes[] = {8, 8, 8, 8};       // 输入形状分解
constexpr unsigned kTTOutputShapes[] = {8, 8, 8, 8}; // 输出形状分解

// 计算累积大小
constexpr unsigned kInputAccumulated[] = {
    1,
    kTTShapes[0],
    kTTShapes[0] * kTTShapes[1],
    kTTShapes[0] * kTTShapes[1] * kTTShapes[2],
    kTTShapes[0] * kTTShapes[1] * kTTShapes[2] * kTTShapes[3]
};

constexpr unsigned kOutputAccumulated[] = {
    1,
    kTTOutputShapes[0],
    kTTOutputShapes[0] * kTTOutputShapes[1],
    kTTOutputShapes[0] * kTTOutputShapes[1] * kTTOutputShapes[2],
    kTTOutputShapes[0] * kTTOutputShapes[1] * kTTOutputShapes[2] * kTTOutputShapes[3]
};

// TT核数据结构
struct TTCores {
    // 存储四个TT核
    Data_t cores[4][kTTRanks[0] * kTTShapes[0] * kTTOutputShapes[0] * kTTRanks[1]];
    
    // 获取核元素的访问函数
    Data_t& GetCore(unsigned core_idx, unsigned r1, unsigned i, unsigned j, unsigned r2) {
        const unsigned offset = r1 * (kTTShapes[core_idx] * kTTOutputShapes[core_idx] * kTTRanks[core_idx+1]) +
                              i * (kTTOutputShapes[core_idx] * kTTRanks[core_idx+1]) +
                              j * kTTRanks[core_idx+1] + r2;
        return cores[core_idx][offset];
    }
};

// Stream数据包类型定义
using TTStreamPack = hlslib::DataPack<Data_t, kTTRanks[1]>;