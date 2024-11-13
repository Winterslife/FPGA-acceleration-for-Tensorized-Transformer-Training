<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="MatrixMultiplication" ideType="classic" top="MatrixMultiplicationKernel">
    <solutions>
        <solution name="xcu250-figd2104-2L-e" status=""/>
    </solutions>
    <files>
        <file name="../kernel/Compute.cpp" sc="0" tb="false" cflags="-DMM_DYNAMIC_SIZES -O3 -DMM_SYNTHESIS -DHLSLIB_SYNTHESIS -DHLSLIB_XILINX -std=c++11 -DVITIS_MAJOR_VERSION=2024 -DVITIS_MINOR_VERSION=1 -DVITIS_VERSION=2024.1 -D__VITIS_HLS__ -I/home/minghe/gemm_hls/include -I/home/minghe/gemm_hls/hlslib/include -I/home/minghe/gemm_hls/build" csimflags="" blackbox="false"/>
        <file name="../kernel/Memory.cpp" sc="0" tb="false" cflags="-DMM_DYNAMIC_SIZES -O3 -DMM_SYNTHESIS -DHLSLIB_SYNTHESIS -DHLSLIB_XILINX -std=c++11 -DVITIS_MAJOR_VERSION=2024 -DVITIS_MINOR_VERSION=1 -DVITIS_VERSION=2024.1 -D__VITIS_HLS__ -I/home/minghe/gemm_hls/include -I/home/minghe/gemm_hls/hlslib/include -I/home/minghe/gemm_hls/build" csimflags="" blackbox="false"/>
        <file name="../kernel/Top.cpp" sc="0" tb="false" cflags="-DMM_DYNAMIC_SIZES -O3 -DMM_SYNTHESIS -DHLSLIB_SYNTHESIS -DHLSLIB_XILINX -std=c++11 -DVITIS_MAJOR_VERSION=2024 -DVITIS_MINOR_VERSION=1 -DVITIS_VERSION=2024.1 -D__VITIS_HLS__ -I/home/minghe/gemm_hls/include -I/home/minghe/gemm_hls/hlslib/include -I/home/minghe/gemm_hls/build" csimflags="" blackbox="false"/>
    </files>
</AutoPilot:project>

