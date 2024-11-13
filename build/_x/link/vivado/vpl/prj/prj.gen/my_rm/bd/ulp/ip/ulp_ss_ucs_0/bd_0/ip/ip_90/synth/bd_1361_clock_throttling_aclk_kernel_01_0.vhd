-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:shell_utils_clock_throttling:2.0
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY shell_utils_clock_throttling_v2_0_0;
USE shell_utils_clock_throttling_v2_0_0.shell_utils_clock_throttling;

ENTITY bd_1361_clock_throttling_aclk_kernel_01_0 IS
  PORT (
    Clk_In : IN STD_LOGIC;
    Rst_In : IN STD_LOGIC;
    Locked : IN STD_LOGIC;
    Startup_Done : IN STD_LOGIC;
    Shutdown_Latch : IN STD_LOGIC;
    Rate_Upd_Tog : IN STD_LOGIC;
    Rate_In : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    Rst_Async : OUT STD_LOGIC;
    Clk_Out : OUT STD_LOGIC;
    Clk_Out_Cont : OUT STD_LOGIC
  );
END bd_1361_clock_throttling_aclk_kernel_01_0;

ARCHITECTURE bd_1361_clock_throttling_aclk_kernel_01_0_arch OF bd_1361_clock_throttling_aclk_kernel_01_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_1361_clock_throttling_aclk_kernel_01_0_arch: ARCHITECTURE IS "yes";
  COMPONENT shell_utils_clock_throttling IS
    GENERIC (
      CLK_SLOW_DIV : INTEGER;
      SYNTH_SIZE : INTEGER;
      IS_VERSAL : BOOLEAN;
      SIM_DEVICE : STRING
    );
    PORT (
      Clk_In : IN STD_LOGIC;
      Rst_In : IN STD_LOGIC;
      Locked : IN STD_LOGIC;
      Startup_Done : IN STD_LOGIC;
      Shutdown_Latch : IN STD_LOGIC;
      Rate_Upd_Tog : IN STD_LOGIC;
      Rate_In : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      Rst_Async : OUT STD_LOGIC;
      Clk_Out : OUT STD_LOGIC;
      Clk_Out_Div : OUT STD_LOGIC;
      Clk_Out_Cont : OUT STD_LOGIC
    );
  END COMPONENT shell_utils_clock_throttling;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF bd_1361_clock_throttling_aclk_kernel_01_0_arch: ARCHITECTURE IS "shell_utils_clock_throttling,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF bd_1361_clock_throttling_aclk_kernel_01_0_arch : ARCHITECTURE IS "bd_1361_clock_throttling_aclk_kernel_01_0,shell_utils_clock_throttling,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF bd_1361_clock_throttling_aclk_kernel_01_0_arch: ARCHITECTURE IS "bd_1361_clock_throttling_aclk_kernel_01_0,shell_utils_clock_throttling,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_utils_clock_throttling,x_ipVersion=2.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CLK_SLOW_DIV=1,SYNTH_SIZE=8,IS_VERSAL=false,SIM_DEVICE=ULTRASCALE_PLUS}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Clk_In: SIGNAL IS "XIL_INTERFACENAME Clk_In, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_1361_clkwiz_aclk_kernel_01_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Clk_In: SIGNAL IS "xilinx.com:signal:clock:1.0 Clk_In CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Clk_Out: SIGNAL IS "XIL_INTERFACENAME Clk_Out, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_1361_clkwiz_aclk_kernel_01_0_clk_out1_buf, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Clk_Out: SIGNAL IS "xilinx.com:signal:clock:1.0 Clk_Out CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Clk_Out_Cont: SIGNAL IS "XIL_INTERFACENAME Clk_Out_Cont, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_1361_clkwiz_aclk_kernel_01_0_clk_out1_buf, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Clk_Out_Cont: SIGNAL IS "xilinx.com:signal:clock:1.0 Clk_Out_Cont CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Rst_Async: SIGNAL IS "XIL_INTERFACENAME Rst_Async, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Rst_Async: SIGNAL IS "xilinx.com:signal:reset:1.0 Rst_Async RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Rst_In: SIGNAL IS "XIL_INTERFACENAME Rst_In, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Rst_In: SIGNAL IS "xilinx.com:signal:reset:1.0 Rst_In RST";
BEGIN
  U0 : shell_utils_clock_throttling
    GENERIC MAP (
      CLK_SLOW_DIV => 1,
      SYNTH_SIZE => 8,
      IS_VERSAL => false,
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
    PORT MAP (
      Clk_In => Clk_In,
      Rst_In => Rst_In,
      Locked => Locked,
      Startup_Done => Startup_Done,
      Shutdown_Latch => Shutdown_Latch,
      Rate_Upd_Tog => Rate_Upd_Tog,
      Rate_In => Rate_In,
      Rst_Async => Rst_Async,
      Clk_Out => Clk_Out,
      Clk_Out_Cont => Clk_Out_Cont
    );
END bd_1361_clock_throttling_aclk_kernel_01_0_arch;
