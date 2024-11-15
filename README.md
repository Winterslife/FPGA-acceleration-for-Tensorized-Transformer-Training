Tensor Contraction based on Scalable matrix matrix multiplication on FPGA
=============================================

Downloading the code
--------------------

Prerequisites
-------------

Configuration and running
-------------------------

Selecting tile sizes
--------------------

Parallel performance
--------------------

Publication
-----------

References
----------

[1] Johannes de Fine Licht, Grzegorz Kwasniewski, and Torsten Hoefler, _"Flexible Communication Avoiding Matrix Multiplication on FPGA with High-Level Synthesis"_, in Proceedings of 28th ACM/SIGDA International Symposium on Field-Programmable Gate Arrays (FPGA'20), 2020.

[2] Johannes de Fine Licht, Maciej Besta, Simon Meierhans, and Torsten Hoefler. _"Transformations of High-Level Synthesis Codes for High-Performance Computing."_ IEEE Transactions on Parallel and Distributed Systems (TPDS), Vol. 32, Issue 5, 2021.

[3] Johannes de Fine Licht, and Torsten Hoefler. _"hlslib: Software Engineering for Hardware Design."_, presented at the Fifth International Workshop on
Heterogeneous High-performance Reconfigurable Computing (H2RC'19).



```
cd build
cmake ../ -DMM_DATA_TYPE=float -DMM_PARALLELISM_N=32 -DMM_PARALLELISM_M=8 -DMM_MEMORY_TILE_SIZE_N=512 -DMM_MEMORY_TILE_SIZE_M=512
```

# Princeple

这段代码实现了一个针对Transformer类神经网络的矩阵乘法加速器，主要用于加速序列处理中的线性层计算。

核心数学公式:
```
Output[b,s,o] = ∑(Input[b,s,i] × Weight[i,o])
其中:
b: batch维度
s: sequence维度  
i: input维度
o: output维度
```

关键实现方法:

1. 脉动阵列(Systolic Array)架构:
- 使用多个处理单元(PE)组成阵列
- 每个PE负责部分输入和权重的乘加运算
- PE间通过流水线传递数据,形成脉动效应

2. 数据流优化:
- 双缓存技术减少访存延迟
- 流水线并行处理提高吞吐量
- 使用Stream接口实现PE间通信

3. 存储优化:
- 数据打包(Pack)减少访存带宽
- 矩阵分块(Tiling)提高数据重用
- 支持矩阵转置优化访存模式

4. 并行化策略:
```cpp
kParallelismN: 输入并行度
kParallelismM: 输出并行度
```

整体架构设计为:
```
输入缓存 → PE阵列 → 输出缓存
       ↑        ↑
    权重缓存  控制逻辑
```

通过这些优化技术,实现了高效的矩阵乘法运算加速。



## Linear Layer ##

在Transformer架构中，线性层(Linear Layer)是一个关键组件。本代码加速的就是这一计算过程。

线性层计算公式:
```
Output = Input × Weight + Bias
```

具体到序列处理中:
```
Input shape: [batch_size, seq_len, input_dim]
Weight shape: [input_dim, output_dim] 
Output shape: [batch_size, seq_len, output_dim]
```

每个序列位置都需要进行一次矩阵乘法运算，计算量很大。本代码通过以下方式加速:

1. 并行化:
```cpp
kParallelismN: 输入维度并行 
kParallelismM: 输出维度并行
```

2. 数据重用:
```cpp
// PE中的缓存设计
ComputePackN_t input_buffer[2][kTileSizeN/kParallelismN];
ComputePackM_t output_buffer[kBatchSize][kSeqLen][kTileSizeM/kParallelismM];
```

3. 流水线:
```cpp
#pragma HLS PIPELINE II=1
// 实现输入、计算、输出的重叠执行
```

这种设计实现了高效的序列数据处理。

