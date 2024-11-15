#pragma once

#include "TTConfig.h"
#include "MatrixMultiplication.h"
#include <vector>

// TT格式转换函数
class TTConverter {
public:
    // 将密集矩阵转换为TT格式
    static std::vector<Data_t> DenseToTT(const std::vector<Data_t>& dense_matrix,
                                        unsigned input_dim, unsigned output_dim) {
        std::vector<Data_t> tt_cores;
        
        // 计算总的TT核大小
        unsigned total_size = 0;
        for(unsigned i = 0; i < 4; ++i) {
            total_size += kTTRanks[i] * kTTShapes[i] * 
                         kTTOutputShapes[i] * kTTRanks[i+1];
        }
        tt_cores.resize(total_size);
        
        // 这里使用简单的SVD分解方法
        // 注意：实际应用中应该使用更复杂的TT-SVD算法
        unsigned offset = 0;
        for(unsigned core = 0; core < 4; ++core) {
            for(unsigned r1 = 0; r1 < kTTRanks[core]; ++r1) {
                for(unsigned i = 0; i < kTTShapes[core]; ++i) {
                    for(unsigned j = 0; j < kTTOutputShapes[core]; ++j) {
                        for(unsigned r2 = 0; r2 < kTTRanks[core+1]; ++r2) {
                            // 简化版本：直接复制对应元素
                            unsigned dense_idx = i * output_dim + j;
                            tt_cores[offset++] = dense_matrix[dense_idx] / 
                                               (kTTRanks[core] * kTTRanks[core+1]);
                        }
                    }
                }
            }
        }
        
        return tt_cores;
    }
    
    // 将TT格式转换回密集矩阵（用于验证）
    static std::vector<Data_t> TTToDense(const std::vector<Data_t>& tt_cores,
                                        unsigned input_dim, unsigned output_dim) {
        std::vector<Data_t> dense_matrix(input_dim * output_dim, 0);
        
        // 简化版本：直接累积所有核的贡献
        unsigned offset = 0;
        for(unsigned i = 0; i < input_dim; ++i) {
            for(unsigned j = 0; j < output_dim; ++j) {
                Data_t val = 1.0;
                for(unsigned core = 0; core < 4; ++core) {
                    val *= tt_cores[offset++];
                }
                dense_matrix[i * output_dim + j] = val;
            }
        }
        
        return dense_matrix;
    }
    
    // 打包TT核为HLS内存格式
    static std::vector<MemoryPackM_t> PackTTCores(const std::vector<Data_t>& tt_cores) {
        const unsigned num_packs = (tt_cores.size() + kMemoryWidthM - 1) / kMemoryWidthM;
        std::vector<MemoryPackM_t> packed_cores(num_packs);
        
        for(unsigned i = 0; i < tt_cores.size(); i += kMemoryWidthM) {
            MemoryPackM_t pack;
            for(unsigned j = 0; j < kMemoryWidthM; ++j) {
                if(i + j < tt_cores.size()) {
                    pack[j] = tt_cores[i + j];
                } else {
                    pack[j] = 0;
                }
            }
            packed_cores[i / kMemoryWidthM] = pack;
        }
        
        return packed_cores;
    }
};