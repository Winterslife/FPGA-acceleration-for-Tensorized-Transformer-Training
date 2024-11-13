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
module mbdebug_wirethrough
#(
parameter integer C_CLK_WIDTH = 1,
parameter integer C_HAS_CLK = 1,
parameter integer C_TDI_WIDTH = 1,
parameter integer C_HAS_TDI = 1,
parameter integer C_TDO_WIDTH = 1,
parameter integer C_HAS_TDO = 1,
parameter integer C_REG_EN_WIDTH = 8,
parameter integer C_HAS_REG_EN = 1,
parameter integer C_SHIFT_WIDTH = 1,
parameter integer C_HAS_SHIFT = 1,
parameter integer C_CAPTURE_WIDTH = 1,
parameter integer C_HAS_CAPTURE = 1,
parameter integer C_UPDATE_WIDTH = 1,
parameter integer C_HAS_UPDATE = 1,
parameter integer C_RST_WIDTH = 1,
parameter integer C_HAS_RST = 1,
parameter integer C_TRIG_IN_WIDTH = 8,
parameter integer C_HAS_TRIG_IN = 1,
parameter integer C_TRIG_ACK_IN_WIDTH = 8,
parameter integer C_HAS_TRIG_ACK_IN = 1,
parameter integer C_TRIG_OUT_WIDTH = 8,
parameter integer C_HAS_TRIG_OUT = 1,
parameter integer C_TRIG_ACK_OUT_WIDTH = 8,
parameter integer C_HAS_TRIG_ACK_OUT = 1,
parameter integer C_TRCLK_WIDTH = 1,
parameter integer C_HAS_TRCLK = 1,
parameter integer C_TRDATA_WIDTH = 36,
parameter integer C_HAS_TRDATA = 1,
parameter integer C_TRREADY_WIDTH = 1,
parameter integer C_HAS_TRREADY = 1,
parameter integer C_TRVALID_WIDTH = 1,
parameter integer C_HAS_TRVALID = 1,
parameter integer C_AWADDR_WIDTH = 1,
parameter integer C_HAS_AWADDR = 1,
parameter integer C_AWVALID_WIDTH = 1,
parameter integer C_HAS_AWVALID = 1,
parameter integer C_AWREADY_WIDTH = 1,
parameter integer C_HAS_AWREADY = 1,
parameter integer C_WDATA_WIDTH = 1,
parameter integer C_HAS_WDATA = 1,
parameter integer C_WVALID_WIDTH = 1,
parameter integer C_HAS_WVALID = 1,
parameter integer C_WREADY_WIDTH = 1,
parameter integer C_HAS_WREADY = 1,
parameter integer C_BRESP_WIDTH = 2,
parameter integer C_HAS_BRESP = 1,
parameter integer C_BVALID_WIDTH = 1,
parameter integer C_HAS_BVALID = 1,
parameter integer C_BREADY_WIDTH = 1,
parameter integer C_HAS_BREADY = 1,
parameter integer C_ARADDR_WIDTH = 1,
parameter integer C_HAS_ARADDR = 1,
parameter integer C_ARVALID_WIDTH = 1,
parameter integer C_HAS_ARVALID = 1,
parameter integer C_ARREADY_WIDTH = 1,
parameter integer C_HAS_ARREADY = 1,
parameter integer C_RDATA_WIDTH = 1,
parameter integer C_HAS_RDATA = 1,
parameter integer C_RRESP_WIDTH = 2,
parameter integer C_HAS_RRESP = 1,
parameter integer C_RVALID_WIDTH = 1,
parameter integer C_HAS_RVALID = 1,
parameter integer C_RREADY_WIDTH = 1,
parameter integer C_HAS_RREADY = 1,
parameter integer C_DISABLE_WIDTH = 1,
parameter integer C_HAS_DISABLE = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG CLK " *)
 output wire [((C_CLK_WIDTH>0)?C_CLK_WIDTH:1)-1:0] m_clk,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG TDI " *)
 output wire [((C_TDI_WIDTH>0)?C_TDI_WIDTH:1)-1:0] m_tdi,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG TDO " *)
 input wire [((C_TDO_WIDTH>0)?C_TDO_WIDTH:1)-1:0] m_tdo,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG REG_EN " *)
 output wire [((C_REG_EN_WIDTH>0)?C_REG_EN_WIDTH:1)-1:0] m_reg_en,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG SHIFT " *)
 output wire [((C_SHIFT_WIDTH>0)?C_SHIFT_WIDTH:1)-1:0] m_shift,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG CAPTURE " *)
 output wire [((C_CAPTURE_WIDTH>0)?C_CAPTURE_WIDTH:1)-1:0] m_capture,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG UPDATE " *)
 output wire [((C_UPDATE_WIDTH>0)?C_UPDATE_WIDTH:1)-1:0] m_update,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG RST " *)
 output wire [((C_RST_WIDTH>0)?C_RST_WIDTH:1)-1:0] m_rst,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG TRIG_IN " *)
 input wire [((C_TRIG_IN_WIDTH>0)?C_TRIG_IN_WIDTH:1)-1:0] m_trig_in,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG TRIG_ACK_IN " *)
 output wire [((C_TRIG_ACK_IN_WIDTH>0)?C_TRIG_ACK_IN_WIDTH:1)-1:0] m_trig_ack_in,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG TRIG_OUT " *)
 output wire [((C_TRIG_OUT_WIDTH>0)?C_TRIG_OUT_WIDTH:1)-1:0] m_trig_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG TRIG_ACK_OUT " *)
 input wire [((C_TRIG_ACK_OUT_WIDTH>0)?C_TRIG_ACK_OUT_WIDTH:1)-1:0] m_trig_ack_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG TRCLK " *)
 output wire [((C_TRCLK_WIDTH>0)?C_TRCLK_WIDTH:1)-1:0] m_trclk,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG TRDATA " *)
 input wire [((C_TRDATA_WIDTH>0)?C_TRDATA_WIDTH:1)-1:0] m_trdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG TRREADY " *)
 output wire [((C_TRREADY_WIDTH>0)?C_TRREADY_WIDTH:1)-1:0] m_trready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG TRVALID " *)
 input wire [((C_TRVALID_WIDTH>0)?C_TRVALID_WIDTH:1)-1:0] m_trvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG AWADDR " *)
 output wire [((C_AWADDR_WIDTH>0)?C_AWADDR_WIDTH:1)-1:0] m_awaddr,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG AWVALID " *)
 output wire [((C_AWVALID_WIDTH>0)?C_AWVALID_WIDTH:1)-1:0] m_awvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG AWREADY " *)
 input wire [((C_AWREADY_WIDTH>0)?C_AWREADY_WIDTH:1)-1:0] m_awready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG WDATA " *)
 output wire [((C_WDATA_WIDTH>0)?C_WDATA_WIDTH:1)-1:0] m_wdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG WVALID " *)
 output wire [((C_WVALID_WIDTH>0)?C_WVALID_WIDTH:1)-1:0] m_wvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG WREADY " *)
 input wire [((C_WREADY_WIDTH>0)?C_WREADY_WIDTH:1)-1:0] m_wready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG BRESP " *)
 input wire [((C_BRESP_WIDTH>0)?C_BRESP_WIDTH:1)-1:0] m_bresp,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG BVALID " *)
 input wire [((C_BVALID_WIDTH>0)?C_BVALID_WIDTH:1)-1:0] m_bvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG BREADY " *)
 output wire [((C_BREADY_WIDTH>0)?C_BREADY_WIDTH:1)-1:0] m_bready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG ARADDR " *)
 output wire [((C_ARADDR_WIDTH>0)?C_ARADDR_WIDTH:1)-1:0] m_araddr,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG ARVALID " *)
 output wire [((C_ARVALID_WIDTH>0)?C_ARVALID_WIDTH:1)-1:0] m_arvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG ARREADY " *)
 input wire [((C_ARREADY_WIDTH>0)?C_ARREADY_WIDTH:1)-1:0] m_arready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG RDATA " *)
 input wire [((C_RDATA_WIDTH>0)?C_RDATA_WIDTH:1)-1:0] m_rdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG RRESP " *)
 input wire [((C_RRESP_WIDTH>0)?C_RRESP_WIDTH:1)-1:0] m_rresp,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG RVALID " *)
 input wire [((C_RVALID_WIDTH>0)?C_RVALID_WIDTH:1)-1:0] m_rvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG RREADY " *)
 output wire [((C_RREADY_WIDTH>0)?C_RREADY_WIDTH:1)-1:0] m_rready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 M_MBDEBUG DISABLE " *)
 output wire [((C_DISABLE_WIDTH>0)?C_DISABLE_WIDTH:1)-1:0] m_disable,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG CLK " *)
input wire [((C_CLK_WIDTH>0)?C_CLK_WIDTH:1)-1:0] s_clk,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG TDI " *)
input wire [((C_TDI_WIDTH>0)?C_TDI_WIDTH:1)-1:0] s_tdi,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG TDO " *)
output wire [((C_TDO_WIDTH>0)?C_TDO_WIDTH:1)-1:0] s_tdo,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG REG_EN " *)
input wire [((C_REG_EN_WIDTH>0)?C_REG_EN_WIDTH:1)-1:0] s_reg_en,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG SHIFT " *)
input wire [((C_SHIFT_WIDTH>0)?C_SHIFT_WIDTH:1)-1:0] s_shift,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG CAPTURE " *)
input wire [((C_CAPTURE_WIDTH>0)?C_CAPTURE_WIDTH:1)-1:0] s_capture,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG UPDATE " *)
input wire [((C_UPDATE_WIDTH>0)?C_UPDATE_WIDTH:1)-1:0] s_update,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG RST " *)
input wire [((C_RST_WIDTH>0)?C_RST_WIDTH:1)-1:0] s_rst,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG TRIG_IN " *)
output wire [((C_TRIG_IN_WIDTH>0)?C_TRIG_IN_WIDTH:1)-1:0] s_trig_in,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG TRIG_ACK_IN " *)
input wire [((C_TRIG_ACK_IN_WIDTH>0)?C_TRIG_ACK_IN_WIDTH:1)-1:0] s_trig_ack_in,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG TRIG_OUT " *)
input wire [((C_TRIG_OUT_WIDTH>0)?C_TRIG_OUT_WIDTH:1)-1:0] s_trig_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG TRIG_ACK_OUT " *)
output wire [((C_TRIG_ACK_OUT_WIDTH>0)?C_TRIG_ACK_OUT_WIDTH:1)-1:0] s_trig_ack_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG TRCLK " *)
input wire [((C_TRCLK_WIDTH>0)?C_TRCLK_WIDTH:1)-1:0] s_trclk,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG TRDATA " *)
output wire [((C_TRDATA_WIDTH>0)?C_TRDATA_WIDTH:1)-1:0] s_trdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG TRREADY " *)
input wire [((C_TRREADY_WIDTH>0)?C_TRREADY_WIDTH:1)-1:0] s_trready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG TRVALID " *)
output wire [((C_TRVALID_WIDTH>0)?C_TRVALID_WIDTH:1)-1:0] s_trvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG AWADDR " *)
input wire [((C_AWADDR_WIDTH>0)?C_AWADDR_WIDTH:1)-1:0] s_awaddr,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG AWVALID " *)
input wire [((C_AWVALID_WIDTH>0)?C_AWVALID_WIDTH:1)-1:0] s_awvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG AWREADY " *)
output wire [((C_AWREADY_WIDTH>0)?C_AWREADY_WIDTH:1)-1:0] s_awready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG WDATA " *)
input wire [((C_WDATA_WIDTH>0)?C_WDATA_WIDTH:1)-1:0] s_wdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG WVALID " *)
input wire [((C_WVALID_WIDTH>0)?C_WVALID_WIDTH:1)-1:0] s_wvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG WREADY " *)
output wire [((C_WREADY_WIDTH>0)?C_WREADY_WIDTH:1)-1:0] s_wready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG BRESP " *)
output wire [((C_BRESP_WIDTH>0)?C_BRESP_WIDTH:1)-1:0] s_bresp,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG BVALID " *)
output wire [((C_BVALID_WIDTH>0)?C_BVALID_WIDTH:1)-1:0] s_bvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG BREADY " *)
input wire [((C_BREADY_WIDTH>0)?C_BREADY_WIDTH:1)-1:0] s_bready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG ARADDR " *)
input wire [((C_ARADDR_WIDTH>0)?C_ARADDR_WIDTH:1)-1:0] s_araddr,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG ARVALID " *)
input wire [((C_ARVALID_WIDTH>0)?C_ARVALID_WIDTH:1)-1:0] s_arvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG ARREADY " *)
output wire [((C_ARREADY_WIDTH>0)?C_ARREADY_WIDTH:1)-1:0] s_arready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG RDATA " *)
output wire [((C_RDATA_WIDTH>0)?C_RDATA_WIDTH:1)-1:0] s_rdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG RRESP " *)
output wire [((C_RRESP_WIDTH>0)?C_RRESP_WIDTH:1)-1:0] s_rresp,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG RVALID " *)
output wire [((C_RVALID_WIDTH>0)?C_RVALID_WIDTH:1)-1:0] s_rvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG RREADY " *)
input wire [((C_RREADY_WIDTH>0)?C_RREADY_WIDTH:1)-1:0] s_rready,
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug_rtl:3.0 S_MBDEBUG DISABLE " *)
input wire [((C_DISABLE_WIDTH>0)?C_DISABLE_WIDTH:1)-1:0] s_disable
);
assign m_clk = s_clk;
assign m_tdi = s_tdi;
assign s_tdo = m_tdo;
assign m_reg_en = s_reg_en;
assign m_shift = s_shift;
assign m_capture = s_capture;
assign m_update = s_update;
assign m_rst = s_rst;
assign s_trig_in = m_trig_in;
assign m_trig_ack_in = s_trig_ack_in;
assign m_trig_out = s_trig_out;
assign s_trig_ack_out = m_trig_ack_out;
assign m_trclk = s_trclk;
assign s_trdata = m_trdata;
assign m_trready = s_trready;
assign s_trvalid = m_trvalid;
assign m_awaddr = s_awaddr;
assign m_awvalid = s_awvalid;
assign s_awready = m_awready;
assign m_wdata = s_wdata;
assign m_wvalid = s_wvalid;
assign s_wready = m_wready;
assign s_bresp = m_bresp;
assign s_bvalid = m_bvalid;
assign m_bready = s_bready;
assign m_araddr = s_araddr;
assign m_arvalid = s_arvalid;
assign s_arready = m_arready;
assign s_rdata = m_rdata;
assign s_rresp = m_rresp;
assign s_rvalid = m_rvalid;
assign m_rready = s_rready;
assign m_disable = s_disable;
endmodule
