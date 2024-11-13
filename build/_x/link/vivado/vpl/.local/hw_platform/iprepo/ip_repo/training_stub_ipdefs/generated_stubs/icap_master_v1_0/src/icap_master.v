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
module icap_master
#(
parameter integer C_CSIB_WIDTH = 1,
parameter integer C_HAS_CSIB = 1,
parameter integer C_RDWRB_WIDTH = 1,
parameter integer C_HAS_RDWRB = 1,
parameter integer C_I_WIDTH = 32,
parameter integer C_HAS_I = 1,
parameter integer C_O_WIDTH = 32,
parameter integer C_HAS_O = 1,
parameter integer C_CLK_WIDTH = 1,
parameter integer C_HAS_CLK = 1,
parameter integer C_AVAIL_WIDTH = 1,
parameter integer C_HAS_AVAIL = 1,
parameter integer C_PRDONE_WIDTH = 1,
parameter integer C_HAS_PRDONE = 1,
parameter integer C_PRERROR_WIDTH = 1,
parameter integer C_HAS_PRERROR = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:icap_rtl:1.0 M_ICAP csib " *)
 output wire [((C_CSIB_WIDTH>0)?C_CSIB_WIDTH:1)-1:0] m_csib,
(* X_INTERFACE_INFO = "xilinx.com:interface:icap_rtl:1.0 M_ICAP rdwrb " *)
 output wire [((C_RDWRB_WIDTH>0)?C_RDWRB_WIDTH:1)-1:0] m_rdwrb,
(* X_INTERFACE_INFO = "xilinx.com:interface:icap_rtl:1.0 M_ICAP i " *)
 output wire [((C_I_WIDTH>0)?C_I_WIDTH:1)-1:0] m_i,
(* X_INTERFACE_INFO = "xilinx.com:interface:icap_rtl:1.0 M_ICAP o " *)
 input wire [((C_O_WIDTH>0)?C_O_WIDTH:1)-1:0] m_o,
(* X_INTERFACE_INFO = "xilinx.com:interface:icap_rtl:1.0 M_ICAP clk " *)
 output wire [((C_CLK_WIDTH>0)?C_CLK_WIDTH:1)-1:0] m_clk,
(* X_INTERFACE_INFO = "xilinx.com:interface:icap_rtl:1.0 M_ICAP avail " *)
 input wire [((C_AVAIL_WIDTH>0)?C_AVAIL_WIDTH:1)-1:0] m_avail,
(* X_INTERFACE_INFO = "xilinx.com:interface:icap_rtl:1.0 M_ICAP prdone " *)
 input wire [((C_PRDONE_WIDTH>0)?C_PRDONE_WIDTH:1)-1:0] m_prdone,
(* X_INTERFACE_INFO = "xilinx.com:interface:icap_rtl:1.0 M_ICAP prerror " *)
 input wire [((C_PRERROR_WIDTH>0)?C_PRERROR_WIDTH:1)-1:0] m_prerror,
input wire preserve_aclk
);
localparam LP_INPUTS_WIDTH =  (C_O_WIDTH+C_AVAIL_WIDTH+C_PRDONE_WIDTH+C_PRERROR_WIDTH);
localparam LP_SHIFTER_WIDTH = (LP_INPUTS_WIDTH >= 4) ? LP_INPUTS_WIDTH : 4;
(* dont_touch = "true" *) wire shifter_o;
(* dont_touch = "true" *) wire [LP_SHIFTER_WIDTH-1:0] shifter_i;
(* dont_touch = "true" *) reg [LP_SHIFTER_WIDTH-1:0] shifter_d;
assign shifter_i = { m_o,m_avail,m_prdone,m_prerror };
always @(posedge preserve_aclk) begin
   if (shifter_d[0] === 1'b1) begin
   	shifter_d <= shifter_i;
   end else begin
   	shifter_d <= {shifter_d[0], shifter_d[1+:(LP_SHIFTER_WIDTH-1)]};
   end
end
assign shifter_o = shifter_d[0];
assign m_csib = { C_CSIB_WIDTH {shifter_o}};
assign m_rdwrb = { C_RDWRB_WIDTH {shifter_o}};
assign m_i = { C_I_WIDTH {shifter_o}};
assign m_clk = { C_CLK_WIDTH {shifter_o}};
endmodule
