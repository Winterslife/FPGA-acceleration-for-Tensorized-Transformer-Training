// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0_sc.h"

#include "ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0.h"

#include "ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0_core.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0(const sc_core::sc_module_name& nm) : ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0_sc(nm), In0("In0"), In1("In1"), In2("In2"), In3("In3"), In4("In4"), In5("In5"), In6("In6"), In7("In7"), In8("In8"), In9("In9"), In10("In10"), In11("In11"), In12("In12"), In13("In13"), In14("In14"), In15("In15"), In16("In16"), In17("In17"), In18("In18"), In19("In19"), In20("In20"), In21("In21"), In22("In22"), In23("In23"), In24("In24"), In25("In25"), In26("In26"), In27("In27"), In28("In28"), In29("In29"), In30("In30"), In31("In31"), dout("dout")
{

  // initialize pins
  mp_impl->In0(In0);
  mp_impl->In1(In1);
  mp_impl->In2(In2);
  mp_impl->In3(In3);
  mp_impl->In4(In4);
  mp_impl->In5(In5);
  mp_impl->In6(In6);
  mp_impl->In7(In7);
  mp_impl->In8(In8);
  mp_impl->In9(In9);
  mp_impl->In10(In10);
  mp_impl->In11(In11);
  mp_impl->In12(In12);
  mp_impl->In13(In13);
  mp_impl->In14(In14);
  mp_impl->In15(In15);
  mp_impl->In16(In16);
  mp_impl->In17(In17);
  mp_impl->In18(In18);
  mp_impl->In19(In19);
  mp_impl->In20(In20);
  mp_impl->In21(In21);
  mp_impl->In22(In22);
  mp_impl->In23(In23);
  mp_impl->In24(In24);
  mp_impl->In25(In25);
  mp_impl->In26(In26);
  mp_impl->In27(In27);
  mp_impl->In28(In28);
  mp_impl->In29(In29);
  mp_impl->In30(In30);
  mp_impl->In31(In31);
  mp_impl->dout(dout);

}

void ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::before_end_of_elaboration()
{
}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0(const sc_core::sc_module_name& nm) : ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0_sc(nm), In0("In0"), In1("In1"), In2("In2"), In3("In3"), In4("In4"), In5("In5"), In6("In6"), In7("In7"), In8("In8"), In9("In9"), In10("In10"), In11("In11"), In12("In12"), In13("In13"), In14("In14"), In15("In15"), In16("In16"), In17("In17"), In18("In18"), In19("In19"), In20("In20"), In21("In21"), In22("In22"), In23("In23"), In24("In24"), In25("In25"), In26("In26"), In27("In27"), In28("In28"), In29("In29"), In30("In30"), In31("In31"), dout("dout")
{

  // initialize pins
  mp_impl->In0(In0);
  mp_impl->In1(In1);
  mp_impl->In2(In2);
  mp_impl->In3(In3);
  mp_impl->In4(In4);
  mp_impl->In5(In5);
  mp_impl->In6(In6);
  mp_impl->In7(In7);
  mp_impl->In8(In8);
  mp_impl->In9(In9);
  mp_impl->In10(In10);
  mp_impl->In11(In11);
  mp_impl->In12(In12);
  mp_impl->In13(In13);
  mp_impl->In14(In14);
  mp_impl->In15(In15);
  mp_impl->In16(In16);
  mp_impl->In17(In17);
  mp_impl->In18(In18);
  mp_impl->In19(In19);
  mp_impl->In20(In20);
  mp_impl->In21(In21);
  mp_impl->In22(In22);
  mp_impl->In23(In23);
  mp_impl->In24(In24);
  mp_impl->In25(In25);
  mp_impl->In26(In26);
  mp_impl->In27(In27);
  mp_impl->In28(In28);
  mp_impl->In29(In29);
  mp_impl->In30(In30);
  mp_impl->In31(In31);
  mp_impl->dout(dout);

}

void ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::before_end_of_elaboration()
{
}

#endif // XM_SYSTEMC




#ifdef RIVIERA
ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0(const sc_core::sc_module_name& nm) : ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0_sc(nm), In0("In0"), In1("In1"), In2("In2"), In3("In3"), In4("In4"), In5("In5"), In6("In6"), In7("In7"), In8("In8"), In9("In9"), In10("In10"), In11("In11"), In12("In12"), In13("In13"), In14("In14"), In15("In15"), In16("In16"), In17("In17"), In18("In18"), In19("In19"), In20("In20"), In21("In21"), In22("In22"), In23("In23"), In24("In24"), In25("In25"), In26("In26"), In27("In27"), In28("In28"), In29("In29"), In30("In30"), In31("In31"), dout("dout")
{

  // initialize pins
  mp_impl->In0(In0);
  mp_impl->In1(In1);
  mp_impl->In2(In2);
  mp_impl->In3(In3);
  mp_impl->In4(In4);
  mp_impl->In5(In5);
  mp_impl->In6(In6);
  mp_impl->In7(In7);
  mp_impl->In8(In8);
  mp_impl->In9(In9);
  mp_impl->In10(In10);
  mp_impl->In11(In11);
  mp_impl->In12(In12);
  mp_impl->In13(In13);
  mp_impl->In14(In14);
  mp_impl->In15(In15);
  mp_impl->In16(In16);
  mp_impl->In17(In17);
  mp_impl->In18(In18);
  mp_impl->In19(In19);
  mp_impl->In20(In20);
  mp_impl->In21(In21);
  mp_impl->In22(In22);
  mp_impl->In23(In23);
  mp_impl->In24(In24);
  mp_impl->In25(In25);
  mp_impl->In26(In26);
  mp_impl->In27(In27);
  mp_impl->In28(In28);
  mp_impl->In29(In29);
  mp_impl->In30(In30);
  mp_impl->In31(In31);
  mp_impl->dout(dout);

}

void ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::before_end_of_elaboration()
{
}

#endif // RIVIERA




#ifdef VCSSYSTEMC
ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0(const sc_core::sc_module_name& nm) : ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0_sc(nm),  In0("In0"), In1("In1"), In2("In2"), In3("In3"), In4("In4"), In5("In5"), In6("In6"), In7("In7"), In8("In8"), In9("In9"), In10("In10"), In11("In11"), In12("In12"), In13("In13"), In14("In14"), In15("In15"), In16("In16"), In17("In17"), In18("In18"), In19("In19"), In20("In20"), In21("In21"), In22("In22"), In23("In23"), In24("In24"), In25("In25"), In26("In26"), In27("In27"), In28("In28"), In29("In29"), In30("In30"), In31("In31"), dout("dout")
{
  // initialize pins
  mp_impl->In0(In0);
  mp_impl->In1(In1);
  mp_impl->In2(In2);
  mp_impl->In3(In3);
  mp_impl->In4(In4);
  mp_impl->In5(In5);
  mp_impl->In6(In6);
  mp_impl->In7(In7);
  mp_impl->In8(In8);
  mp_impl->In9(In9);
  mp_impl->In10(In10);
  mp_impl->In11(In11);
  mp_impl->In12(In12);
  mp_impl->In13(In13);
  mp_impl->In14(In14);
  mp_impl->In15(In15);
  mp_impl->In16(In16);
  mp_impl->In17(In17);
  mp_impl->In18(In18);
  mp_impl->In19(In19);
  mp_impl->In20(In20);
  mp_impl->In21(In21);
  mp_impl->In22(In22);
  mp_impl->In23(In23);
  mp_impl->In24(In24);
  mp_impl->In25(In25);
  mp_impl->In26(In26);
  mp_impl->In27(In27);
  mp_impl->In28(In28);
  mp_impl->In29(In29);
  mp_impl->In30(In30);
  mp_impl->In31(In31);
  mp_impl->dout(dout);

  // Instantiate Socket Stubs


}

void ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::before_end_of_elaboration()
{
}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0(const sc_core::sc_module_name& nm) : ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0_sc(nm),  In0("In0"), In1("In1"), In2("In2"), In3("In3"), In4("In4"), In5("In5"), In6("In6"), In7("In7"), In8("In8"), In9("In9"), In10("In10"), In11("In11"), In12("In12"), In13("In13"), In14("In14"), In15("In15"), In16("In16"), In17("In17"), In18("In18"), In19("In19"), In20("In20"), In21("In21"), In22("In22"), In23("In23"), In24("In24"), In25("In25"), In26("In26"), In27("In27"), In28("In28"), In29("In29"), In30("In30"), In31("In31"), dout("dout")
{
  // initialize pins
  mp_impl->In0(In0);
  mp_impl->In1(In1);
  mp_impl->In2(In2);
  mp_impl->In3(In3);
  mp_impl->In4(In4);
  mp_impl->In5(In5);
  mp_impl->In6(In6);
  mp_impl->In7(In7);
  mp_impl->In8(In8);
  mp_impl->In9(In9);
  mp_impl->In10(In10);
  mp_impl->In11(In11);
  mp_impl->In12(In12);
  mp_impl->In13(In13);
  mp_impl->In14(In14);
  mp_impl->In15(In15);
  mp_impl->In16(In16);
  mp_impl->In17(In17);
  mp_impl->In18(In18);
  mp_impl->In19(In19);
  mp_impl->In20(In20);
  mp_impl->In21(In21);
  mp_impl->In22(In22);
  mp_impl->In23(In23);
  mp_impl->In24(In24);
  mp_impl->In25(In25);
  mp_impl->In26(In26);
  mp_impl->In27(In27);
  mp_impl->In28(In28);
  mp_impl->In29(In29);
  mp_impl->In30(In30);
  mp_impl->In31(In31);
  mp_impl->dout(dout);

  // Instantiate Socket Stubs


}

void ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::before_end_of_elaboration()
{
}

#endif // MTI_SYSTEMC




ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0::~ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0()
{
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_3_0);
#endif

