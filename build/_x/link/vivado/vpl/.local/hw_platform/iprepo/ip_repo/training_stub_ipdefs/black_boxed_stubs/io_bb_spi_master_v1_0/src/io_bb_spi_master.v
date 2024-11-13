// d52cbaca0ef8cf4fd3d6354deb5066970fb6511d02d18d15835e6014ed847fb0
// (c) Copyright 2022 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
(* black_box="yes" *) module io_bb_spi_master
#(
parameter integer C_SPISEL_WIDTH = 1,
parameter integer C_HAS_SPISEL = 1,
parameter integer C_SS_I_WIDTH = 1,
parameter integer C_HAS_SS_I = 1,
parameter integer C_SS_O_WIDTH = 1,
parameter integer C_HAS_SS_O = 1,
parameter integer C_SS_T_WIDTH = 1,
parameter integer C_HAS_SS_T = 1,
parameter integer C_SCK_I_WIDTH = 1,
parameter integer C_HAS_SCK_I = 1,
parameter integer C_SCK_O_WIDTH = 1,
parameter integer C_HAS_SCK_O = 1,
parameter integer C_SCK_T_WIDTH = 1,
parameter integer C_HAS_SCK_T = 1,
parameter integer C_IO0_I_WIDTH = 1,
parameter integer C_HAS_IO0_I = 1,
parameter integer C_IO0_O_WIDTH = 1,
parameter integer C_HAS_IO0_O = 1,
parameter integer C_IO0_T_WIDTH = 1,
parameter integer C_HAS_IO0_T = 1,
parameter integer C_IO1_I_WIDTH = 1,
parameter integer C_HAS_IO1_I = 1,
parameter integer C_IO1_O_WIDTH = 1,
parameter integer C_HAS_IO1_O = 1,
parameter integer C_IO1_T_WIDTH = 1,
parameter integer C_HAS_IO1_T = 1,
parameter integer C_IO2_I_WIDTH = 1,
parameter integer C_HAS_IO2_I = 1,
parameter integer C_IO2_O_WIDTH = 1,
parameter integer C_HAS_IO2_O = 1,
parameter integer C_IO2_T_WIDTH = 1,
parameter integer C_HAS_IO2_T = 1,
parameter integer C_IO3_I_WIDTH = 1,
parameter integer C_HAS_IO3_I = 1,
parameter integer C_IO3_O_WIDTH = 1,
parameter integer C_HAS_IO3_O = 1,
parameter integer C_IO3_T_WIDTH = 1,
parameter integer C_HAS_IO3_T = 1,
parameter integer C_SS1_O_WIDTH = 1,
parameter integer C_HAS_SS1_O = 1,
parameter integer C_SS2_O_WIDTH = 1,
parameter integer C_HAS_SS2_O = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI SPISEL " *)
 input wire [((C_SPISEL_WIDTH>0)?C_SPISEL_WIDTH:1)-1:0] m_spisel,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI SS_I " *)
 input wire [((C_SS_I_WIDTH>0)?C_SS_I_WIDTH:1)-1:0] m_ss_i,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI SS_O " *)
 output wire [((C_SS_O_WIDTH>0)?C_SS_O_WIDTH:1)-1:0] m_ss_o,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI SS_T " *)
 output wire [((C_SS_T_WIDTH>0)?C_SS_T_WIDTH:1)-1:0] m_ss_t,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI SCK_I " *)
 input wire [((C_SCK_I_WIDTH>0)?C_SCK_I_WIDTH:1)-1:0] m_sck_i,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI SCK_O " *)
 output wire [((C_SCK_O_WIDTH>0)?C_SCK_O_WIDTH:1)-1:0] m_sck_o,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI SCK_T " *)
 output wire [((C_SCK_T_WIDTH>0)?C_SCK_T_WIDTH:1)-1:0] m_sck_t,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO0_I " *)
 input wire [((C_IO0_I_WIDTH>0)?C_IO0_I_WIDTH:1)-1:0] m_io0_i,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO0_O " *)
 output wire [((C_IO0_O_WIDTH>0)?C_IO0_O_WIDTH:1)-1:0] m_io0_o,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO0_T " *)
 output wire [((C_IO0_T_WIDTH>0)?C_IO0_T_WIDTH:1)-1:0] m_io0_t,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO1_I " *)
 input wire [((C_IO1_I_WIDTH>0)?C_IO1_I_WIDTH:1)-1:0] m_io1_i,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO1_O " *)
 output wire [((C_IO1_O_WIDTH>0)?C_IO1_O_WIDTH:1)-1:0] m_io1_o,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO1_T " *)
 output wire [((C_IO1_T_WIDTH>0)?C_IO1_T_WIDTH:1)-1:0] m_io1_t,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO2_I " *)
 input wire [((C_IO2_I_WIDTH>0)?C_IO2_I_WIDTH:1)-1:0] m_io2_i,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO2_O " *)
 output wire [((C_IO2_O_WIDTH>0)?C_IO2_O_WIDTH:1)-1:0] m_io2_o,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO2_T " *)
 output wire [((C_IO2_T_WIDTH>0)?C_IO2_T_WIDTH:1)-1:0] m_io2_t,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO3_I " *)
 input wire [((C_IO3_I_WIDTH>0)?C_IO3_I_WIDTH:1)-1:0] m_io3_i,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO3_O " *)
 output wire [((C_IO3_O_WIDTH>0)?C_IO3_O_WIDTH:1)-1:0] m_io3_o,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI IO3_T " *)
 output wire [((C_IO3_T_WIDTH>0)?C_IO3_T_WIDTH:1)-1:0] m_io3_t,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI SS1_O " *)
 output wire [((C_SS1_O_WIDTH>0)?C_SS1_O_WIDTH:1)-1:0] m_ss1_o,
(* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 M_SPI SS2_O " *)
 output wire [((C_SS2_O_WIDTH>0)?C_SS2_O_WIDTH:1)-1:0] m_ss2_o
);
endmodule
