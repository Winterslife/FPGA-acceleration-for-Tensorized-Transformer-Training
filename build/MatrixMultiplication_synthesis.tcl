open_project MatrixMultiplication  
open_solution -flow_target vitis xcu250-figd2104-2L-e  
set_part xcu250-figd2104-2L-e  
add_files -cflags "-DMM_DYNAMIC_SIZES -O3 -DMM_SYNTHESIS -DHLSLIB_SYNTHESIS -DHLSLIB_XILINX -std=c++11 -DVITIS_MAJOR_VERSION=2024 -DVITIS_MINOR_VERSION=1 -DVITIS_VERSION=2024.1 -D__VITIS_HLS__ -I/home/minghe/gemm_hls/include -I/home/minghe/gemm_hls/hlslib/include -I/home/minghe/gemm_hls/build" "/home/minghe/gemm_hls/kernel/Compute.cpp /home/minghe/gemm_hls/kernel/Memory.cpp /home/minghe/gemm_hls/kernel/Top.cpp"  
set_top MatrixMultiplicationKernel  
  
csynth_design  
exit