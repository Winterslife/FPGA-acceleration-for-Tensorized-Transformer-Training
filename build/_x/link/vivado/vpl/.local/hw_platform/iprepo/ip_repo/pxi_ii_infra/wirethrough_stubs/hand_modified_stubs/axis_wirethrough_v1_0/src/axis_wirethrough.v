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
module axis_wirethrough
#(
parameter integer C_TID_WIDTH = 1,
parameter integer C_HAS_TID = 1,
parameter integer C_TDEST_WIDTH = 1,
parameter integer C_HAS_TDEST = 1,
parameter integer C_TDATA_WIDTH = 1,
parameter integer C_HAS_TDATA = 1,
parameter integer C_TSTRB_WIDTH = 1,
parameter integer C_HAS_TSTRB = 1,
parameter integer C_TKEEP_WIDTH = 1,
parameter integer C_HAS_TKEEP = 1,
parameter integer C_TLAST_WIDTH = 1,
parameter integer C_HAS_TLAST = 1,
parameter integer C_TUSER_WIDTH = 1,
parameter integer C_HAS_TUSER = 1,
parameter integer C_TVALID_WIDTH = 1,
parameter integer C_HAS_TVALID = 1,
parameter integer C_TREADY_WIDTH = 1,
parameter integer C_HAS_TREADY = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 M_AXIS TID " *)
 output wire [((C_TID_WIDTH>0)?C_TID_WIDTH:1)-1:0] m_tid,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 M_AXIS TDEST " *)
 output wire [((C_TDEST_WIDTH>0)?C_TDEST_WIDTH:1)-1:0] m_tdest,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 M_AXIS TDATA " *)
 output wire [((C_TDATA_WIDTH>0)?C_TDATA_WIDTH:1)-1:0] m_tdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 M_AXIS TSTRB " *)
 output wire [((C_TSTRB_WIDTH>0)?C_TSTRB_WIDTH:1)-1:0] m_tstrb,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 M_AXIS TKEEP " *)
 output wire [((C_TKEEP_WIDTH>0)?C_TKEEP_WIDTH:1)-1:0] m_tkeep,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 M_AXIS TLAST " *)
 output wire [((C_TLAST_WIDTH>0)?C_TLAST_WIDTH:1)-1:0] m_tlast,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 M_AXIS TUSER " *)
 output wire [((C_TUSER_WIDTH>0)?C_TUSER_WIDTH:1)-1:0] m_tuser,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 M_AXIS TVALID " *)
 output wire [((C_TVALID_WIDTH>0)?C_TVALID_WIDTH:1)-1:0] m_tvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 M_AXIS TREADY " *)
 input wire [((C_TREADY_WIDTH>0)?C_TREADY_WIDTH:1)-1:0] m_tready,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 S_AXIS TID " *)
input wire [((C_TID_WIDTH>0)?C_TID_WIDTH:1)-1:0] s_tid,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 S_AXIS TDEST " *)
input wire [((C_TDEST_WIDTH>0)?C_TDEST_WIDTH:1)-1:0] s_tdest,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 S_AXIS TDATA " *)
input wire [((C_TDATA_WIDTH>0)?C_TDATA_WIDTH:1)-1:0] s_tdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 S_AXIS TSTRB " *)
input wire [((C_TSTRB_WIDTH>0)?C_TSTRB_WIDTH:1)-1:0] s_tstrb,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 S_AXIS TKEEP " *)
input wire [((C_TKEEP_WIDTH>0)?C_TKEEP_WIDTH:1)-1:0] s_tkeep,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 S_AXIS TLAST " *)
input wire [((C_TLAST_WIDTH>0)?C_TLAST_WIDTH:1)-1:0] s_tlast,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 S_AXIS TUSER " *)
input wire [((C_TUSER_WIDTH>0)?C_TUSER_WIDTH:1)-1:0] s_tuser,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 S_AXIS TVALID " *)
input wire [((C_TVALID_WIDTH>0)?C_TVALID_WIDTH:1)-1:0] s_tvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 S_AXIS TREADY " *)
output wire [((C_TREADY_WIDTH>0)?C_TREADY_WIDTH:1)-1:0] s_tready
);
assign m_tid = s_tid;
assign m_tdest = s_tdest;
assign m_tdata = s_tdata;
assign m_tstrb = s_tstrb;
assign m_tkeep = s_tkeep;
assign m_tlast = s_tlast;
assign m_tuser = s_tuser;
assign m_tvalid = s_tvalid;
assign s_tready = m_tready;
endmodule
