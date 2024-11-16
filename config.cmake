# Vitis 基础路径
set(VITIS_ROOT "/tools/Xilinx/Vitis/2023.2" CACHE PATH "Path to Vitis installation")
set(VITIS_HLS_ROOT "/tools/Xilinx/Vitis_HLS/2023.2" CACHE PATH "Path to Vitis HLS installation")
set(VIVADO_ROOT "/tools/Xilinx/Vivado/2023.2" CACHE PATH "Path to Vivado installation")

# 编译器和工具
set(Vitis_COMPILER "${VITIS_ROOT}/bin/v++" CACHE FILEPATH "Vitis compiler")
set(Vitis_HLS "${VITIS_HLS_ROOT}/bin/vitis_hls" CACHE FILEPATH "Vitis HLS executable")
set(Vitis_PLATFORMINFO "${VITIS_ROOT}/bin/platforminfo" CACHE FILEPATH "Vitis platform info tool")

# 包含目录和库
set(Vitis_INCLUDE_DIRS 
    "${VITIS_HLS_ROOT}/include"
    "${VITIS_ROOT}/include"
    "${VIVADO_ROOT}/include"
    CACHE STRING "Vitis include directories")

# 浮点运算库
set(Vitis_FLOATING_POINT_LIBRARY "${VITIS_HLS_ROOT}/lib/lnx64.o/libhlsmath.so" CACHE FILEPATH "Vitis floating point library")
set(Vitis_LIBRARIES "${VITIS_ROOT}/lib/lnx64.o/libxilinxopencl.so" CACHE FILEPATH "Vitis libraries")

# 版本信息
set(Vitis_VERSION "2023.2" CACHE STRING "Vitis version")
set(Vitis_MAJOR_VERSION "2023" CACHE STRING "Vitis major version")
set(Vitis_MINOR_VERSION "2" CACHE STRING "Vitis minor version")

# 使用 Vitis HLS
set(Vitis_USE_VITIS_HLS ON CACHE BOOL "Use Vitis HLS instead of Vivado HLS")
add_definitions(-D__VITIS_HLS__)
