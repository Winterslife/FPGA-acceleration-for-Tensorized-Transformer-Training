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

-- IP VLNV: xilinx.com:ip:shell_utils_clock_throttling_avg:1.0
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY shell_utils_clock_throttling_avg_v1_0_0;
USE shell_utils_clock_throttling_avg_v1_0_0.shell_utils_clock_throttling_avg;

ENTITY bd_1361_clock_throttling_avg_0 IS
  PORT (
    Clk : IN STD_LOGIC;
    Rst : IN STD_LOGIC;
    Rate_Upd_Tog : IN STD_LOGIC;
    Rate : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    Rate_Avg : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
  );
END bd_1361_clock_throttling_avg_0;

ARCHITECTURE bd_1361_clock_throttling_avg_0_arch OF bd_1361_clock_throttling_avg_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_1361_clock_throttling_avg_0_arch: ARCHITECTURE IS "yes";
  COMPONENT shell_utils_clock_throttling_avg IS
    GENERIC (
      SAMPLE_WIDTH : INTEGER;
      SAMPLE_SAT_VAL : INTEGER;
      AVE_NUM_SAMPLES : INTEGER;
      AVE_WIDTH : INTEGER;
      RST_CNT_BITS : INTEGER
    );
    PORT (
      Clk : IN STD_LOGIC;
      Rst : IN STD_LOGIC;
      Rate_Upd_Tog : IN STD_LOGIC;
      Rate : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      Rate_Avg : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
    );
  END COMPONENT shell_utils_clock_throttling_avg;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF bd_1361_clock_throttling_avg_0_arch: ARCHITECTURE IS "shell_utils_clock_throttling_avg,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF bd_1361_clock_throttling_avg_0_arch : ARCHITECTURE IS "bd_1361_clock_throttling_avg_0,shell_utils_clock_throttling_avg,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF bd_1361_clock_throttling_avg_0_arch: ARCHITECTURE IS "bd_1361_clock_throttling_avg_0,shell_utils_clock_throttling_avg,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_utils_clock_throttling_avg,x_ipVersion=1.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SAMPLE_WIDTH=8,SAMPLE_SAT_VAL=128,AVE_NUM_SAMPLES=50,AVE_WIDTH=14,RST_CNT_BITS=6}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Clk: SIGNAL IS "XIL_INTERFACENAME Clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 Clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Rst: SIGNAL IS "XIL_INTERFACENAME Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Rst: SIGNAL IS "xilinx.com:signal:reset:1.0 Rst RST";
BEGIN
  U0 : shell_utils_clock_throttling_avg
    GENERIC MAP (
      SAMPLE_WIDTH => 8,
      SAMPLE_SAT_VAL => 128,
      AVE_NUM_SAMPLES => 50,
      AVE_WIDTH => 14,
      RST_CNT_BITS => 6
    )
    PORT MAP (
      Clk => Clk,
      Rst => Rst,
      Rate_Upd_Tog => Rate_Upd_Tog,
      Rate => Rate,
      Rate_Avg => Rate_Avg
    );
END bd_1361_clock_throttling_avg_0_arch;
