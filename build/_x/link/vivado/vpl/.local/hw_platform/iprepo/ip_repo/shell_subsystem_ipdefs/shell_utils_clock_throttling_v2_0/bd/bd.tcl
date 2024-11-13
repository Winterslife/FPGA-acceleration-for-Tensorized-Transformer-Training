# (c) Copyright 2019 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
############################################################

proc propagate { cell args } {

  set ip [get_bd_cells $cell]

  set Clk_In       [get_bd_pins $cell/Clk_In]
  set Clk_Out      [get_bd_pins $cell/Clk_Out]
  set Clk_Out_Cont [get_bd_pins $cell/Clk_Out_Cont]

  set_property CONFIG.FREQ_HZ    [get_property CONFIG.FREQ_HZ    $Clk_In]     $Clk_Out
  set_property CONFIG.PHASE      [get_property CONFIG.PHASE      $Clk_In]     $Clk_Out
  set_property CONFIG.CLK_DOMAIN [get_property CONFIG.CLK_DOMAIN $Clk_In]_buf $Clk_Out

  set_property CONFIG.FREQ_HZ    [get_property CONFIG.FREQ_HZ    $Clk_In]     $Clk_Out_Cont
  set_property CONFIG.PHASE      [get_property CONFIG.PHASE      $Clk_In]     $Clk_Out_Cont
  set_property CONFIG.CLK_DOMAIN [get_property CONFIG.CLK_DOMAIN $Clk_In]_buf $Clk_Out_Cont

  set C_CLK_SLOW_DIV [get_property CONFIG.CLK_SLOW_DIV $ip]

  if {$C_CLK_SLOW_DIV > 1} {

      set Clk_Out_Div [get_bd_pins $cell/Clk_Out_Div]

      set Clk_Out_Div_Freq_Hz [expr [get_property CONFIG.FREQ_HZ $Clk_In] / $C_CLK_SLOW_DIV]

      set_property CONFIG.FREQ_HZ    $Clk_Out_Div_Freq_Hz                         $Clk_Out_Div
      set_property CONFIG.PHASE      [get_property CONFIG.PHASE      $Clk_In]     $Clk_Out_Div
      set_property CONFIG.CLK_DOMAIN [get_property CONFIG.CLK_DOMAIN $Clk_In]_buf $Clk_Out_Div

  }

}
