
set TopModule "MatrixMultiplicationKernel"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set ResetRegisterNum 3
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix MatrixMultiplicationKernel_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcu250:-figd2104:-2L-e
set SourceFiles {sc {} c {../../../kernel/Compute.cpp ../../../kernel/Memory.cpp ../../../kernel/Top.cpp}}
set SourceFlags {sc {} c {{-DMM_DYNAMIC_SIZES -O3 -DMM_SYNTHESIS -DHLSLIB_SYNTHESIS -DHLSLIB_XILINX -std=c++11 -DVITIS_MAJOR_VERSION=2024 -DVITIS_MINOR_VERSION=1 -DVITIS_VERSION=2024.1 -D__VITIS_HLS__ -I/home/minghe/gemm_hls/include -I/home/minghe/gemm_hls/hlslib/include -I/home/minghe/gemm_hls/build} {-DMM_DYNAMIC_SIZES -O3 -DMM_SYNTHESIS -DHLSLIB_SYNTHESIS -DHLSLIB_XILINX -std=c++11 -DVITIS_MAJOR_VERSION=2024 -DVITIS_MINOR_VERSION=1 -DVITIS_VERSION=2024.1 -D__VITIS_HLS__ -I/home/minghe/gemm_hls/include -I/home/minghe/gemm_hls/hlslib/include -I/home/minghe/gemm_hls/build} {-DMM_DYNAMIC_SIZES -O3 -DMM_SYNTHESIS -DHLSLIB_SYNTHESIS -DHLSLIB_XILINX -std=c++11 -DVITIS_MAJOR_VERSION=2024 -DVITIS_MINOR_VERSION=1 -DVITIS_VERSION=2024.1 -D__VITIS_HLS__ -I/home/minghe/gemm_hls/include -I/home/minghe/gemm_hls/hlslib/include -I/home/minghe/gemm_hls/build}}}
set DirectiveFile {}
set TBFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set TBInstNames {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile xcu250-figd2104-2L-e.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
