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
module mbdebug_slave
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
input wire [((C_DISABLE_WIDTH>0)?C_DISABLE_WIDTH:1)-1:0] s_disable,
input wire preserve_aclk
);
localparam LP_INPUTS_WIDTH =  (C_CLK_WIDTH+C_TDI_WIDTH+C_REG_EN_WIDTH+C_SHIFT_WIDTH+C_CAPTURE_WIDTH+C_UPDATE_WIDTH+C_RST_WIDTH+C_TRIG_ACK_IN_WIDTH+C_TRIG_OUT_WIDTH+C_TRCLK_WIDTH+C_TRREADY_WIDTH+C_AWADDR_WIDTH+C_AWVALID_WIDTH+C_WDATA_WIDTH+C_WVALID_WIDTH+C_BREADY_WIDTH+C_ARADDR_WIDTH+C_ARVALID_WIDTH+C_RREADY_WIDTH+C_DISABLE_WIDTH);
localparam LP_SHIFTER_WIDTH = (LP_INPUTS_WIDTH >= 4) ? LP_INPUTS_WIDTH : 4;
(* dont_touch = "true" *) wire shifter_o;
(* dont_touch = "true" *) wire [LP_SHIFTER_WIDTH-1:0] shifter_i;
(* dont_touch = "true" *) reg [LP_SHIFTER_WIDTH-1:0] shifter_d;
assign shifter_i = { s_clk,s_tdi,s_reg_en,s_shift,s_capture,s_update,s_rst,s_trig_ack_in,s_trig_out,s_trclk,s_trready,s_awaddr,s_awvalid,s_wdata,s_wvalid,s_bready,s_araddr,s_arvalid,s_rready,s_disable };
always @(posedge preserve_aclk) begin
   if (shifter_d[0] === 1'b1) begin
   	shifter_d <= shifter_i;
   end else begin
   	shifter_d <= {shifter_d[0], shifter_d[1+:(LP_SHIFTER_WIDTH-1)]};
   end
end
assign shifter_o = shifter_d[0];
assign s_tdo = { C_TDO_WIDTH {shifter_o}};
assign s_trig_in = { C_TRIG_IN_WIDTH {shifter_o}};
assign s_trig_ack_out = { C_TRIG_ACK_OUT_WIDTH {shifter_o}};
assign s_trdata = { C_TRDATA_WIDTH {shifter_o}};
assign s_trvalid = { C_TRVALID_WIDTH {shifter_o}};
assign s_awready = { C_AWREADY_WIDTH {shifter_o}};
assign s_wready = { C_WREADY_WIDTH {shifter_o}};
assign s_bresp = { C_BRESP_WIDTH {shifter_o}};
assign s_bvalid = { C_BVALID_WIDTH {shifter_o}};
assign s_arready = { C_ARREADY_WIDTH {shifter_o}};
assign s_rdata = { C_RDATA_WIDTH {shifter_o}};
assign s_rresp = { C_RRESP_WIDTH {shifter_o}};
assign s_rvalid = { C_RVALID_WIDTH {shifter_o}};
endmodule
