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
module bscan_master
#(
parameter integer C_DRCK_WIDTH = 1,
parameter integer C_HAS_DRCK = 1,
parameter integer C_RESET_WIDTH = 1,
parameter integer C_HAS_RESET = 1,
parameter integer C_SEL_WIDTH = 1,
parameter integer C_HAS_SEL = 1,
parameter integer C_CAPTURE_WIDTH = 1,
parameter integer C_HAS_CAPTURE = 1,
parameter integer C_SHIFT_WIDTH = 1,
parameter integer C_HAS_SHIFT = 1,
parameter integer C_UPDATE_WIDTH = 1,
parameter integer C_HAS_UPDATE = 1,
parameter integer C_TDI_WIDTH = 1,
parameter integer C_HAS_TDI = 1,
parameter integer C_RUNTEST_WIDTH = 1,
parameter integer C_HAS_RUNTEST = 1,
parameter integer C_TCK_WIDTH = 1,
parameter integer C_HAS_TCK = 1,
parameter integer C_TMS_WIDTH = 1,
parameter integer C_HAS_TMS = 1,
parameter integer C_BSCANID_EN_WIDTH = 1,
parameter integer C_HAS_BSCANID_EN = 1,
parameter integer C_BSCANID_WIDTH = 32,
parameter integer C_HAS_BSCANID = 1,
parameter integer C_TDO_WIDTH = 1,
parameter integer C_HAS_TDO = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN DRCK " *)
 output wire [((C_DRCK_WIDTH>0)?C_DRCK_WIDTH:1)-1:0] m_drck,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN RESET " *)
 output wire [((C_RESET_WIDTH>0)?C_RESET_WIDTH:1)-1:0] m_reset,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN SEL " *)
 output wire [((C_SEL_WIDTH>0)?C_SEL_WIDTH:1)-1:0] m_sel,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN CAPTURE " *)
 output wire [((C_CAPTURE_WIDTH>0)?C_CAPTURE_WIDTH:1)-1:0] m_capture,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN SHIFT " *)
 output wire [((C_SHIFT_WIDTH>0)?C_SHIFT_WIDTH:1)-1:0] m_shift,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN UPDATE " *)
 output wire [((C_UPDATE_WIDTH>0)?C_UPDATE_WIDTH:1)-1:0] m_update,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN TDI " *)
 output wire [((C_TDI_WIDTH>0)?C_TDI_WIDTH:1)-1:0] m_tdi,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN RUNTEST " *)
 output wire [((C_RUNTEST_WIDTH>0)?C_RUNTEST_WIDTH:1)-1:0] m_runtest,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN TCK " *)
 output wire [((C_TCK_WIDTH>0)?C_TCK_WIDTH:1)-1:0] m_tck,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN TMS " *)
 output wire [((C_TMS_WIDTH>0)?C_TMS_WIDTH:1)-1:0] m_tms,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN BSCANID_EN " *)
 output wire [((C_BSCANID_EN_WIDTH>0)?C_BSCANID_EN_WIDTH:1)-1:0] m_bscanid_en,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN BSCANID " *)
 input wire [((C_BSCANID_WIDTH>0)?C_BSCANID_WIDTH:1)-1:0] m_bscanid,
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan_rtl:1.0 M_BSCAN TDO " *)
 input wire [((C_TDO_WIDTH>0)?C_TDO_WIDTH:1)-1:0] m_tdo,
input wire preserve_aclk
);
localparam LP_INPUTS_WIDTH =  (C_BSCANID_WIDTH+C_TDO_WIDTH);
localparam LP_SHIFTER_WIDTH = (LP_INPUTS_WIDTH >= 4) ? LP_INPUTS_WIDTH : 4;
(* dont_touch = "true" *) wire shifter_o;
(* dont_touch = "true" *) wire [LP_SHIFTER_WIDTH-1:0] shifter_i;
(* dont_touch = "true" *) reg [LP_SHIFTER_WIDTH-1:0] shifter_d;
assign shifter_i = { m_bscanid,m_tdo };
always @(posedge preserve_aclk) begin
   if (shifter_d[0] === 1'b1) begin
   	shifter_d <= shifter_i;
   end else begin
   	shifter_d <= {shifter_d[0], shifter_d[1+:(LP_SHIFTER_WIDTH-1)]};
   end
end
assign shifter_o = shifter_d[0];
assign m_drck = { C_DRCK_WIDTH {shifter_o}};
assign m_reset = { C_RESET_WIDTH {shifter_o}};
assign m_sel = { C_SEL_WIDTH {shifter_o}};
assign m_capture = { C_CAPTURE_WIDTH {shifter_o}};
assign m_shift = { C_SHIFT_WIDTH {shifter_o}};
assign m_update = { C_UPDATE_WIDTH {shifter_o}};
assign m_tdi = { C_TDI_WIDTH {shifter_o}};
assign m_runtest = { C_RUNTEST_WIDTH {shifter_o}};
assign m_tck = { C_TCK_WIDTH {shifter_o}};
assign m_tms = { C_TMS_WIDTH {shifter_o}};
assign m_bscanid_en = { C_BSCANID_EN_WIDTH {shifter_o}};
endmodule
