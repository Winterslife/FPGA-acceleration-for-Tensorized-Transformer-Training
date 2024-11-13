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
(* black_box="yes" *) module io_bb_uart_slave
#(
parameter integer C_RXD_WIDTH = 1,
parameter integer C_HAS_RXD = 1,
parameter integer C_TXD_WIDTH = 1,
parameter integer C_HAS_TXD = 1,
parameter integer C_RTSN_WIDTH = 1,
parameter integer C_HAS_RTSN = 1,
parameter integer C_CTSN_WIDTH = 1,
parameter integer C_HAS_CTSN = 1,
parameter integer C_DTRN_WIDTH = 1,
parameter integer C_HAS_DTRN = 1,
parameter integer C_DSRN_WIDTH = 1,
parameter integer C_HAS_DSRN = 1,
parameter integer C_BAUDOUTN_WIDTH = 1,
parameter integer C_HAS_BAUDOUTN = 1,
parameter integer C_RCLK_WIDTH = 1,
parameter integer C_HAS_RCLK = 1,
parameter integer C_XIN_WIDTH = 1,
parameter integer C_HAS_XIN = 1,
parameter integer C_XOUT_WIDTH = 1,
parameter integer C_HAS_XOUT = 1,
parameter integer C_DCDN_WIDTH = 1,
parameter integer C_HAS_DCDN = 1,
parameter integer C_DDIS_WIDTH = 1,
parameter integer C_HAS_DDIS = 1,
parameter integer C_OUT1N_WIDTH = 1,
parameter integer C_HAS_OUT1N = 1,
parameter integer C_OUT2N_WIDTH = 1,
parameter integer C_HAS_OUT2N = 1,
parameter integer C_TXRDYN_WIDTH = 1,
parameter integer C_HAS_TXRDYN = 1,
parameter integer C_RXRDYN_WIDTH = 1,
parameter integer C_HAS_RXRDYN = 1,
parameter integer C_RI_WIDTH = 1,
parameter integer C_HAS_RI = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART RxD " *)
output wire [((C_RXD_WIDTH>0)?C_RXD_WIDTH:1)-1:0] s_rxd,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART TxD " *)
output wire [((C_TXD_WIDTH>0)?C_TXD_WIDTH:1)-1:0] s_txd,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART RTSn " *)
output wire [((C_RTSN_WIDTH>0)?C_RTSN_WIDTH:1)-1:0] s_rtsn,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART CTSn " *)
output wire [((C_CTSN_WIDTH>0)?C_CTSN_WIDTH:1)-1:0] s_ctsn,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART DTRn " *)
output wire [((C_DTRN_WIDTH>0)?C_DTRN_WIDTH:1)-1:0] s_dtrn,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART DSRn " *)
output wire [((C_DSRN_WIDTH>0)?C_DSRN_WIDTH:1)-1:0] s_dsrn,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART BAUDOUTn " *)
output wire [((C_BAUDOUTN_WIDTH>0)?C_BAUDOUTN_WIDTH:1)-1:0] s_baudoutn,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART RCLK " *)
output wire [((C_RCLK_WIDTH>0)?C_RCLK_WIDTH:1)-1:0] s_rclk,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART XIN " *)
output wire [((C_XIN_WIDTH>0)?C_XIN_WIDTH:1)-1:0] s_xin,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART XOUT " *)
output wire [((C_XOUT_WIDTH>0)?C_XOUT_WIDTH:1)-1:0] s_xout,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART DCDn " *)
output wire [((C_DCDN_WIDTH>0)?C_DCDN_WIDTH:1)-1:0] s_dcdn,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART DDIS " *)
output wire [((C_DDIS_WIDTH>0)?C_DDIS_WIDTH:1)-1:0] s_ddis,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART OUT1n " *)
output wire [((C_OUT1N_WIDTH>0)?C_OUT1N_WIDTH:1)-1:0] s_out1n,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART OUT2n " *)
output wire [((C_OUT2N_WIDTH>0)?C_OUT2N_WIDTH:1)-1:0] s_out2n,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART TXRDYn " *)
output wire [((C_TXRDYN_WIDTH>0)?C_TXRDYN_WIDTH:1)-1:0] s_txrdyn,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART RXRDYn " *)
output wire [((C_RXRDYN_WIDTH>0)?C_RXRDYN_WIDTH:1)-1:0] s_rxrdyn,
(* X_INTERFACE_INFO = "xilinx.com:interface:uart_rtl:1.0 S_UART RI " *)
output wire [((C_RI_WIDTH>0)?C_RI_WIDTH:1)-1:0] s_ri
);
endmodule
