; ModuleID = '/home/minghe/gemm_hls/build/MatrixMultiplication/xcu250-figd2104-2L-e/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hlslib::DataPack<float, 16>" = type { %"struct.ap_uint<512>" }
%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }

; Function Attrs: noinline
define void @apatb_MatrixMultiplicationKernel_ir(%"class.hlslib::DataPack<float, 16>"* noalias nocapture nonnull readonly "maxi" %a, %"class.hlslib::DataPack<float, 16>"* noalias nocapture nonnull readonly "maxi" %b, %"class.hlslib::DataPack<float, 16>"* noalias nocapture nonnull "maxi" %c, i32 %size_n, i32 %size_k, i32 %size_m) local_unnamed_addr #0 {
entry:
  %a_copy = alloca i512, align 512
  %b_copy = alloca i512, align 512
  %c_copy = alloca i512, align 512
  call fastcc void @copy_in(%"class.hlslib::DataPack<float, 16>"* nonnull %a, i512* nonnull align 512 %a_copy, %"class.hlslib::DataPack<float, 16>"* nonnull %b, i512* nonnull align 512 %b_copy, %"class.hlslib::DataPack<float, 16>"* nonnull %c, i512* nonnull align 512 %c_copy)
  call void @apatb_MatrixMultiplicationKernel_hw(i512* %a_copy, i512* %b_copy, i512* %c_copy, i32 %size_n, i32 %size_k, i32 %size_m)
  call void @copy_back(%"class.hlslib::DataPack<float, 16>"* %a, i512* %a_copy, %"class.hlslib::DataPack<float, 16>"* %b, i512* %b_copy, %"class.hlslib::DataPack<float, 16>"* %c, i512* %c_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"class.hlslib::DataPack<float, 16>"* noalias readonly "unpacked"="0", i512* noalias nocapture align 512 "unpacked"="1.0", %"class.hlslib::DataPack<float, 16>"* noalias readonly "unpacked"="2", i512* noalias nocapture align 512 "unpacked"="3.0", %"class.hlslib::DataPack<float, 16>"* noalias readonly "unpacked"="4", i512* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hlslib::DataPack<float, 16>"(i512* align 512 %1, %"class.hlslib::DataPack<float, 16>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hlslib::DataPack<float, 16>"(i512* align 512 %3, %"class.hlslib::DataPack<float, 16>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hlslib::DataPack<float, 16>"(i512* align 512 %5, %"class.hlslib::DataPack<float, 16>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"class.hlslib::DataPack<float, 16>"* noalias "unpacked"="0", i512* noalias nocapture readonly align 512 "unpacked"="1.0", %"class.hlslib::DataPack<float, 16>"* noalias "unpacked"="2", i512* noalias nocapture readonly align 512 "unpacked"="3.0", %"class.hlslib::DataPack<float, 16>"* noalias "unpacked"="4", i512* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hlslib::DataPack<float, 16>.26"(%"class.hlslib::DataPack<float, 16>"* %0, i512* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hlslib::DataPack<float, 16>.26"(%"class.hlslib::DataPack<float, 16>"* %2, i512* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hlslib::DataPack<float, 16>.26"(%"class.hlslib::DataPack<float, 16>"* %4, i512* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hlslib::DataPack<float, 16>.26"(%"class.hlslib::DataPack<float, 16>"* noalias "unpacked"="0" %dst, i512* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hlslib::DataPack<float, 16>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.0.06 = getelementptr %"class.hlslib::DataPack<float, 16>", %"class.hlslib::DataPack<float, 16>"* %dst, i64 0, i32 0, i32 0, i32 0, i32 0
  %1 = load i512, i512* %src, align 512
  store i512 %1, i512* %dst.0.0.0.06, align 64
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hlslib::DataPack<float, 16>"(i512* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hlslib::DataPack<float, 16>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hlslib::DataPack<float, 16>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.0.05 = getelementptr %"class.hlslib::DataPack<float, 16>", %"class.hlslib::DataPack<float, 16>"* %src, i64 0, i32 0, i32 0, i32 0, i32 0
  %1 = load i512, i512* %src.0.0.0.05, align 64
  store i512 %1, i512* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_MatrixMultiplicationKernel_hw(i512*, i512*, i512*, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"class.hlslib::DataPack<float, 16>"* noalias "unpacked"="0", i512* noalias nocapture readonly align 512 "unpacked"="1.0", %"class.hlslib::DataPack<float, 16>"* noalias "unpacked"="2", i512* noalias nocapture readonly align 512 "unpacked"="3.0", %"class.hlslib::DataPack<float, 16>"* noalias "unpacked"="4", i512* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hlslib::DataPack<float, 16>.26"(%"class.hlslib::DataPack<float, 16>"* %4, i512* align 512 %5)
  ret void
}

define void @MatrixMultiplicationKernel_hw_stub_wrapper(i512*, i512*, i512*, i32, i32, i32) #4 {
entry:
  %6 = alloca %"class.hlslib::DataPack<float, 16>"
  %7 = alloca %"class.hlslib::DataPack<float, 16>"
  %8 = alloca %"class.hlslib::DataPack<float, 16>"
  call void @copy_out(%"class.hlslib::DataPack<float, 16>"* %6, i512* %0, %"class.hlslib::DataPack<float, 16>"* %7, i512* %1, %"class.hlslib::DataPack<float, 16>"* %8, i512* %2)
  call void @MatrixMultiplicationKernel_hw_stub(%"class.hlslib::DataPack<float, 16>"* %6, %"class.hlslib::DataPack<float, 16>"* %7, %"class.hlslib::DataPack<float, 16>"* %8, i32 %3, i32 %4, i32 %5)
  call void @copy_in(%"class.hlslib::DataPack<float, 16>"* %6, i512* %0, %"class.hlslib::DataPack<float, 16>"* %7, i512* %1, %"class.hlslib::DataPack<float, 16>"* %8, i512* %2)
  ret void
}

declare void @MatrixMultiplicationKernel_hw_stub(%"class.hlslib::DataPack<float, 16>"* noalias nocapture nonnull readonly, %"class.hlslib::DataPack<float, 16>"* noalias nocapture nonnull readonly, %"class.hlslib::DataPack<float, 16>"* noalias nocapture nonnull, i32, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
