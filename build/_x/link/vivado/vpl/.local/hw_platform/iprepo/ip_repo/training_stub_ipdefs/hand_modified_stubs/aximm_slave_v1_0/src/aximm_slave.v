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
module aximm_slave
#(
parameter integer C_AWID_WIDTH = 1,
parameter integer C_HAS_AWID = 1,
parameter integer C_AWADDR_WIDTH = 1,
parameter integer C_HAS_AWADDR = 1,
parameter integer C_AWLEN_WIDTH = 1,
parameter integer C_HAS_AWLEN = 1,
parameter integer C_AWSIZE_WIDTH = 3,
parameter integer C_HAS_AWSIZE = 1,
parameter integer C_AWBURST_WIDTH = 2,
parameter integer C_HAS_AWBURST = 1,
parameter integer C_AWLOCK_WIDTH = 1,
parameter integer C_HAS_AWLOCK = 1,
parameter integer C_AWCACHE_WIDTH = 4,
parameter integer C_HAS_AWCACHE = 1,
parameter integer C_AWPROT_WIDTH = 3,
parameter integer C_HAS_AWPROT = 1,
parameter integer C_AWREGION_WIDTH = 4,
parameter integer C_HAS_AWREGION = 1,
parameter integer C_AWQOS_WIDTH = 4,
parameter integer C_HAS_AWQOS = 1,
parameter integer C_AWUSER_WIDTH = 1,
parameter integer C_HAS_AWUSER = 1,
parameter integer C_AWVALID_WIDTH = 1,
parameter integer C_HAS_AWVALID = 1,
parameter integer C_AWREADY_WIDTH = 1,
parameter integer C_HAS_AWREADY = 1,
parameter integer C_WID_WIDTH = 1,
parameter integer C_HAS_WID = 1,
parameter integer C_WDATA_WIDTH = 1,
parameter integer C_HAS_WDATA = 1,
parameter integer C_WSTRB_WIDTH = 1,
parameter integer C_HAS_WSTRB = 1,
parameter integer C_WLAST_WIDTH = 1,
parameter integer C_HAS_WLAST = 1,
parameter integer C_WUSER_WIDTH = 1,
parameter integer C_HAS_WUSER = 1,
parameter integer C_WVALID_WIDTH = 1,
parameter integer C_HAS_WVALID = 1,
parameter integer C_WREADY_WIDTH = 1,
parameter integer C_HAS_WREADY = 1,
parameter integer C_BID_WIDTH = 1,
parameter integer C_HAS_BID = 1,
parameter integer C_BRESP_WIDTH = 2,
parameter integer C_HAS_BRESP = 1,
parameter integer C_BUSER_WIDTH = 1,
parameter integer C_HAS_BUSER = 1,
parameter integer C_BVALID_WIDTH = 1,
parameter integer C_HAS_BVALID = 1,
parameter integer C_BREADY_WIDTH = 1,
parameter integer C_HAS_BREADY = 1,
parameter integer C_ARID_WIDTH = 1,
parameter integer C_HAS_ARID = 1,
parameter integer C_ARADDR_WIDTH = 1,
parameter integer C_HAS_ARADDR = 1,
parameter integer C_ARLEN_WIDTH = 1,
parameter integer C_HAS_ARLEN = 1,
parameter integer C_ARSIZE_WIDTH = 3,
parameter integer C_HAS_ARSIZE = 1,
parameter integer C_ARBURST_WIDTH = 2,
parameter integer C_HAS_ARBURST = 1,
parameter integer C_ARLOCK_WIDTH = 1,
parameter integer C_HAS_ARLOCK = 1,
parameter integer C_ARCACHE_WIDTH = 4,
parameter integer C_HAS_ARCACHE = 1,
parameter integer C_ARPROT_WIDTH = 3,
parameter integer C_HAS_ARPROT = 1,
parameter integer C_ARREGION_WIDTH = 4,
parameter integer C_HAS_ARREGION = 1,
parameter integer C_ARQOS_WIDTH = 4,
parameter integer C_HAS_ARQOS = 1,
parameter integer C_ARUSER_WIDTH = 1,
parameter integer C_HAS_ARUSER = 1,
parameter integer C_ARVALID_WIDTH = 1,
parameter integer C_HAS_ARVALID = 1,
parameter integer C_ARREADY_WIDTH = 1,
parameter integer C_HAS_ARREADY = 1,
parameter integer C_RID_WIDTH = 1,
parameter integer C_HAS_RID = 1,
parameter integer C_RDATA_WIDTH = 1,
parameter integer C_HAS_RDATA = 1,
parameter integer C_RRESP_WIDTH = 2,
parameter integer C_HAS_RRESP = 1,
parameter integer C_RLAST_WIDTH = 1,
parameter integer C_HAS_RLAST = 1,
parameter integer C_RUSER_WIDTH = 1,
parameter integer C_HAS_RUSER = 1,
parameter integer C_RVALID_WIDTH = 1,
parameter integer C_HAS_RVALID = 1,
parameter integer C_RREADY_WIDTH = 1,
parameter integer C_HAS_RREADY = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWID " *)
input wire [((C_AWID_WIDTH>0)?C_AWID_WIDTH:1)-1:0] s_awid,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWADDR " *)
input wire [((C_AWADDR_WIDTH>0)?C_AWADDR_WIDTH:1)-1:0] s_awaddr,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWLEN " *)
input wire [((C_AWLEN_WIDTH>0)?C_AWLEN_WIDTH:1)-1:0] s_awlen,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWSIZE " *)
input wire [((C_AWSIZE_WIDTH>0)?C_AWSIZE_WIDTH:1)-1:0] s_awsize,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWBURST " *)
input wire [((C_AWBURST_WIDTH>0)?C_AWBURST_WIDTH:1)-1:0] s_awburst,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWLOCK " *)
input wire [((C_AWLOCK_WIDTH>0)?C_AWLOCK_WIDTH:1)-1:0] s_awlock,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWCACHE " *)
input wire [((C_AWCACHE_WIDTH>0)?C_AWCACHE_WIDTH:1)-1:0] s_awcache,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWPROT " *)
input wire [((C_AWPROT_WIDTH>0)?C_AWPROT_WIDTH:1)-1:0] s_awprot,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWREGION " *)
input wire [((C_AWREGION_WIDTH>0)?C_AWREGION_WIDTH:1)-1:0] s_awregion,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWQOS " *)
input wire [((C_AWQOS_WIDTH>0)?C_AWQOS_WIDTH:1)-1:0] s_awqos,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWUSER " *)
input wire [((C_AWUSER_WIDTH>0)?C_AWUSER_WIDTH:1)-1:0] s_awuser,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWVALID " *)
input wire [((C_AWVALID_WIDTH>0)?C_AWVALID_WIDTH:1)-1:0] s_awvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM AWREADY " *)
output wire [((C_AWREADY_WIDTH>0)?C_AWREADY_WIDTH:1)-1:0] s_awready,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM WID " *)
input wire [((C_WID_WIDTH>0)?C_WID_WIDTH:1)-1:0] s_wid,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM WDATA " *)
input wire [((C_WDATA_WIDTH>0)?C_WDATA_WIDTH:1)-1:0] s_wdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM WSTRB " *)
input wire [((C_WSTRB_WIDTH>0)?C_WSTRB_WIDTH:1)-1:0] s_wstrb,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM WLAST " *)
input wire [((C_WLAST_WIDTH>0)?C_WLAST_WIDTH:1)-1:0] s_wlast,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM WUSER " *)
input wire [((C_WUSER_WIDTH>0)?C_WUSER_WIDTH:1)-1:0] s_wuser,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM WVALID " *)
input wire [((C_WVALID_WIDTH>0)?C_WVALID_WIDTH:1)-1:0] s_wvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM WREADY " *)
output wire [((C_WREADY_WIDTH>0)?C_WREADY_WIDTH:1)-1:0] s_wready,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM BID " *)
output wire [((C_BID_WIDTH>0)?C_BID_WIDTH:1)-1:0] s_bid,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM BRESP " *)
output wire [((C_BRESP_WIDTH>0)?C_BRESP_WIDTH:1)-1:0] s_bresp,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM BUSER " *)
output wire [((C_BUSER_WIDTH>0)?C_BUSER_WIDTH:1)-1:0] s_buser,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM BVALID " *)
output wire [((C_BVALID_WIDTH>0)?C_BVALID_WIDTH:1)-1:0] s_bvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM BREADY " *)
input wire [((C_BREADY_WIDTH>0)?C_BREADY_WIDTH:1)-1:0] s_bready,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARID " *)
input wire [((C_ARID_WIDTH>0)?C_ARID_WIDTH:1)-1:0] s_arid,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARADDR " *)
input wire [((C_ARADDR_WIDTH>0)?C_ARADDR_WIDTH:1)-1:0] s_araddr,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARLEN " *)
input wire [((C_ARLEN_WIDTH>0)?C_ARLEN_WIDTH:1)-1:0] s_arlen,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARSIZE " *)
input wire [((C_ARSIZE_WIDTH>0)?C_ARSIZE_WIDTH:1)-1:0] s_arsize,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARBURST " *)
input wire [((C_ARBURST_WIDTH>0)?C_ARBURST_WIDTH:1)-1:0] s_arburst,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARLOCK " *)
input wire [((C_ARLOCK_WIDTH>0)?C_ARLOCK_WIDTH:1)-1:0] s_arlock,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARCACHE " *)
input wire [((C_ARCACHE_WIDTH>0)?C_ARCACHE_WIDTH:1)-1:0] s_arcache,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARPROT " *)
input wire [((C_ARPROT_WIDTH>0)?C_ARPROT_WIDTH:1)-1:0] s_arprot,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARREGION " *)
input wire [((C_ARREGION_WIDTH>0)?C_ARREGION_WIDTH:1)-1:0] s_arregion,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARQOS " *)
input wire [((C_ARQOS_WIDTH>0)?C_ARQOS_WIDTH:1)-1:0] s_arqos,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARUSER " *)
input wire [((C_ARUSER_WIDTH>0)?C_ARUSER_WIDTH:1)-1:0] s_aruser,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARVALID " *)
input wire [((C_ARVALID_WIDTH>0)?C_ARVALID_WIDTH:1)-1:0] s_arvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM ARREADY " *)
output wire [((C_ARREADY_WIDTH>0)?C_ARREADY_WIDTH:1)-1:0] s_arready,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM RID " *)
output wire [((C_RID_WIDTH>0)?C_RID_WIDTH:1)-1:0] s_rid,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM RDATA " *)
output wire [((C_RDATA_WIDTH>0)?C_RDATA_WIDTH:1)-1:0] s_rdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM RRESP " *)
output wire [((C_RRESP_WIDTH>0)?C_RRESP_WIDTH:1)-1:0] s_rresp,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM RLAST " *)
output wire [((C_RLAST_WIDTH>0)?C_RLAST_WIDTH:1)-1:0] s_rlast,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM RUSER " *)
output wire [((C_RUSER_WIDTH>0)?C_RUSER_WIDTH:1)-1:0] s_ruser,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM RVALID " *)
output wire [((C_RVALID_WIDTH>0)?C_RVALID_WIDTH:1)-1:0] s_rvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm_rtl:1.0 S_AXIMM RREADY " *)
input wire [((C_RREADY_WIDTH>0)?C_RREADY_WIDTH:1)-1:0] s_rready,
input wire preserve_aclk
);
localparam LP_INPUTS_WIDTH =  (C_AWID_WIDTH+C_AWADDR_WIDTH+C_AWLEN_WIDTH+C_AWSIZE_WIDTH+C_AWBURST_WIDTH+C_AWLOCK_WIDTH+C_AWCACHE_WIDTH+C_AWPROT_WIDTH+C_AWREGION_WIDTH+C_AWQOS_WIDTH+C_AWUSER_WIDTH+C_AWVALID_WIDTH+C_WID_WIDTH+C_WDATA_WIDTH+C_WSTRB_WIDTH+C_WLAST_WIDTH+C_WUSER_WIDTH+C_WVALID_WIDTH+C_BREADY_WIDTH+C_ARID_WIDTH+C_ARADDR_WIDTH+C_ARLEN_WIDTH+C_ARSIZE_WIDTH+C_ARBURST_WIDTH+C_ARLOCK_WIDTH+C_ARCACHE_WIDTH+C_ARPROT_WIDTH+C_ARREGION_WIDTH+C_ARQOS_WIDTH+C_ARUSER_WIDTH+C_ARVALID_WIDTH+C_RREADY_WIDTH);
localparam LP_SHIFTER_WIDTH = (LP_INPUTS_WIDTH >= 4) ? LP_INPUTS_WIDTH : 4;
(* dont_touch = "true" *) wire shifter_o;
(* dont_touch = "true" *) wire [LP_SHIFTER_WIDTH-1:0] shifter_i;
(* dont_touch = "true" *) reg [LP_SHIFTER_WIDTH-1:0] shifter_d = {LP_SHIFTER_WIDTH{1'b0}};
assign shifter_i = { s_awid,s_awaddr,s_awlen,s_awsize,s_awburst,s_awlock,s_awcache,s_awprot,s_awregion,s_awqos,s_awuser,s_awvalid,s_wid,s_wdata,s_wstrb,s_wlast,s_wuser,s_wvalid,s_bready,s_arid,s_araddr,s_arlen,s_arsize,s_arburst,s_arlock,s_arcache,s_arprot,s_arregion,s_arqos,s_aruser,s_arvalid,s_rready };
always @(posedge preserve_aclk) begin
   if (shifter_d[0] === 1'b1) begin
   	shifter_d <= shifter_i;
   end else begin
   	shifter_d <= {shifter_d[0], shifter_d[1+:(LP_SHIFTER_WIDTH-1)]};
   end
end
wire [((C_RRESP_WIDTH>0)?C_RRESP_WIDTH:1)-1:0] s_rresp_internal;
wire [((C_BRESP_WIDTH>0)?C_BRESP_WIDTH:1)-1:0] s_bresp_internal;

assign shifter_o = shifter_d[0];
assign s_bresp = s_bvalid ? s_bresp_internal : { C_BRESP_WIDTH {shifter_o}};
assign s_buser = { ((C_BUSER_WIDTH>0)?C_BUSER_WIDTH:1) {shifter_o}};
assign s_rresp = s_rvalid ? s_rresp_internal : { C_RRESP_WIDTH {shifter_o}};
assign s_ruser = { ((C_RUSER_WIDTH>0)?C_RUSER_WIDTH:1) {shifter_o}};

axi_bram_ctrl #(
  .C_BRAM_INST_MODE  							("INTERNAL"),
  .C_MEMORY_DEPTH    							(1024),
  .C_BRAM_ADDR_WIDTH							(10),
  .C_S_AXI_ADDR_WIDTH							(C_AWADDR_WIDTH),
  .C_S_AXI_DATA_WIDTH 						(C_RDATA_WIDTH),
  .C_S_AXI_ID_WIDTH								((C_AWID_WIDTH>0)? C_AWID_WIDTH : 1),
  .C_S_AXI_PROTOCOL								("AXI4"),
  .C_S_AXI_SUPPORTS_NARROW_BURST	(1),
  .C_SINGLE_PORT_BRAM							(0),
  .C_FAMILY												("virtexuplus"),
  .C_READ_LATENCY									(1),
  .C_ECC 													(0)
) ABC (
  .s_axi_aclk(preserve_aclk),
  .s_axi_aresetn	(1'b1),  			
  .s_axi_awid 		(s_awid),       
  .s_axi_awaddr 	(s_awaddr),   
  .s_axi_awlen 		((C_AWLEN_WIDTH>0)	? s_awlen 	:8'h00),
  .s_axi_awsize 	((C_AWSIZE_WIDTH>0)	? s_awsize 	:3'b010),   
  .s_axi_awburst 	((C_AWBURST_WIDTH>0)? s_awburst :2'b01), 
  .s_axi_awlock 	((C_AWLOCK_WIDTH>0)	? s_awlock 	:1'b0),   
  .s_axi_awcache 	((C_AWCACHE_WIDTH>0)? s_awcache :4'b0000), 
  .s_axi_awprot 	((C_AWPROT_WIDTH>0)	? s_awprot 	:3'b000 ),   
  .s_axi_awvalid 	(s_awvalid), 
  .s_axi_awready	(s_awready), 
  .s_axi_wdata 		(s_wdata),     
  .s_axi_wstrb		(s_wstrb),     
  .s_axi_wlast		((C_AWLEN_WIDTH>0)  ? s_wlast   :1'b1),     
  .s_axi_wvalid 	(s_wvalid),   
  .s_axi_wready 	(s_wready),   
  .s_axi_bid 			(s_bid),         
  .s_axi_bresp 		(s_bresp_internal),     
  .s_axi_bvalid 	(s_bvalid),   
  .s_axi_bready 	(s_bready),   
  .s_axi_arid 		(s_arid),       
  .s_axi_araddr 	(s_araddr),   
  .s_axi_arlen 		((C_ARLEN_WIDTH>0)	? s_arlen 	:8'h00),
  .s_axi_arsize 	((C_ARSIZE_WIDTH>0)	? s_arsize 	:3'b010),   
  .s_axi_arburst 	((C_ARBURST_WIDTH>0)? s_arburst :2'b01), 
  .s_axi_arlock 	((C_ARLOCK_WIDTH>0)	? s_arlock 	:1'b0),   
  .s_axi_arcache 	((C_ARCACHE_WIDTH>0)? s_arcache :4'b0000), 
  .s_axi_arprot 	((C_ARPROT_WIDTH>0)	? s_arprot 	:3'b000 ),   
  .s_axi_arvalid 	(s_arvalid), 
  .s_axi_arready 	(s_arready), 
  .s_axi_rid 			(s_rid),         
  .s_axi_rdata 		(s_rdata),     
  .s_axi_rresp 		(s_rresp_internal),     
  .s_axi_rlast 		(s_rlast),     
  .s_axi_rvalid 	(s_rvalid),   
  .s_axi_rready 	(s_rready)    
);


endmodule
