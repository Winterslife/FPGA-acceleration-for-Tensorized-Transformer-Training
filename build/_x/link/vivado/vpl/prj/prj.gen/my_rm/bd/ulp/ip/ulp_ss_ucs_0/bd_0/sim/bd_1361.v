//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_1361.bd
//Design : bd_1361
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module aclk_kernel_00_hierarchy_imp_S5ROMS
   (S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk_ctrl,
    aclk_freerun,
    aclk_kernel_00,
    aclk_kernel_00_cont,
    aresetn_ctrl,
    aresetn_kernel_00_slr0,
    aresetn_kernel_00_slr1,
    aresetn_kernel_00_slr2,
    aresetn_kernel_00_slr3,
    aresetn_pcie,
    clock_program_done,
    gapping_demand_toggle,
    power_down,
    requested_gapping_demand_rate,
    shutdown_request_latch);
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk_ctrl;
  input aclk_freerun;
  output aclk_kernel_00;
  output aclk_kernel_00_cont;
  input aresetn_ctrl;
  output [0:0]aresetn_kernel_00_slr0;
  output [0:0]aresetn_kernel_00_slr1;
  output [0:0]aresetn_kernel_00_slr2;
  output [0:0]aresetn_kernel_00_slr3;
  input aresetn_pcie;
  input clock_program_done;
  input gapping_demand_toggle;
  input power_down;
  input [7:0]requested_gapping_demand_rate;
  input shutdown_request_latch;

  wire [23:0]S_AXI_net_ARADDR;
  wire S_AXI_net_ARREADY;
  wire S_AXI_net_ARVALID;
  wire [23:0]S_AXI_net_AWADDR;
  wire S_AXI_net_AWREADY;
  wire S_AXI_net_AWVALID;
  wire S_AXI_net_BREADY;
  wire [1:0]S_AXI_net_BRESP;
  wire S_AXI_net_BVALID;
  wire [31:0]S_AXI_net_RDATA;
  wire S_AXI_net_RREADY;
  wire [1:0]S_AXI_net_RRESP;
  wire S_AXI_net_RVALID;
  wire [31:0]S_AXI_net_WDATA;
  wire S_AXI_net_WREADY;
  wire [3:0]S_AXI_net_WSTRB;
  wire S_AXI_net_WVALID;
  wire aclk_ctrl_net;
  wire aclk_freerun_net;
  wire aresetn_ctrl_net;
  wire aresetn_kernel_00_async_net;
  wire aresetn_pcie_net;
  wire clk_kernel_00_cont_net;
  wire clk_kernel_00_locked_net;
  wire clk_kernel_00_net;
  wire clk_kernel_00_unbuffered_net;
  wire clock_throttling_kernel_00_clk_out_cont_net;
  wire clock_throttling_kernel_00_clk_out_net;
  wire [0:0]fanout_aresetn_kernel_00_slr0_net;
  wire [0:0]fanout_aresetn_kernel_00_slr1_net;
  wire [0:0]fanout_aresetn_kernel_00_slr2_net;
  wire [0:0]fanout_aresetn_kernel_00_slr3_net;
  wire [7:0]gapping_demand_net;
  wire gapping_demand_toggle_net;
  wire power_down_net;
  wire [0:0]psreset_kernel_00_net;
  wire shutdown_request_latched_net;
  wire startup_done_net;

  assign S_AXI_arready = S_AXI_net_ARREADY;
  assign S_AXI_awready = S_AXI_net_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_net_BRESP;
  assign S_AXI_bvalid = S_AXI_net_BVALID;
  assign S_AXI_net_ARADDR = S_AXI_araddr[23:0];
  assign S_AXI_net_ARVALID = S_AXI_arvalid;
  assign S_AXI_net_AWADDR = S_AXI_awaddr[23:0];
  assign S_AXI_net_AWVALID = S_AXI_awvalid;
  assign S_AXI_net_BREADY = S_AXI_bready;
  assign S_AXI_net_RREADY = S_AXI_rready;
  assign S_AXI_net_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_net_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_net_WVALID = S_AXI_wvalid;
  assign S_AXI_rdata[31:0] = S_AXI_net_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_net_RRESP;
  assign S_AXI_rvalid = S_AXI_net_RVALID;
  assign S_AXI_wready = S_AXI_net_WREADY;
  assign aclk_ctrl_net = aclk_ctrl;
  assign aclk_freerun_net = aclk_freerun;
  assign aclk_kernel_00 = clk_kernel_00_net;
  assign aclk_kernel_00_cont = clk_kernel_00_cont_net;
  assign aresetn_ctrl_net = aresetn_ctrl;
  assign aresetn_kernel_00_slr0[0] = fanout_aresetn_kernel_00_slr0_net;
  assign aresetn_kernel_00_slr1[0] = fanout_aresetn_kernel_00_slr1_net;
  assign aresetn_kernel_00_slr2[0] = fanout_aresetn_kernel_00_slr2_net;
  assign aresetn_kernel_00_slr3[0] = fanout_aresetn_kernel_00_slr3_net;
  assign aresetn_pcie_net = aresetn_pcie;
  assign gapping_demand_net = requested_gapping_demand_rate[7:0];
  assign gapping_demand_toggle_net = gapping_demand_toggle;
  assign power_down_net = power_down;
  assign shutdown_request_latched_net = shutdown_request_latch;
  assign startup_done_net = clock_program_done;
  bd_1361_aclk_kernel_00_adapt_0 aclk_kernel_00_adapt
       (.clk_in(clock_throttling_kernel_00_clk_out_net),
        .clk_out(clk_kernel_00_net));
  bd_1361_aclk_kernel_00_cont_adapt_0 aclk_kernel_00_cont_adapt
       (.clk_in(clock_throttling_kernel_00_clk_out_cont_net),
        .clk_out(clk_kernel_00_cont_net));
  bd_1361_clkwiz_aclk_kernel_00_0 clkwiz_aclk_kernel_00
       (.clk_in1(aclk_freerun_net),
        .clk_out1(clk_kernel_00_unbuffered_net),
        .locked(clk_kernel_00_locked_net),
        .power_down(power_down_net),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(S_AXI_net_ARADDR[10:0]),
        .s_axi_aresetn(aresetn_ctrl_net),
        .s_axi_arready(S_AXI_net_ARREADY),
        .s_axi_arvalid(S_AXI_net_ARVALID),
        .s_axi_awaddr(S_AXI_net_AWADDR[10:0]),
        .s_axi_awready(S_AXI_net_AWREADY),
        .s_axi_awvalid(S_AXI_net_AWVALID),
        .s_axi_bready(S_AXI_net_BREADY),
        .s_axi_bresp(S_AXI_net_BRESP),
        .s_axi_bvalid(S_AXI_net_BVALID),
        .s_axi_rdata(S_AXI_net_RDATA),
        .s_axi_rready(S_AXI_net_RREADY),
        .s_axi_rresp(S_AXI_net_RRESP),
        .s_axi_rvalid(S_AXI_net_RVALID),
        .s_axi_wdata(S_AXI_net_WDATA),
        .s_axi_wready(S_AXI_net_WREADY),
        .s_axi_wstrb(S_AXI_net_WSTRB),
        .s_axi_wvalid(S_AXI_net_WVALID));
  bd_1361_clock_throttling_aclk_kernel_00_0 clock_throttling_aclk_kernel_00
       (.Clk_In(clk_kernel_00_unbuffered_net),
        .Clk_Out(clock_throttling_kernel_00_clk_out_net),
        .Clk_Out_Cont(clock_throttling_kernel_00_clk_out_cont_net),
        .Locked(clk_kernel_00_locked_net),
        .Rate_In(gapping_demand_net),
        .Rate_Upd_Tog(gapping_demand_toggle_net),
        .Rst_Async(aresetn_kernel_00_async_net),
        .Rst_In(aresetn_ctrl_net),
        .Shutdown_Latch(shutdown_request_latched_net),
        .Startup_Done(startup_done_net));
  fanout_aresetn_kernel_00_imp_HC8JF9 fanout_aresetn_kernel_00
       (.aclk_kernel_00_cont(clk_kernel_00_cont_net),
        .aresetn_kernel_00(psreset_kernel_00_net),
        .aresetn_kernel_00_slr0(fanout_aresetn_kernel_00_slr0_net),
        .aresetn_kernel_00_slr1(fanout_aresetn_kernel_00_slr1_net),
        .aresetn_kernel_00_slr2(fanout_aresetn_kernel_00_slr2_net),
        .aresetn_kernel_00_slr3(fanout_aresetn_kernel_00_slr3_net));
  bd_1361_psreset_kernel_00_0 psreset_kernel_00
       (.aux_reset_in(aresetn_kernel_00_async_net),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_pcie_net),
        .interconnect_aresetn(psreset_kernel_00_net),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_kernel_00_cont_net));
endmodule

module aclk_kernel_01_hierarchy_imp_12CAO45
   (S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk_ctrl,
    aclk_freerun,
    aclk_kernel_01,
    aclk_kernel_01_cont,
    aresetn_ctrl,
    aresetn_kernel_01_slr0,
    aresetn_kernel_01_slr1,
    aresetn_kernel_01_slr2,
    aresetn_kernel_01_slr3,
    aresetn_pcie,
    clock_program_done,
    gapping_demand_toggle,
    power_down,
    requested_gapping_demand_rate,
    shutdown_request_latch);
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk_ctrl;
  input aclk_freerun;
  output aclk_kernel_01;
  output aclk_kernel_01_cont;
  input aresetn_ctrl;
  output [0:0]aresetn_kernel_01_slr0;
  output [0:0]aresetn_kernel_01_slr1;
  output [0:0]aresetn_kernel_01_slr2;
  output [0:0]aresetn_kernel_01_slr3;
  input aresetn_pcie;
  input clock_program_done;
  input gapping_demand_toggle;
  input power_down;
  input [7:0]requested_gapping_demand_rate;
  input shutdown_request_latch;

  wire [23:0]S_AXI_net_ARADDR;
  wire S_AXI_net_ARREADY;
  wire S_AXI_net_ARVALID;
  wire [23:0]S_AXI_net_AWADDR;
  wire S_AXI_net_AWREADY;
  wire S_AXI_net_AWVALID;
  wire S_AXI_net_BREADY;
  wire [1:0]S_AXI_net_BRESP;
  wire S_AXI_net_BVALID;
  wire [31:0]S_AXI_net_RDATA;
  wire S_AXI_net_RREADY;
  wire [1:0]S_AXI_net_RRESP;
  wire S_AXI_net_RVALID;
  wire [31:0]S_AXI_net_WDATA;
  wire S_AXI_net_WREADY;
  wire [3:0]S_AXI_net_WSTRB;
  wire S_AXI_net_WVALID;
  wire aclk_ctrl_net;
  wire aclk_freerun_net;
  wire aresetn_ctrl_net;
  wire aresetn_kernel_01_async_net;
  wire aresetn_pcie_net;
  wire clk_kernel_01_cont_net;
  wire clk_kernel_01_locked_net;
  wire clk_kernel_01_net;
  wire clk_kernel_01_unbuffered_net;
  wire clock_throttling_kernel_01_clk_out_cont_net;
  wire clock_throttling_kernel_01_clk_out_net;
  wire [0:0]fanout_aresetn_kernel_01_slr0_net;
  wire [0:0]fanout_aresetn_kernel_01_slr1_net;
  wire [0:0]fanout_aresetn_kernel_01_slr2_net;
  wire [0:0]fanout_aresetn_kernel_01_slr3_net;
  wire [7:0]gapping_demand_net;
  wire gapping_demand_toggle_net;
  wire power_down_net;
  wire [0:0]psreset_kernel_01_net;
  wire shutdown_request_latched_net;
  wire startup_done_net;

  assign S_AXI_arready = S_AXI_net_ARREADY;
  assign S_AXI_awready = S_AXI_net_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_net_BRESP;
  assign S_AXI_bvalid = S_AXI_net_BVALID;
  assign S_AXI_net_ARADDR = S_AXI_araddr[23:0];
  assign S_AXI_net_ARVALID = S_AXI_arvalid;
  assign S_AXI_net_AWADDR = S_AXI_awaddr[23:0];
  assign S_AXI_net_AWVALID = S_AXI_awvalid;
  assign S_AXI_net_BREADY = S_AXI_bready;
  assign S_AXI_net_RREADY = S_AXI_rready;
  assign S_AXI_net_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_net_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_net_WVALID = S_AXI_wvalid;
  assign S_AXI_rdata[31:0] = S_AXI_net_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_net_RRESP;
  assign S_AXI_rvalid = S_AXI_net_RVALID;
  assign S_AXI_wready = S_AXI_net_WREADY;
  assign aclk_ctrl_net = aclk_ctrl;
  assign aclk_freerun_net = aclk_freerun;
  assign aclk_kernel_01 = clk_kernel_01_net;
  assign aclk_kernel_01_cont = clk_kernel_01_cont_net;
  assign aresetn_ctrl_net = aresetn_ctrl;
  assign aresetn_kernel_01_slr0[0] = fanout_aresetn_kernel_01_slr0_net;
  assign aresetn_kernel_01_slr1[0] = fanout_aresetn_kernel_01_slr1_net;
  assign aresetn_kernel_01_slr2[0] = fanout_aresetn_kernel_01_slr2_net;
  assign aresetn_kernel_01_slr3[0] = fanout_aresetn_kernel_01_slr3_net;
  assign aresetn_pcie_net = aresetn_pcie;
  assign gapping_demand_net = requested_gapping_demand_rate[7:0];
  assign gapping_demand_toggle_net = gapping_demand_toggle;
  assign power_down_net = power_down;
  assign shutdown_request_latched_net = shutdown_request_latch;
  assign startup_done_net = clock_program_done;
  bd_1361_aclk_kernel_01_adapt_0 aclk_kernel_01_adapt
       (.clk_in(clock_throttling_kernel_01_clk_out_net),
        .clk_out(clk_kernel_01_net));
  bd_1361_aclk_kernel_01_cont_adapt_0 aclk_kernel_01_cont_adapt
       (.clk_in(clock_throttling_kernel_01_clk_out_cont_net),
        .clk_out(clk_kernel_01_cont_net));
  bd_1361_clkwiz_aclk_kernel_01_0 clkwiz_aclk_kernel_01
       (.clk_in1(aclk_freerun_net),
        .clk_out1(clk_kernel_01_unbuffered_net),
        .locked(clk_kernel_01_locked_net),
        .power_down(power_down_net),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(S_AXI_net_ARADDR[10:0]),
        .s_axi_aresetn(aresetn_ctrl_net),
        .s_axi_arready(S_AXI_net_ARREADY),
        .s_axi_arvalid(S_AXI_net_ARVALID),
        .s_axi_awaddr(S_AXI_net_AWADDR[10:0]),
        .s_axi_awready(S_AXI_net_AWREADY),
        .s_axi_awvalid(S_AXI_net_AWVALID),
        .s_axi_bready(S_AXI_net_BREADY),
        .s_axi_bresp(S_AXI_net_BRESP),
        .s_axi_bvalid(S_AXI_net_BVALID),
        .s_axi_rdata(S_AXI_net_RDATA),
        .s_axi_rready(S_AXI_net_RREADY),
        .s_axi_rresp(S_AXI_net_RRESP),
        .s_axi_rvalid(S_AXI_net_RVALID),
        .s_axi_wdata(S_AXI_net_WDATA),
        .s_axi_wready(S_AXI_net_WREADY),
        .s_axi_wstrb(S_AXI_net_WSTRB),
        .s_axi_wvalid(S_AXI_net_WVALID));
  bd_1361_clock_throttling_aclk_kernel_01_0 clock_throttling_aclk_kernel_01
       (.Clk_In(clk_kernel_01_unbuffered_net),
        .Clk_Out(clock_throttling_kernel_01_clk_out_net),
        .Clk_Out_Cont(clock_throttling_kernel_01_clk_out_cont_net),
        .Locked(clk_kernel_01_locked_net),
        .Rate_In(gapping_demand_net),
        .Rate_Upd_Tog(gapping_demand_toggle_net),
        .Rst_Async(aresetn_kernel_01_async_net),
        .Rst_In(aresetn_ctrl_net),
        .Shutdown_Latch(shutdown_request_latched_net),
        .Startup_Done(startup_done_net));
  fanout_aresetn_kernel_01_imp_1EFQNU8 fanout_aresetn_kernel_01
       (.aclk_kernel_01_cont(clk_kernel_01_cont_net),
        .aresetn_kernel_01(psreset_kernel_01_net),
        .aresetn_kernel_01_slr0(fanout_aresetn_kernel_01_slr0_net),
        .aresetn_kernel_01_slr1(fanout_aresetn_kernel_01_slr1_net),
        .aresetn_kernel_01_slr2(fanout_aresetn_kernel_01_slr2_net),
        .aresetn_kernel_01_slr3(fanout_aresetn_kernel_01_slr3_net));
  bd_1361_psreset_kernel_01_0 psreset_kernel_01
       (.aux_reset_in(aresetn_kernel_01_async_net),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_pcie_net),
        .interconnect_aresetn(psreset_kernel_01_net),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_kernel_01_cont_net));
endmodule

(* CORE_GENERATION_INFO = "bd_1361,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_1361,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=132,numReposBlks=110,numNonXlnxBlks=0,numHierBlks=22,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ulp_ss_ucs_0.hwdef" *) 
module bd_1361
   (aclk_ctrl,
    aclk_freerun,
    aclk_kernel_00,
    aclk_kernel_01,
    aclk_pcie,
    aresetn_ctrl,
    aresetn_ctrl_slr0,
    aresetn_ctrl_slr1,
    aresetn_ctrl_slr2,
    aresetn_ctrl_slr3,
    aresetn_kernel_00_slr0,
    aresetn_kernel_00_slr1,
    aresetn_kernel_00_slr2,
    aresetn_kernel_00_slr3,
    aresetn_kernel_01_slr0,
    aresetn_kernel_01_slr1,
    aresetn_kernel_01_slr2,
    aresetn_kernel_01_slr3,
    aresetn_pcie,
    aresetn_pcie_slr0,
    aresetn_pcie_slr1,
    aresetn_pcie_slr2,
    aresetn_pcie_slr3,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arprot,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awprot,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rready,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid,
    shutdown_clocks);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_CLKEN CE, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1:aresetn_ctrl_slr2:aresetn_ctrl_slr3, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_FREERUN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_FREERUN, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk_freerun;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_KERNEL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_KERNEL_00, ASSOCIATED_RESET aresetn_kernel_00_slr0:aresetn_kernel_00_slr1:aresetn_kernel_00_slr2:aresetn_kernel_00_slr3, CLK_DOMAIN cd_aclk_kernel_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output aclk_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_KERNEL_01 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_KERNEL_01, ASSOCIATED_RESET aresetn_kernel_01_slr0:aresetn_kernel_01_slr1:aresetn_kernel_01_slr2:aresetn_kernel_01_slr3, CLK_DOMAIN cd_aclk_kernel_01, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output aclk_kernel_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_PCIE CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_PCIE, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1:aresetn_pcie_slr2:aresetn_pcie_slr3, CLK_DOMAIN cd_pcie_user_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_ctrl_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_ctrl_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR2 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR2, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_ctrl_slr2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR3 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR3, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_ctrl_slr3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_00_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_00_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_00_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_00_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_00_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_00_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_00_SLR2 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_00_SLR2, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_00_slr2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_00_SLR3 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_00_SLR3, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_00_slr3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_01_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_01_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_01_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_01_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_01_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_01_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_01_SLR2 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_01_SLR2, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_01_slr2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_01_SLR3 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_01_SLR3, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_01_slr3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_pcie_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_pcie_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR2 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR2, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_pcie_slr2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR3 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR3, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_pcie_slr3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, ADDR_WIDTH 24, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 1, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [23:0]s_axi_ctrl_mgmt_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT" *) input [2:0]s_axi_ctrl_mgmt_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *) output [0:0]s_axi_ctrl_mgmt_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *) input [0:0]s_axi_ctrl_mgmt_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *) input [23:0]s_axi_ctrl_mgmt_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT" *) input [2:0]s_axi_ctrl_mgmt_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *) output [0:0]s_axi_ctrl_mgmt_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *) input [0:0]s_axi_ctrl_mgmt_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *) input [0:0]s_axi_ctrl_mgmt_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *) output [1:0]s_axi_ctrl_mgmt_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *) output [0:0]s_axi_ctrl_mgmt_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *) output [31:0]s_axi_ctrl_mgmt_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *) input [0:0]s_axi_ctrl_mgmt_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *) output [1:0]s_axi_ctrl_mgmt_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *) output [0:0]s_axi_ctrl_mgmt_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *) input [31:0]s_axi_ctrl_mgmt_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *) output [0:0]s_axi_ctrl_mgmt_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *) input [3:0]s_axi_ctrl_mgmt_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *) input [0:0]s_axi_ctrl_mgmt_wvalid;
  input shutdown_clocks;

  wire aclk_ctrl_net;
  wire aclk_freerun_net;
  wire aclk_kernel_00;
  wire aclk_kernel_00_cont_net;
  wire aclk_kernel_01;
  wire aclk_kernel_01_cont_net;
  wire aclk_pcie_net;
  wire aresetn_ctrl_net;
  wire [0:0]aresetn_ctrl_slr0;
  wire [0:0]aresetn_ctrl_slr1;
  wire [0:0]aresetn_ctrl_slr2;
  wire [0:0]aresetn_ctrl_slr3;
  wire [0:0]aresetn_kernel_00_slr0_net;
  wire [0:0]aresetn_kernel_00_slr1_net;
  wire [0:0]aresetn_kernel_00_slr2_net;
  wire [0:0]aresetn_kernel_00_slr3_net;
  wire [0:0]aresetn_kernel_01_slr0_net;
  wire [0:0]aresetn_kernel_01_slr1_net;
  wire [0:0]aresetn_kernel_01_slr2_net;
  wire [0:0]aresetn_kernel_01_slr3_net;
  wire aresetn_pcie_net;
  wire [0:0]aresetn_pcie_slr0;
  wire [0:0]aresetn_pcie_slr1;
  wire [0:0]aresetn_pcie_slr2;
  wire [0:0]aresetn_pcie_slr3;
  wire [23:0]axi_ic_ctrl_mgmt_top_M00_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M00_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M00_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M00_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M00_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M00_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M00_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_WVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M01_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M01_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M01_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M01_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M01_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M01_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M01_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_WVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M02_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M02_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M02_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M02_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M02_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M02_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M02_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_WVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M03_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M03_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_AWVALID;
  wire [1:0]axi_ic_ctrl_mgmt_top_M03_AXI_BRESP;
  wire [31:0]axi_ic_ctrl_mgmt_top_M03_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M03_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M03_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M03_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_WVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M04_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M04_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M04_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M04_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M04_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M04_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M04_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_WVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M05_AXI_ARADDR;
  wire [2:0]axi_ic_ctrl_mgmt_top_M05_AXI_ARPROT;
  wire [0:0]axi_ic_ctrl_mgmt_top_M05_AXI_ARREADY;
  wire [0:0]axi_ic_ctrl_mgmt_top_M05_AXI_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_M05_AXI_AWADDR;
  wire [2:0]axi_ic_ctrl_mgmt_top_M05_AXI_AWPROT;
  wire [0:0]axi_ic_ctrl_mgmt_top_M05_AXI_AWREADY;
  wire [0:0]axi_ic_ctrl_mgmt_top_M05_AXI_AWVALID;
  wire [0:0]axi_ic_ctrl_mgmt_top_M05_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M05_AXI_BRESP;
  wire [0:0]axi_ic_ctrl_mgmt_top_M05_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M05_AXI_RDATA;
  wire [0:0]axi_ic_ctrl_mgmt_top_M05_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M05_AXI_RRESP;
  wire [0:0]axi_ic_ctrl_mgmt_top_M05_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M05_AXI_WDATA;
  wire [0:0]axi_ic_ctrl_mgmt_top_M05_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M05_AXI_WSTRB;
  wire [0:0]axi_ic_ctrl_mgmt_top_M05_AXI_WVALID;
  wire [13:0]clock_throttling_average_net;
  wire gapping_demand_bready_net;
  wire gapping_demand_bvalid_net;
  wire [7:0]gapping_demand_net;
  wire [0:0]gapping_demand_shutdown_request_ack_net;
  wire [0:0]gapping_demand_throttling_enabled_net;
  wire [0:0]gapping_demand_toggle_net;
  wire power_down_net;
  wire [23:0]s_axi_ctrl_mgmt_ARADDR;
  wire [2:0]s_axi_ctrl_mgmt_ARPROT;
  wire [0:0]s_axi_ctrl_mgmt_ARREADY;
  wire [0:0]s_axi_ctrl_mgmt_ARVALID;
  wire [23:0]s_axi_ctrl_mgmt_AWADDR;
  wire [2:0]s_axi_ctrl_mgmt_AWPROT;
  wire [0:0]s_axi_ctrl_mgmt_AWREADY;
  wire [0:0]s_axi_ctrl_mgmt_AWVALID;
  wire [0:0]s_axi_ctrl_mgmt_BREADY;
  wire [1:0]s_axi_ctrl_mgmt_BRESP;
  wire [0:0]s_axi_ctrl_mgmt_BVALID;
  wire [31:0]s_axi_ctrl_mgmt_RDATA;
  wire [0:0]s_axi_ctrl_mgmt_RREADY;
  wire [1:0]s_axi_ctrl_mgmt_RRESP;
  wire [0:0]s_axi_ctrl_mgmt_RVALID;
  wire [31:0]s_axi_ctrl_mgmt_WDATA;
  wire [0:0]s_axi_ctrl_mgmt_WREADY;
  wire [3:0]s_axi_ctrl_mgmt_WSTRB;
  wire [0:0]s_axi_ctrl_mgmt_WVALID;
  wire shutdown_clocks_net;
  wire shutdown_request_latched_net;
  wire [0:0]startup_done_net;

  assign aclk_ctrl_net = aclk_ctrl;
  assign aclk_freerun_net = aclk_freerun;
  assign aclk_pcie_net = aclk_pcie;
  assign aresetn_ctrl_net = aresetn_ctrl;
  assign aresetn_kernel_00_slr0[0] = aresetn_kernel_00_slr0_net;
  assign aresetn_kernel_00_slr1[0] = aresetn_kernel_00_slr1_net;
  assign aresetn_kernel_00_slr2[0] = aresetn_kernel_00_slr2_net;
  assign aresetn_kernel_00_slr3[0] = aresetn_kernel_00_slr3_net;
  assign aresetn_kernel_01_slr0[0] = aresetn_kernel_01_slr0_net;
  assign aresetn_kernel_01_slr1[0] = aresetn_kernel_01_slr1_net;
  assign aresetn_kernel_01_slr2[0] = aresetn_kernel_01_slr2_net;
  assign aresetn_kernel_01_slr3[0] = aresetn_kernel_01_slr3_net;
  assign aresetn_pcie_net = aresetn_pcie;
  assign s_axi_ctrl_mgmt_ARADDR = s_axi_ctrl_mgmt_araddr[23:0];
  assign s_axi_ctrl_mgmt_ARPROT = s_axi_ctrl_mgmt_arprot[2:0];
  assign s_axi_ctrl_mgmt_ARVALID = s_axi_ctrl_mgmt_arvalid[0];
  assign s_axi_ctrl_mgmt_AWADDR = s_axi_ctrl_mgmt_awaddr[23:0];
  assign s_axi_ctrl_mgmt_AWPROT = s_axi_ctrl_mgmt_awprot[2:0];
  assign s_axi_ctrl_mgmt_AWVALID = s_axi_ctrl_mgmt_awvalid[0];
  assign s_axi_ctrl_mgmt_BREADY = s_axi_ctrl_mgmt_bready[0];
  assign s_axi_ctrl_mgmt_RREADY = s_axi_ctrl_mgmt_rready[0];
  assign s_axi_ctrl_mgmt_WDATA = s_axi_ctrl_mgmt_wdata[31:0];
  assign s_axi_ctrl_mgmt_WSTRB = s_axi_ctrl_mgmt_wstrb[3:0];
  assign s_axi_ctrl_mgmt_WVALID = s_axi_ctrl_mgmt_wvalid[0];
  assign s_axi_ctrl_mgmt_arready[0] = s_axi_ctrl_mgmt_ARREADY;
  assign s_axi_ctrl_mgmt_awready[0] = s_axi_ctrl_mgmt_AWREADY;
  assign s_axi_ctrl_mgmt_bresp[1:0] = s_axi_ctrl_mgmt_BRESP;
  assign s_axi_ctrl_mgmt_bvalid[0] = s_axi_ctrl_mgmt_BVALID;
  assign s_axi_ctrl_mgmt_rdata[31:0] = s_axi_ctrl_mgmt_RDATA;
  assign s_axi_ctrl_mgmt_rresp[1:0] = s_axi_ctrl_mgmt_RRESP;
  assign s_axi_ctrl_mgmt_rvalid[0] = s_axi_ctrl_mgmt_RVALID;
  assign s_axi_ctrl_mgmt_wready[0] = s_axi_ctrl_mgmt_WREADY;
  assign shutdown_clocks_net = shutdown_clocks;
  aclk_kernel_00_hierarchy_imp_S5ROMS aclk_kernel_00_hierarchy
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M00_AXI_ARADDR),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M00_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M00_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M00_AXI_AWADDR),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M00_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M00_AXI_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_top_M00_AXI_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M00_AXI_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_top_M00_AXI_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M00_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M00_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M00_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M00_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M00_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M00_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M00_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M00_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl_net),
        .aclk_freerun(aclk_freerun_net),
        .aclk_kernel_00(aclk_kernel_00),
        .aclk_kernel_00_cont(aclk_kernel_00_cont_net),
        .aresetn_ctrl(aresetn_ctrl_net),
        .aresetn_kernel_00_slr0(aresetn_kernel_00_slr0_net),
        .aresetn_kernel_00_slr1(aresetn_kernel_00_slr1_net),
        .aresetn_kernel_00_slr2(aresetn_kernel_00_slr2_net),
        .aresetn_kernel_00_slr3(aresetn_kernel_00_slr3_net),
        .aresetn_pcie(aresetn_pcie_net),
        .clock_program_done(startup_done_net),
        .gapping_demand_toggle(gapping_demand_toggle_net),
        .power_down(power_down_net),
        .requested_gapping_demand_rate(gapping_demand_net),
        .shutdown_request_latch(shutdown_request_latched_net));
  aclk_kernel_01_hierarchy_imp_12CAO45 aclk_kernel_01_hierarchy
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M01_AXI_ARADDR),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M01_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M01_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M01_AXI_AWADDR),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M01_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M01_AXI_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_top_M01_AXI_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M01_AXI_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_top_M01_AXI_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M01_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M01_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M01_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M01_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M01_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M01_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M01_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M01_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl_net),
        .aclk_freerun(aclk_freerun_net),
        .aclk_kernel_01(aclk_kernel_01),
        .aclk_kernel_01_cont(aclk_kernel_01_cont_net),
        .aresetn_ctrl(aresetn_ctrl_net),
        .aresetn_kernel_01_slr0(aresetn_kernel_01_slr0_net),
        .aresetn_kernel_01_slr1(aresetn_kernel_01_slr1_net),
        .aresetn_kernel_01_slr2(aresetn_kernel_01_slr2_net),
        .aresetn_kernel_01_slr3(aresetn_kernel_01_slr3_net),
        .aresetn_pcie(aresetn_pcie_net),
        .clock_program_done(startup_done_net),
        .gapping_demand_toggle(gapping_demand_toggle_net),
        .power_down(power_down_net),
        .requested_gapping_demand_rate(gapping_demand_net),
        .shutdown_request_latch(shutdown_request_latched_net));
  bd_1361_axi_ic_ctrl_mgmt_top_0 axi_ic_ctrl_mgmt_top
       (.ACLK(aclk_ctrl_net),
        .ARESETN(aresetn_ctrl_net),
        .M00_ACLK(aclk_ctrl_net),
        .M00_ARESETN(aresetn_ctrl_net),
        .M00_AXI_araddr(axi_ic_ctrl_mgmt_top_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_ic_ctrl_mgmt_top_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_ctrl_mgmt_top_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_ctrl_mgmt_top_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_ic_ctrl_mgmt_top_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_ctrl_mgmt_top_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_ctrl_mgmt_top_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ctrl_mgmt_top_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ctrl_mgmt_top_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ctrl_mgmt_top_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_ctrl_mgmt_top_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ctrl_mgmt_top_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ctrl_mgmt_top_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ctrl_mgmt_top_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_ctrl_mgmt_top_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ctrl_mgmt_top_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ctrl_mgmt_top_M00_AXI_WVALID),
        .M01_ACLK(aclk_ctrl_net),
        .M01_ARESETN(aresetn_ctrl_net),
        .M01_AXI_araddr(axi_ic_ctrl_mgmt_top_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_ic_ctrl_mgmt_top_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_ctrl_mgmt_top_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_ic_ctrl_mgmt_top_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_ic_ctrl_mgmt_top_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_ctrl_mgmt_top_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_ic_ctrl_mgmt_top_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_ic_ctrl_mgmt_top_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_ic_ctrl_mgmt_top_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_ic_ctrl_mgmt_top_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_ctrl_mgmt_top_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_ctrl_mgmt_top_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_ctrl_mgmt_top_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_ctrl_mgmt_top_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_ctrl_mgmt_top_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_ctrl_mgmt_top_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_ctrl_mgmt_top_M01_AXI_WVALID),
        .M02_ACLK(aclk_ctrl_net),
        .M02_ARESETN(aresetn_ctrl_net),
        .M02_AXI_araddr(axi_ic_ctrl_mgmt_top_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_ic_ctrl_mgmt_top_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_ctrl_mgmt_top_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_ic_ctrl_mgmt_top_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_ic_ctrl_mgmt_top_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_ctrl_mgmt_top_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_ctrl_mgmt_top_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_ctrl_mgmt_top_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_ctrl_mgmt_top_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_ctrl_mgmt_top_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_ctrl_mgmt_top_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_ctrl_mgmt_top_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_ctrl_mgmt_top_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_ctrl_mgmt_top_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_ctrl_mgmt_top_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_ctrl_mgmt_top_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_ctrl_mgmt_top_M02_AXI_WVALID),
        .M03_ACLK(aclk_ctrl_net),
        .M03_ARESETN(aresetn_ctrl_net),
        .M03_AXI_araddr(axi_ic_ctrl_mgmt_top_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_ic_ctrl_mgmt_top_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_ic_ctrl_mgmt_top_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_ic_ctrl_mgmt_top_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_ic_ctrl_mgmt_top_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_ic_ctrl_mgmt_top_M03_AXI_AWVALID),
        .M03_AXI_bready(gapping_demand_bready_net),
        .M03_AXI_bresp(axi_ic_ctrl_mgmt_top_M03_AXI_BRESP),
        .M03_AXI_bvalid(gapping_demand_bvalid_net),
        .M03_AXI_rdata(axi_ic_ctrl_mgmt_top_M03_AXI_RDATA),
        .M03_AXI_rready(axi_ic_ctrl_mgmt_top_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_ic_ctrl_mgmt_top_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_ic_ctrl_mgmt_top_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_ic_ctrl_mgmt_top_M03_AXI_WDATA),
        .M03_AXI_wready(axi_ic_ctrl_mgmt_top_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_ic_ctrl_mgmt_top_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_ic_ctrl_mgmt_top_M03_AXI_WVALID),
        .M04_ACLK(aclk_ctrl_net),
        .M04_ARESETN(aresetn_ctrl_net),
        .M04_AXI_araddr(axi_ic_ctrl_mgmt_top_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_ic_ctrl_mgmt_top_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_ic_ctrl_mgmt_top_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_ic_ctrl_mgmt_top_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_ic_ctrl_mgmt_top_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_ic_ctrl_mgmt_top_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_ic_ctrl_mgmt_top_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_ic_ctrl_mgmt_top_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_ic_ctrl_mgmt_top_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_ic_ctrl_mgmt_top_M04_AXI_RDATA),
        .M04_AXI_rready(axi_ic_ctrl_mgmt_top_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_ic_ctrl_mgmt_top_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_ic_ctrl_mgmt_top_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_ic_ctrl_mgmt_top_M04_AXI_WDATA),
        .M04_AXI_wready(axi_ic_ctrl_mgmt_top_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_ic_ctrl_mgmt_top_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_ic_ctrl_mgmt_top_M04_AXI_WVALID),
        .M05_ACLK(aclk_ctrl_net),
        .M05_ARESETN(aresetn_ctrl_net),
        .M05_AXI_araddr(axi_ic_ctrl_mgmt_top_M05_AXI_ARADDR),
        .M05_AXI_arprot(axi_ic_ctrl_mgmt_top_M05_AXI_ARPROT),
        .M05_AXI_arready(axi_ic_ctrl_mgmt_top_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_ic_ctrl_mgmt_top_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_ic_ctrl_mgmt_top_M05_AXI_AWADDR),
        .M05_AXI_awprot(axi_ic_ctrl_mgmt_top_M05_AXI_AWPROT),
        .M05_AXI_awready(axi_ic_ctrl_mgmt_top_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_ic_ctrl_mgmt_top_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_ic_ctrl_mgmt_top_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_ic_ctrl_mgmt_top_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_ic_ctrl_mgmt_top_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_ic_ctrl_mgmt_top_M05_AXI_RDATA),
        .M05_AXI_rready(axi_ic_ctrl_mgmt_top_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_ic_ctrl_mgmt_top_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_ic_ctrl_mgmt_top_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_ic_ctrl_mgmt_top_M05_AXI_WDATA),
        .M05_AXI_wready(axi_ic_ctrl_mgmt_top_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_ic_ctrl_mgmt_top_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_ic_ctrl_mgmt_top_M05_AXI_WVALID),
        .S00_ACLK(aclk_ctrl_net),
        .S00_ARESETN(aresetn_ctrl_net),
        .S00_AXI_araddr(s_axi_ctrl_mgmt_ARADDR),
        .S00_AXI_arprot(s_axi_ctrl_mgmt_ARPROT),
        .S00_AXI_arready(s_axi_ctrl_mgmt_ARREADY),
        .S00_AXI_arvalid(s_axi_ctrl_mgmt_ARVALID),
        .S00_AXI_awaddr(s_axi_ctrl_mgmt_AWADDR),
        .S00_AXI_awprot(s_axi_ctrl_mgmt_AWPROT),
        .S00_AXI_awready(s_axi_ctrl_mgmt_AWREADY),
        .S00_AXI_awvalid(s_axi_ctrl_mgmt_AWVALID),
        .S00_AXI_bready(s_axi_ctrl_mgmt_BREADY),
        .S00_AXI_bresp(s_axi_ctrl_mgmt_BRESP),
        .S00_AXI_bvalid(s_axi_ctrl_mgmt_BVALID),
        .S00_AXI_rdata(s_axi_ctrl_mgmt_RDATA),
        .S00_AXI_rready(s_axi_ctrl_mgmt_RREADY),
        .S00_AXI_rresp(s_axi_ctrl_mgmt_RRESP),
        .S00_AXI_rvalid(s_axi_ctrl_mgmt_RVALID),
        .S00_AXI_wdata(s_axi_ctrl_mgmt_WDATA),
        .S00_AXI_wready(s_axi_ctrl_mgmt_WREADY),
        .S00_AXI_wstrb(s_axi_ctrl_mgmt_WSTRB),
        .S00_AXI_wvalid(s_axi_ctrl_mgmt_WVALID));
  bd_1361_build_info_0 build_info
       (.S_AXI_ACLK(aclk_ctrl_net),
        .S_AXI_ARADDR(axi_ic_ctrl_mgmt_top_M02_AXI_ARADDR[4:0]),
        .S_AXI_ARESETN(aresetn_ctrl_net),
        .S_AXI_ARREADY(axi_ic_ctrl_mgmt_top_M02_AXI_ARREADY),
        .S_AXI_ARVALID(axi_ic_ctrl_mgmt_top_M02_AXI_ARVALID),
        .S_AXI_AWADDR(axi_ic_ctrl_mgmt_top_M02_AXI_AWADDR[4:0]),
        .S_AXI_AWREADY(axi_ic_ctrl_mgmt_top_M02_AXI_AWREADY),
        .S_AXI_AWVALID(axi_ic_ctrl_mgmt_top_M02_AXI_AWVALID),
        .S_AXI_BREADY(axi_ic_ctrl_mgmt_top_M02_AXI_BREADY),
        .S_AXI_BRESP(axi_ic_ctrl_mgmt_top_M02_AXI_BRESP),
        .S_AXI_BVALID(axi_ic_ctrl_mgmt_top_M02_AXI_BVALID),
        .S_AXI_RDATA(axi_ic_ctrl_mgmt_top_M02_AXI_RDATA),
        .S_AXI_RREADY(axi_ic_ctrl_mgmt_top_M02_AXI_RREADY),
        .S_AXI_RRESP(axi_ic_ctrl_mgmt_top_M02_AXI_RRESP),
        .S_AXI_RVALID(axi_ic_ctrl_mgmt_top_M02_AXI_RVALID),
        .S_AXI_WDATA(axi_ic_ctrl_mgmt_top_M02_AXI_WDATA),
        .S_AXI_WREADY(axi_ic_ctrl_mgmt_top_M02_AXI_WREADY),
        .S_AXI_WSTRB(axi_ic_ctrl_mgmt_top_M02_AXI_WSTRB),
        .S_AXI_WVALID(axi_ic_ctrl_mgmt_top_M02_AXI_WVALID));
  fanout_aresetn_ctrl_imp_IAX5PU fanout_aresetn_ctrl
       (.aclk_ctrl(aclk_ctrl_net),
        .aresetn_ctrl(aresetn_ctrl_net),
        .aresetn_ctrl_slr0(aresetn_ctrl_slr0),
        .aresetn_ctrl_slr1(aresetn_ctrl_slr1),
        .aresetn_ctrl_slr2(aresetn_ctrl_slr2),
        .aresetn_ctrl_slr3(aresetn_ctrl_slr3));
  fanout_aresetn_pcie_imp_105HDDA fanout_aresetn_pcie
       (.aclk_pcie(aclk_pcie_net),
        .aresetn_pcie(aresetn_pcie_net),
        .aresetn_pcie_slr0(aresetn_pcie_slr0),
        .aresetn_pcie_slr1(aresetn_pcie_slr1),
        .aresetn_pcie_slr2(aresetn_pcie_slr2),
        .aresetn_pcie_slr3(aresetn_pcie_slr3));
  frequency_counters_imp_BQDAM6 frequency_counters
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M05_AXI_ARADDR),
        .S_AXI_arprot(axi_ic_ctrl_mgmt_top_M05_AXI_ARPROT),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M05_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M05_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M05_AXI_AWADDR),
        .S_AXI_awprot(axi_ic_ctrl_mgmt_top_M05_AXI_AWPROT),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M05_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M05_AXI_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_top_M05_AXI_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M05_AXI_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_top_M05_AXI_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M05_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M05_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M05_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M05_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M05_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M05_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M05_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M05_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl_net),
        .aclk_freerun(aclk_freerun_net),
        .aclk_kernel_00(aclk_kernel_00),
        .aclk_kernel_00_cont(aclk_kernel_00_cont_net),
        .aclk_kernel_01(aclk_kernel_01),
        .aclk_kernel_01_cont(aclk_kernel_01_cont_net),
        .aclk_pcie(aclk_pcie_net),
        .aresetn_ctrl(aresetn_ctrl_net));
  gapping_demand_imp_F6TB9W gapping_demand
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M03_AXI_ARADDR),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M03_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M03_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M03_AXI_AWADDR),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M03_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M03_AXI_AWVALID),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M03_AXI_BRESP),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M03_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M03_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M03_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M03_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M03_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M03_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M03_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M03_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl_net),
        .aresetn_ctrl(aresetn_ctrl_net),
        .clock_throttling_average(clock_throttling_average_net),
        .gapping_demand_toggle(gapping_demand_toggle_net),
        .requested_gapping_demand_rate(gapping_demand_net),
        .s_axi_bready(gapping_demand_bready_net),
        .s_axi_bvalid(gapping_demand_bvalid_net),
        .shutdown_request_ack(gapping_demand_shutdown_request_ack_net),
        .shutdown_request_latch(shutdown_request_latched_net),
        .throttling_enabled(gapping_demand_throttling_enabled_net));
  ucs_control_status_imp_1GKYAWY ucs_control_status
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M04_AXI_ARADDR),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M04_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M04_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M04_AXI_AWADDR),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M04_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M04_AXI_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_top_M04_AXI_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M04_AXI_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_top_M04_AXI_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M04_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M04_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M04_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M04_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M04_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M04_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M04_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M04_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl_net),
        .aresetn_ctrl(aresetn_ctrl_net),
        .clock_program_done(startup_done_net),
        .clock_throttling_average(clock_throttling_average_net),
        .power_down(power_down_net),
        .shutdown_clocks(shutdown_clocks_net),
        .shutdown_request_ack(gapping_demand_shutdown_request_ack_net),
        .shutdown_request_latch(shutdown_request_latched_net),
        .throttling_enabled(gapping_demand_throttling_enabled_net));
endmodule

module bd_1361_axi_ic_ctrl_mgmt_freq_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [23:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [23:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [23:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [23:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [23:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [23:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [23:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [23:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_ic_ctrl_mgmt_freq_ACLK_net;
  wire axi_ic_ctrl_mgmt_freq_ARESETN_net;
  wire [23:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARADDR;
  wire [2:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARPROT;
  wire [0:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARREADY;
  wire [0:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWADDR;
  wire [2:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWPROT;
  wire [0:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWREADY;
  wire [0:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWVALID;
  wire [0:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_BRESP;
  wire [0:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_RDATA;
  wire [0:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_RRESP;
  wire [0:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_WDATA;
  wire [0:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_WSTRB;
  wire [0:0]axi_ic_ctrl_mgmt_freq_to_s00_couplers_WVALID;
  wire [23:0]m00_couplers_to_axi_ic_ctrl_mgmt_freq_ARADDR;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_freq_ARREADY;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_freq_ARVALID;
  wire [23:0]m00_couplers_to_axi_ic_ctrl_mgmt_freq_AWADDR;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_freq_AWREADY;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_freq_AWVALID;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_freq_BREADY;
  wire [1:0]m00_couplers_to_axi_ic_ctrl_mgmt_freq_BRESP;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_freq_BVALID;
  wire [31:0]m00_couplers_to_axi_ic_ctrl_mgmt_freq_RDATA;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_freq_RREADY;
  wire [1:0]m00_couplers_to_axi_ic_ctrl_mgmt_freq_RRESP;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_freq_RVALID;
  wire [31:0]m00_couplers_to_axi_ic_ctrl_mgmt_freq_WDATA;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_freq_WREADY;
  wire [3:0]m00_couplers_to_axi_ic_ctrl_mgmt_freq_WSTRB;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_freq_WVALID;
  wire [23:0]m01_couplers_to_axi_ic_ctrl_mgmt_freq_ARADDR;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_freq_ARREADY;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_freq_ARVALID;
  wire [23:0]m01_couplers_to_axi_ic_ctrl_mgmt_freq_AWADDR;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_freq_AWREADY;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_freq_AWVALID;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_freq_BREADY;
  wire [1:0]m01_couplers_to_axi_ic_ctrl_mgmt_freq_BRESP;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_freq_BVALID;
  wire [31:0]m01_couplers_to_axi_ic_ctrl_mgmt_freq_RDATA;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_freq_RREADY;
  wire [1:0]m01_couplers_to_axi_ic_ctrl_mgmt_freq_RRESP;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_freq_RVALID;
  wire [31:0]m01_couplers_to_axi_ic_ctrl_mgmt_freq_WDATA;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_freq_WREADY;
  wire [3:0]m01_couplers_to_axi_ic_ctrl_mgmt_freq_WSTRB;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_freq_WVALID;
  wire [23:0]m02_couplers_to_axi_ic_ctrl_mgmt_freq_ARADDR;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_freq_ARREADY;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_freq_ARVALID;
  wire [23:0]m02_couplers_to_axi_ic_ctrl_mgmt_freq_AWADDR;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_freq_AWREADY;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_freq_AWVALID;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_freq_BREADY;
  wire [1:0]m02_couplers_to_axi_ic_ctrl_mgmt_freq_BRESP;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_freq_BVALID;
  wire [31:0]m02_couplers_to_axi_ic_ctrl_mgmt_freq_RDATA;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_freq_RREADY;
  wire [1:0]m02_couplers_to_axi_ic_ctrl_mgmt_freq_RRESP;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_freq_RVALID;
  wire [31:0]m02_couplers_to_axi_ic_ctrl_mgmt_freq_WDATA;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_freq_WREADY;
  wire [3:0]m02_couplers_to_axi_ic_ctrl_mgmt_freq_WSTRB;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_freq_WVALID;
  wire [23:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [23:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [23:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [23:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [47:24]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [47:24]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [71:48]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [71:48]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[23:0] = m00_couplers_to_axi_ic_ctrl_mgmt_freq_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_ic_ctrl_mgmt_freq_ARVALID;
  assign M00_AXI_awaddr[23:0] = m00_couplers_to_axi_ic_ctrl_mgmt_freq_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_ic_ctrl_mgmt_freq_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_ic_ctrl_mgmt_freq_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_ic_ctrl_mgmt_freq_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_ic_ctrl_mgmt_freq_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_ic_ctrl_mgmt_freq_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_ic_ctrl_mgmt_freq_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[23:0] = m01_couplers_to_axi_ic_ctrl_mgmt_freq_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_ic_ctrl_mgmt_freq_ARVALID;
  assign M01_AXI_awaddr[23:0] = m01_couplers_to_axi_ic_ctrl_mgmt_freq_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_ic_ctrl_mgmt_freq_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_ic_ctrl_mgmt_freq_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_ic_ctrl_mgmt_freq_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_ic_ctrl_mgmt_freq_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_ic_ctrl_mgmt_freq_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_ic_ctrl_mgmt_freq_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[23:0] = m02_couplers_to_axi_ic_ctrl_mgmt_freq_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_ic_ctrl_mgmt_freq_ARVALID;
  assign M02_AXI_awaddr[23:0] = m02_couplers_to_axi_ic_ctrl_mgmt_freq_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_ic_ctrl_mgmt_freq_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_ic_ctrl_mgmt_freq_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_ic_ctrl_mgmt_freq_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_ic_ctrl_mgmt_freq_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_ic_ctrl_mgmt_freq_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_ic_ctrl_mgmt_freq_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_ic_ctrl_mgmt_freq_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_ic_ctrl_mgmt_freq_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_ic_ctrl_mgmt_freq_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_ic_ctrl_mgmt_freq_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_ic_ctrl_mgmt_freq_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_ic_ctrl_mgmt_freq_to_s00_couplers_WREADY;
  assign axi_ic_ctrl_mgmt_freq_ACLK_net = ACLK;
  assign axi_ic_ctrl_mgmt_freq_ARESETN_net = ARESETN;
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARADDR = S00_AXI_araddr[23:0];
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWADDR = S00_AXI_awaddr[23:0];
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_ic_ctrl_mgmt_freq_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_freq_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_freq_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_freq_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_freq_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_freq_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_freq_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_freq_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_freq_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_freq_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_freq_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_freq_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_freq_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_freq_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_freq_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_freq_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_freq_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_freq_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_freq_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_freq_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_freq_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_freq_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_freq_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_freq_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_freq_WREADY = M02_AXI_wready;
  m00_couplers_imp_MUZ9A9 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_ic_ctrl_mgmt_freq_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_ic_ctrl_mgmt_freq_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_ic_ctrl_mgmt_freq_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_ic_ctrl_mgmt_freq_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_ic_ctrl_mgmt_freq_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_ic_ctrl_mgmt_freq_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_ic_ctrl_mgmt_freq_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_ic_ctrl_mgmt_freq_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_ic_ctrl_mgmt_freq_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_ic_ctrl_mgmt_freq_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_ic_ctrl_mgmt_freq_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_ic_ctrl_mgmt_freq_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_ic_ctrl_mgmt_freq_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_ic_ctrl_mgmt_freq_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_ic_ctrl_mgmt_freq_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_ic_ctrl_mgmt_freq_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_ic_ctrl_mgmt_freq_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_freq_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_freq_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1NB73IA m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_ic_ctrl_mgmt_freq_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_ic_ctrl_mgmt_freq_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_ic_ctrl_mgmt_freq_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_ic_ctrl_mgmt_freq_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_ic_ctrl_mgmt_freq_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_ic_ctrl_mgmt_freq_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_ic_ctrl_mgmt_freq_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_ic_ctrl_mgmt_freq_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_ic_ctrl_mgmt_freq_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_ic_ctrl_mgmt_freq_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_ic_ctrl_mgmt_freq_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_ic_ctrl_mgmt_freq_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_ic_ctrl_mgmt_freq_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_ic_ctrl_mgmt_freq_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_ic_ctrl_mgmt_freq_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_ic_ctrl_mgmt_freq_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_ic_ctrl_mgmt_freq_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_freq_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_freq_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_119Y2O6 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_ic_ctrl_mgmt_freq_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_ic_ctrl_mgmt_freq_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_ic_ctrl_mgmt_freq_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_ic_ctrl_mgmt_freq_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_ic_ctrl_mgmt_freq_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_ic_ctrl_mgmt_freq_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_ic_ctrl_mgmt_freq_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_ic_ctrl_mgmt_freq_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_ic_ctrl_mgmt_freq_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_ic_ctrl_mgmt_freq_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_ic_ctrl_mgmt_freq_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_ic_ctrl_mgmt_freq_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_ic_ctrl_mgmt_freq_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_ic_ctrl_mgmt_freq_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_ic_ctrl_mgmt_freq_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_ic_ctrl_mgmt_freq_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_ic_ctrl_mgmt_freq_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_freq_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_freq_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_1N75IZH s00_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_freq_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_freq_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_freq_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_freq_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_freq_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_freq_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_freq_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_freq_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_freq_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_freq_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_freq_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_freq_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_freq_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_freq_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_freq_to_s00_couplers_WVALID));
  bd_1361_xbar_1 xbar
       (.aclk(axi_ic_ctrl_mgmt_freq_ACLK_net),
        .aresetn(axi_ic_ctrl_mgmt_freq_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module bd_1361_axi_ic_ctrl_mgmt_top_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [23:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [23:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [23:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [23:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [23:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [23:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [23:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [23:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [23:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [23:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [23:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [23:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [23:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [23:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire axi_ic_ctrl_mgmt_top_ACLK_net;
  wire axi_ic_ctrl_mgmt_top_ARESETN_net;
  wire [23:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_ARADDR;
  wire [2:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_ARPROT;
  wire [0:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_ARREADY;
  wire [0:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_AWADDR;
  wire [2:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_AWPROT;
  wire [0:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_AWREADY;
  wire [0:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_AWVALID;
  wire [0:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_BRESP;
  wire [0:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_RDATA;
  wire [0:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_RRESP;
  wire [0:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_WDATA;
  wire [0:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_WSTRB;
  wire [0:0]axi_ic_ctrl_mgmt_top_to_s00_couplers_WVALID;
  wire [23:0]m00_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  wire [23:0]m00_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  wire [1:0]m00_couplers_to_axi_ic_ctrl_mgmt_top_BRESP;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_top_BVALID;
  wire [31:0]m00_couplers_to_axi_ic_ctrl_mgmt_top_RDATA;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  wire [1:0]m00_couplers_to_axi_ic_ctrl_mgmt_top_RRESP;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_top_RVALID;
  wire [31:0]m00_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_top_WREADY;
  wire [3:0]m00_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  wire [23:0]m01_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  wire [23:0]m01_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  wire [1:0]m01_couplers_to_axi_ic_ctrl_mgmt_top_BRESP;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_top_BVALID;
  wire [31:0]m01_couplers_to_axi_ic_ctrl_mgmt_top_RDATA;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  wire [1:0]m01_couplers_to_axi_ic_ctrl_mgmt_top_RRESP;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_top_RVALID;
  wire [31:0]m01_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_top_WREADY;
  wire [3:0]m01_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  wire [23:0]m02_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  wire [23:0]m02_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  wire [1:0]m02_couplers_to_axi_ic_ctrl_mgmt_top_BRESP;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_top_BVALID;
  wire [31:0]m02_couplers_to_axi_ic_ctrl_mgmt_top_RDATA;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  wire [1:0]m02_couplers_to_axi_ic_ctrl_mgmt_top_RRESP;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_top_RVALID;
  wire [31:0]m02_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_top_WREADY;
  wire [3:0]m02_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  wire [23:0]m03_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  wire [23:0]m03_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  wire [1:0]m03_couplers_to_axi_ic_ctrl_mgmt_top_BRESP;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_top_BVALID;
  wire [31:0]m03_couplers_to_axi_ic_ctrl_mgmt_top_RDATA;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  wire [1:0]m03_couplers_to_axi_ic_ctrl_mgmt_top_RRESP;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_top_RVALID;
  wire [31:0]m03_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_top_WREADY;
  wire [3:0]m03_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  wire [23:0]m04_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  wire [23:0]m04_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  wire [1:0]m04_couplers_to_axi_ic_ctrl_mgmt_top_BRESP;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_top_BVALID;
  wire [31:0]m04_couplers_to_axi_ic_ctrl_mgmt_top_RDATA;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  wire [1:0]m04_couplers_to_axi_ic_ctrl_mgmt_top_RRESP;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_top_RVALID;
  wire [31:0]m04_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_top_WREADY;
  wire [3:0]m04_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  wire [23:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  wire [2:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_ARPROT;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  wire [23:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  wire [2:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_AWPROT;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  wire [1:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_BRESP;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_BVALID;
  wire [31:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_RDATA;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  wire [1:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_RRESP;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_RVALID;
  wire [31:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_WREADY;
  wire [3:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  wire [23:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [23:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [23:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [23:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [47:24]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [47:24]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [71:48]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [71:48]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [95:72]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [95:72]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [119:96]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [119:96]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [143:120]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [143:120]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [17:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [17:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[23:0] = m00_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  assign M00_AXI_awaddr[23:0] = m00_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  assign M01_AXI_araddr[23:0] = m01_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  assign M01_AXI_awaddr[23:0] = m01_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  assign M02_AXI_araddr[23:0] = m02_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  assign M02_AXI_awaddr[23:0] = m02_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  assign M03_AXI_araddr[23:0] = m03_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  assign M03_AXI_awaddr[23:0] = m03_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  assign M04_AXI_araddr[23:0] = m04_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  assign M04_AXI_awaddr[23:0] = m04_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  assign M05_AXI_araddr[23:0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_ARPROT;
  assign M05_AXI_arvalid[0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID;
  assign M05_AXI_awaddr[23:0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_AWPROT;
  assign M05_AXI_awvalid[0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_axi_ic_ctrl_mgmt_top_WVALID;
  assign S00_AXI_arready[0] = axi_ic_ctrl_mgmt_top_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_ic_ctrl_mgmt_top_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_ic_ctrl_mgmt_top_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_ic_ctrl_mgmt_top_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_ic_ctrl_mgmt_top_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_ic_ctrl_mgmt_top_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_ic_ctrl_mgmt_top_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_ic_ctrl_mgmt_top_to_s00_couplers_WREADY;
  assign axi_ic_ctrl_mgmt_top_ACLK_net = ACLK;
  assign axi_ic_ctrl_mgmt_top_ARESETN_net = ARESETN;
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_ARADDR = S00_AXI_araddr[23:0];
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_AWADDR = S00_AXI_awaddr[23:0];
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_ic_ctrl_mgmt_top_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_top_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_top_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_top_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_top_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_top_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_top_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_top_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_top_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_top_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_top_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_top_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_top_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_top_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_top_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_top_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_top_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_top_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_top_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_top_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_ic_ctrl_mgmt_top_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_top_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_ic_ctrl_mgmt_top_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_ic_ctrl_mgmt_top_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_top_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_ic_ctrl_mgmt_top_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_ic_ctrl_mgmt_top_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_ic_ctrl_mgmt_top_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_ic_ctrl_mgmt_top_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_ic_ctrl_mgmt_top_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_ic_ctrl_mgmt_top_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_top_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_top_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_top_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_top_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_top_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_top_WREADY = M05_AXI_wready[0];
  m00_couplers_imp_XDP4OE m00_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_ic_ctrl_mgmt_top_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_ic_ctrl_mgmt_top_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_ic_ctrl_mgmt_top_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_ic_ctrl_mgmt_top_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_ic_ctrl_mgmt_top_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_ic_ctrl_mgmt_top_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_ic_ctrl_mgmt_top_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_ic_ctrl_mgmt_top_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_ic_ctrl_mgmt_top_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_ic_ctrl_mgmt_top_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1Z07QUL m01_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_ic_ctrl_mgmt_top_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_ic_ctrl_mgmt_top_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_ic_ctrl_mgmt_top_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_ic_ctrl_mgmt_top_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_ic_ctrl_mgmt_top_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_ic_ctrl_mgmt_top_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_ic_ctrl_mgmt_top_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_ic_ctrl_mgmt_top_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_ic_ctrl_mgmt_top_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_ic_ctrl_mgmt_top_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1BUJ6ZT m02_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_ic_ctrl_mgmt_top_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_ic_ctrl_mgmt_top_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_ic_ctrl_mgmt_top_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_ic_ctrl_mgmt_top_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_ic_ctrl_mgmt_top_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_ic_ctrl_mgmt_top_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_ic_ctrl_mgmt_top_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_ic_ctrl_mgmt_top_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_ic_ctrl_mgmt_top_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_ic_ctrl_mgmt_top_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_C5SXUY m03_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_ic_ctrl_mgmt_top_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_ic_ctrl_mgmt_top_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_ic_ctrl_mgmt_top_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_ic_ctrl_mgmt_top_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_ic_ctrl_mgmt_top_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_ic_ctrl_mgmt_top_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_ic_ctrl_mgmt_top_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_ic_ctrl_mgmt_top_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_ic_ctrl_mgmt_top_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_ic_ctrl_mgmt_top_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_34LYQP m04_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_ic_ctrl_mgmt_top_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_ic_ctrl_mgmt_top_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_ic_ctrl_mgmt_top_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_ic_ctrl_mgmt_top_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_ic_ctrl_mgmt_top_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_ic_ctrl_mgmt_top_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_ic_ctrl_mgmt_top_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_ic_ctrl_mgmt_top_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_ic_ctrl_mgmt_top_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_ic_ctrl_mgmt_top_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1336ZJ6 m05_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi_ic_ctrl_mgmt_top_ARADDR),
        .M_AXI_arprot(m05_couplers_to_axi_ic_ctrl_mgmt_top_ARPROT),
        .M_AXI_arready(m05_couplers_to_axi_ic_ctrl_mgmt_top_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_ic_ctrl_mgmt_top_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_ic_ctrl_mgmt_top_AWADDR),
        .M_AXI_awprot(m05_couplers_to_axi_ic_ctrl_mgmt_top_AWPROT),
        .M_AXI_awready(m05_couplers_to_axi_ic_ctrl_mgmt_top_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_ic_ctrl_mgmt_top_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_ic_ctrl_mgmt_top_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_ic_ctrl_mgmt_top_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_ic_ctrl_mgmt_top_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_ic_ctrl_mgmt_top_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_ic_ctrl_mgmt_top_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_ic_ctrl_mgmt_top_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_ic_ctrl_mgmt_top_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_ic_ctrl_mgmt_top_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_ic_ctrl_mgmt_top_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_ic_ctrl_mgmt_top_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_ic_ctrl_mgmt_top_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  s00_couplers_imp_1YVJBSI s00_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_top_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .S_AXI_araddr(axi_ic_ctrl_mgmt_top_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_ic_ctrl_mgmt_top_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_ic_ctrl_mgmt_top_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_top_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_top_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_to_s00_couplers_WVALID));
  bd_1361_xbar_0 xbar
       (.aclk(axi_ic_ctrl_mgmt_top_ACLK_net),
        .aresetn(axi_ic_ctrl_mgmt_top_ARESETN_net),
        .m_axi_araddr({xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m05_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[14:0]}),
        .m_axi_arready({xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m05_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[14:0]}),
        .m_axi_awready({xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module fanout_aresetn_ctrl_imp_IAX5PU
   (aclk_ctrl,
    aresetn_ctrl,
    aresetn_ctrl_slr0,
    aresetn_ctrl_slr1,
    aresetn_ctrl_slr2,
    aresetn_ctrl_slr3);
  input aclk_ctrl;
  input [0:0]aresetn_ctrl;
  output [0:0]aresetn_ctrl_slr0;
  output [0:0]aresetn_ctrl_slr1;
  output [0:0]aresetn_ctrl_slr2;
  output [0:0]aresetn_ctrl_slr3;

  wire aclk_ctrl_net;
  wire [0:0]aresetn_ctrl_net;
  wire [0:0]aresetn_ctrl_slr0;
  wire [0:0]aresetn_ctrl_slr0_2;
  wire [0:0]aresetn_ctrl_slr0_3;
  wire [0:0]aresetn_ctrl_slr0_4;
  wire [0:0]aresetn_ctrl_slr1;
  wire [0:0]aresetn_ctrl_slr1_2;
  wire [0:0]aresetn_ctrl_slr1_3;
  wire [0:0]aresetn_ctrl_slr1_4;
  wire [0:0]aresetn_ctrl_slr2;
  wire [0:0]aresetn_ctrl_slr2_2;
  wire [0:0]aresetn_ctrl_slr2_3;
  wire [0:0]aresetn_ctrl_slr2_4;
  wire [0:0]aresetn_ctrl_slr3;
  wire [0:0]aresetn_ctrl_slr3_2;
  wire [0:0]aresetn_ctrl_slr3_3;
  wire [0:0]aresetn_ctrl_slr3_4;
  wire [0:0]aresetn_ctrl_slr3_5;
  wire [0:0]aresetn_ctrl_slr3_6;
  wire [0:0]vcc_net;

  assign aclk_ctrl_net = aclk_ctrl;
  assign aresetn_ctrl_net = aresetn_ctrl[0];
  bd_1361_fanout_aresetn_ctrl_slr0_1_0 fanout_aresetn_ctrl_slr0_1
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_net),
        .q(aresetn_ctrl_slr0_2),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr0_2_0 fanout_aresetn_ctrl_slr0_2
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr0_2),
        .q(aresetn_ctrl_slr0_3),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr0_3_0 fanout_aresetn_ctrl_slr0_3
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr0_3),
        .q(aresetn_ctrl_slr0_4),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr0_4_0 fanout_aresetn_ctrl_slr0_4
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr0_4),
        .q(aresetn_ctrl_slr0),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr1_1_0 fanout_aresetn_ctrl_slr1_1
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_net),
        .q(aresetn_ctrl_slr1_2),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr1_2_0 fanout_aresetn_ctrl_slr1_2
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr1_2),
        .q(aresetn_ctrl_slr1_3),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr1_3_0 fanout_aresetn_ctrl_slr1_3
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr1_3),
        .q(aresetn_ctrl_slr1_4),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr1_4_0 fanout_aresetn_ctrl_slr1_4
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr1_4),
        .q(aresetn_ctrl_slr1),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr2_1_0 fanout_aresetn_ctrl_slr2_1
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_net),
        .q(aresetn_ctrl_slr2_2),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr2_2_0 fanout_aresetn_ctrl_slr2_2
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr2_2),
        .q(aresetn_ctrl_slr2_3),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr2_3_0 fanout_aresetn_ctrl_slr2_3
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr2_3),
        .q(aresetn_ctrl_slr2_4),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr2_4_0 fanout_aresetn_ctrl_slr2_4
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr2_4),
        .q(aresetn_ctrl_slr2),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr3_1_0 fanout_aresetn_ctrl_slr3_1
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_net),
        .q(aresetn_ctrl_slr3_2),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr3_2_0 fanout_aresetn_ctrl_slr3_2
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr3_2),
        .q(aresetn_ctrl_slr3_3),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr3_3_0 fanout_aresetn_ctrl_slr3_3
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr3_3),
        .q(aresetn_ctrl_slr3_4),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr3_4_0 fanout_aresetn_ctrl_slr3_4
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr3_4),
        .q(aresetn_ctrl_slr3_5),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr3_5_0 fanout_aresetn_ctrl_slr3_5
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr3_5),
        .q(aresetn_ctrl_slr3_6),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_ctrl_slr3_6_0 fanout_aresetn_ctrl_slr3_6
       (.clk(aclk_ctrl_net),
        .d(aresetn_ctrl_slr3_6),
        .q(aresetn_ctrl_slr3),
        .resetn(vcc_net));
  bd_1361_vcc_1 vcc
       (.dout(vcc_net));
endmodule

module fanout_aresetn_kernel_00_imp_HC8JF9
   (aclk_kernel_00_cont,
    aresetn_kernel_00,
    aresetn_kernel_00_slr0,
    aresetn_kernel_00_slr1,
    aresetn_kernel_00_slr2,
    aresetn_kernel_00_slr3);
  input aclk_kernel_00_cont;
  input [0:0]aresetn_kernel_00;
  output [0:0]aresetn_kernel_00_slr0;
  output [0:0]aresetn_kernel_00_slr1;
  output [0:0]aresetn_kernel_00_slr2;
  output [0:0]aresetn_kernel_00_slr3;

  wire [0:0]aresetn_kernel_00_net;
  wire [0:0]aresetn_kernel_00_slr0;
  wire [0:0]aresetn_kernel_00_slr0_2;
  wire [0:0]aresetn_kernel_00_slr0_3;
  wire [0:0]aresetn_kernel_00_slr0_4;
  wire [0:0]aresetn_kernel_00_slr1;
  wire [0:0]aresetn_kernel_00_slr1_2;
  wire [0:0]aresetn_kernel_00_slr1_3;
  wire [0:0]aresetn_kernel_00_slr1_4;
  wire [0:0]aresetn_kernel_00_slr2;
  wire [0:0]aresetn_kernel_00_slr2_2;
  wire [0:0]aresetn_kernel_00_slr2_3;
  wire [0:0]aresetn_kernel_00_slr2_4;
  wire [0:0]aresetn_kernel_00_slr3;
  wire [0:0]aresetn_kernel_00_slr3_2;
  wire [0:0]aresetn_kernel_00_slr3_3;
  wire [0:0]aresetn_kernel_00_slr3_4;
  wire [0:0]aresetn_kernel_00_slr3_5;
  wire [0:0]aresetn_kernel_00_slr3_6;
  wire clk_kernel_cont;
  wire [0:0]\^vcc ;

  assign aresetn_kernel_00_net = aresetn_kernel_00[0];
  assign clk_kernel_cont = aclk_kernel_00_cont;
  bd_1361_fanout_aresetn_kernel_00_slr0_1_0 fanout_aresetn_kernel_00_slr0_1
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_net),
        .q(aresetn_kernel_00_slr0_2),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr0_2_0 fanout_aresetn_kernel_00_slr0_2
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr0_2),
        .q(aresetn_kernel_00_slr0_3),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr0_3_0 fanout_aresetn_kernel_00_slr0_3
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr0_3),
        .q(aresetn_kernel_00_slr0_4),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr0_4_0 fanout_aresetn_kernel_00_slr0_4
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr0_4),
        .q(aresetn_kernel_00_slr0),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr1_1_0 fanout_aresetn_kernel_00_slr1_1
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_net),
        .q(aresetn_kernel_00_slr1_2),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr1_2_0 fanout_aresetn_kernel_00_slr1_2
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr1_2),
        .q(aresetn_kernel_00_slr1_3),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr1_3_0 fanout_aresetn_kernel_00_slr1_3
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr1_3),
        .q(aresetn_kernel_00_slr1_4),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr1_4_0 fanout_aresetn_kernel_00_slr1_4
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr1_4),
        .q(aresetn_kernel_00_slr1),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr2_1_0 fanout_aresetn_kernel_00_slr2_1
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_net),
        .q(aresetn_kernel_00_slr2_2),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr2_2_0 fanout_aresetn_kernel_00_slr2_2
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr2_2),
        .q(aresetn_kernel_00_slr2_3),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr2_3_0 fanout_aresetn_kernel_00_slr2_3
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr2_3),
        .q(aresetn_kernel_00_slr2_4),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr2_4_0 fanout_aresetn_kernel_00_slr2_4
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr2_4),
        .q(aresetn_kernel_00_slr2),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr3_1_0 fanout_aresetn_kernel_00_slr3_1
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_net),
        .q(aresetn_kernel_00_slr3_2),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr3_2_0 fanout_aresetn_kernel_00_slr3_2
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr3_2),
        .q(aresetn_kernel_00_slr3_3),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr3_3_0 fanout_aresetn_kernel_00_slr3_3
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr3_3),
        .q(aresetn_kernel_00_slr3_4),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr3_4_0 fanout_aresetn_kernel_00_slr3_4
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr3_4),
        .q(aresetn_kernel_00_slr3_5),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr3_5_0 fanout_aresetn_kernel_00_slr3_5
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr3_5),
        .q(aresetn_kernel_00_slr3_6),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_00_slr3_6_0 fanout_aresetn_kernel_00_slr3_6
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_00_slr3_6),
        .q(aresetn_kernel_00_slr3),
        .resetn(\^vcc ));
  bd_1361_vcc_2 vcc
       (.dout(\^vcc ));
endmodule

module fanout_aresetn_kernel_01_imp_1EFQNU8
   (aclk_kernel_01_cont,
    aresetn_kernel_01,
    aresetn_kernel_01_slr0,
    aresetn_kernel_01_slr1,
    aresetn_kernel_01_slr2,
    aresetn_kernel_01_slr3);
  input aclk_kernel_01_cont;
  input [0:0]aresetn_kernel_01;
  output [0:0]aresetn_kernel_01_slr0;
  output [0:0]aresetn_kernel_01_slr1;
  output [0:0]aresetn_kernel_01_slr2;
  output [0:0]aresetn_kernel_01_slr3;

  wire [0:0]aresetn_kernel_01_net;
  wire [0:0]aresetn_kernel_01_slr0;
  wire [0:0]aresetn_kernel_01_slr0_2;
  wire [0:0]aresetn_kernel_01_slr0_3;
  wire [0:0]aresetn_kernel_01_slr0_4;
  wire [0:0]aresetn_kernel_01_slr1;
  wire [0:0]aresetn_kernel_01_slr1_2;
  wire [0:0]aresetn_kernel_01_slr1_3;
  wire [0:0]aresetn_kernel_01_slr1_4;
  wire [0:0]aresetn_kernel_01_slr2;
  wire [0:0]aresetn_kernel_01_slr2_2;
  wire [0:0]aresetn_kernel_01_slr2_3;
  wire [0:0]aresetn_kernel_01_slr2_4;
  wire [0:0]aresetn_kernel_01_slr3;
  wire [0:0]aresetn_kernel_01_slr3_2;
  wire [0:0]aresetn_kernel_01_slr3_3;
  wire [0:0]aresetn_kernel_01_slr3_4;
  wire [0:0]aresetn_kernel_01_slr3_5;
  wire [0:0]aresetn_kernel_01_slr3_6;
  wire clk_kernel_cont;
  wire [0:0]\^vcc ;

  assign aresetn_kernel_01_net = aresetn_kernel_01[0];
  assign clk_kernel_cont = aclk_kernel_01_cont;
  bd_1361_fanout_aresetn_kernel_01_slr0_1_0 fanout_aresetn_kernel_01_slr0_1
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_net),
        .q(aresetn_kernel_01_slr0_2),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr0_2_0 fanout_aresetn_kernel_01_slr0_2
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr0_2),
        .q(aresetn_kernel_01_slr0_3),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr0_3_0 fanout_aresetn_kernel_01_slr0_3
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr0_3),
        .q(aresetn_kernel_01_slr0_4),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr0_4_0 fanout_aresetn_kernel_01_slr0_4
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr0_4),
        .q(aresetn_kernel_01_slr0),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr1_1_0 fanout_aresetn_kernel_01_slr1_1
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_net),
        .q(aresetn_kernel_01_slr1_2),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr1_2_0 fanout_aresetn_kernel_01_slr1_2
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr1_2),
        .q(aresetn_kernel_01_slr1_3),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr1_3_0 fanout_aresetn_kernel_01_slr1_3
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr1_3),
        .q(aresetn_kernel_01_slr1_4),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr1_4_0 fanout_aresetn_kernel_01_slr1_4
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr1_4),
        .q(aresetn_kernel_01_slr1),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr2_1_0 fanout_aresetn_kernel_01_slr2_1
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_net),
        .q(aresetn_kernel_01_slr2_2),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr2_2_0 fanout_aresetn_kernel_01_slr2_2
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr2_2),
        .q(aresetn_kernel_01_slr2_3),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr2_3_0 fanout_aresetn_kernel_01_slr2_3
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr2_3),
        .q(aresetn_kernel_01_slr2_4),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr2_4_0 fanout_aresetn_kernel_01_slr2_4
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr2_4),
        .q(aresetn_kernel_01_slr2),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr3_1_0 fanout_aresetn_kernel_01_slr3_1
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_net),
        .q(aresetn_kernel_01_slr3_2),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr3_2_0 fanout_aresetn_kernel_01_slr3_2
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr3_2),
        .q(aresetn_kernel_01_slr3_3),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr3_3_0 fanout_aresetn_kernel_01_slr3_3
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr3_3),
        .q(aresetn_kernel_01_slr3_4),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr3_4_0 fanout_aresetn_kernel_01_slr3_4
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr3_4),
        .q(aresetn_kernel_01_slr3_5),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr3_5_0 fanout_aresetn_kernel_01_slr3_5
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr3_5),
        .q(aresetn_kernel_01_slr3_6),
        .resetn(\^vcc ));
  bd_1361_fanout_aresetn_kernel_01_slr3_6_0 fanout_aresetn_kernel_01_slr3_6
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel_01_slr3_6),
        .q(aresetn_kernel_01_slr3),
        .resetn(\^vcc ));
  bd_1361_vcc_3 vcc
       (.dout(\^vcc ));
endmodule

module fanout_aresetn_pcie_imp_105HDDA
   (aclk_pcie,
    aresetn_pcie,
    aresetn_pcie_slr0,
    aresetn_pcie_slr1,
    aresetn_pcie_slr2,
    aresetn_pcie_slr3);
  input aclk_pcie;
  input [0:0]aresetn_pcie;
  output [0:0]aresetn_pcie_slr0;
  output [0:0]aresetn_pcie_slr1;
  output [0:0]aresetn_pcie_slr2;
  output [0:0]aresetn_pcie_slr3;

  wire aclk_pcie_net;
  wire [0:0]aresetn_pcie_net;
  wire [0:0]aresetn_pcie_slr0;
  wire [0:0]aresetn_pcie_slr0_2;
  wire [0:0]aresetn_pcie_slr0_3;
  wire [0:0]aresetn_pcie_slr0_4;
  wire [0:0]aresetn_pcie_slr1;
  wire [0:0]aresetn_pcie_slr1_2;
  wire [0:0]aresetn_pcie_slr1_3;
  wire [0:0]aresetn_pcie_slr1_4;
  wire [0:0]aresetn_pcie_slr2;
  wire [0:0]aresetn_pcie_slr2_2;
  wire [0:0]aresetn_pcie_slr2_3;
  wire [0:0]aresetn_pcie_slr2_4;
  wire [0:0]aresetn_pcie_slr3;
  wire [0:0]aresetn_pcie_slr3_2;
  wire [0:0]aresetn_pcie_slr3_3;
  wire [0:0]aresetn_pcie_slr3_4;
  wire [0:0]aresetn_pcie_slr3_5;
  wire [0:0]aresetn_pcie_slr3_6;
  wire [0:0]vcc_net;

  assign aclk_pcie_net = aclk_pcie;
  assign aresetn_pcie_net = aresetn_pcie[0];
  bd_1361_fanout_aresetn_pcie_slr0_1_0 fanout_aresetn_pcie_slr0_1
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_net),
        .q(aresetn_pcie_slr0_2),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr0_2_0 fanout_aresetn_pcie_slr0_2
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr0_2),
        .q(aresetn_pcie_slr0_3),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr0_3_0 fanout_aresetn_pcie_slr0_3
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr0_3),
        .q(aresetn_pcie_slr0_4),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr0_4_0 fanout_aresetn_pcie_slr0_4
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr0_4),
        .q(aresetn_pcie_slr0),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr1_1_0 fanout_aresetn_pcie_slr1_1
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_net),
        .q(aresetn_pcie_slr1_2),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr1_2_0 fanout_aresetn_pcie_slr1_2
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr1_2),
        .q(aresetn_pcie_slr1_3),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr1_3_0 fanout_aresetn_pcie_slr1_3
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr1_3),
        .q(aresetn_pcie_slr1_4),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr1_4_0 fanout_aresetn_pcie_slr1_4
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr1_4),
        .q(aresetn_pcie_slr1),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr2_1_0 fanout_aresetn_pcie_slr2_1
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_net),
        .q(aresetn_pcie_slr2_2),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr2_2_0 fanout_aresetn_pcie_slr2_2
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr2_2),
        .q(aresetn_pcie_slr2_3),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr2_3_0 fanout_aresetn_pcie_slr2_3
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr2_3),
        .q(aresetn_pcie_slr2_4),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr2_4_0 fanout_aresetn_pcie_slr2_4
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr2_4),
        .q(aresetn_pcie_slr2),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr3_1_0 fanout_aresetn_pcie_slr3_1
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_net),
        .q(aresetn_pcie_slr3_2),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr3_2_0 fanout_aresetn_pcie_slr3_2
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr3_2),
        .q(aresetn_pcie_slr3_3),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr3_3_0 fanout_aresetn_pcie_slr3_3
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr3_3),
        .q(aresetn_pcie_slr3_4),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr3_4_0 fanout_aresetn_pcie_slr3_4
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr3_4),
        .q(aresetn_pcie_slr3_5),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr3_5_0 fanout_aresetn_pcie_slr3_5
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr3_5),
        .q(aresetn_pcie_slr3_6),
        .resetn(vcc_net));
  bd_1361_fanout_aresetn_pcie_slr3_6_0 fanout_aresetn_pcie_slr3_6
       (.clk(aclk_pcie_net),
        .d(aresetn_pcie_slr3_6),
        .q(aresetn_pcie_slr3),
        .resetn(vcc_net));
  bd_1361_vcc_0 vcc
       (.dout(vcc_net));
endmodule

module frequency_counters_imp_BQDAM6
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk_ctrl,
    aclk_freerun,
    aclk_kernel_00,
    aclk_kernel_00_cont,
    aclk_kernel_01,
    aclk_kernel_01_cont,
    aclk_pcie,
    aresetn_ctrl);
  input [23:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input aclk_ctrl;
  input aclk_freerun;
  input aclk_kernel_00;
  input aclk_kernel_00_cont;
  input aclk_kernel_01;
  input aclk_kernel_01_cont;
  input aclk_pcie;
  input aresetn_ctrl;

  wire [23:0]S_AXI_net_ARADDR;
  wire [2:0]S_AXI_net_ARPROT;
  wire [0:0]S_AXI_net_ARREADY;
  wire [0:0]S_AXI_net_ARVALID;
  wire [23:0]S_AXI_net_AWADDR;
  wire [2:0]S_AXI_net_AWPROT;
  wire [0:0]S_AXI_net_AWREADY;
  wire [0:0]S_AXI_net_AWVALID;
  wire [0:0]S_AXI_net_BREADY;
  wire [1:0]S_AXI_net_BRESP;
  wire [0:0]S_AXI_net_BVALID;
  wire [31:0]S_AXI_net_RDATA;
  wire [0:0]S_AXI_net_RREADY;
  wire [1:0]S_AXI_net_RRESP;
  wire [0:0]S_AXI_net_RVALID;
  wire [31:0]S_AXI_net_WDATA;
  wire [0:0]S_AXI_net_WREADY;
  wire [3:0]S_AXI_net_WSTRB;
  wire [0:0]S_AXI_net_WVALID;
  wire aclk_ctrl_net;
  wire aclk_freerun_net;
  wire aclk_pcie_net;
  wire [0:0]aresetn_aclk_freerun_net;
  wire aresetn_ctrl_net;
  wire [23:0]axi_ic_ctrl_mgmt_freq_M00_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_freq_M00_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M00_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M00_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M00_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M00_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_freq_M00_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_WVALID;
  wire [23:0]axi_ic_ctrl_mgmt_freq_M01_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_freq_M01_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M01_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M01_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M01_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M01_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_freq_M01_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_WVALID;
  wire [23:0]axi_ic_ctrl_mgmt_freq_M02_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_ARVALID;
  wire [23:0]axi_ic_ctrl_mgmt_freq_M02_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M02_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M02_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M02_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M02_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_freq_M02_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_WVALID;
  wire clk_kernel_00_cont_net;
  wire clk_kernel_00_net;
  wire clk_kernel_01_cont_net;
  wire clk_kernel_01_net;

  assign S_AXI_arready[0] = S_AXI_net_ARREADY;
  assign S_AXI_awready[0] = S_AXI_net_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_net_BRESP;
  assign S_AXI_bvalid[0] = S_AXI_net_BVALID;
  assign S_AXI_net_ARADDR = S_AXI_araddr[23:0];
  assign S_AXI_net_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_net_ARVALID = S_AXI_arvalid[0];
  assign S_AXI_net_AWADDR = S_AXI_awaddr[23:0];
  assign S_AXI_net_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_net_AWVALID = S_AXI_awvalid[0];
  assign S_AXI_net_BREADY = S_AXI_bready[0];
  assign S_AXI_net_RREADY = S_AXI_rready[0];
  assign S_AXI_net_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_net_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_net_WVALID = S_AXI_wvalid[0];
  assign S_AXI_rdata[31:0] = S_AXI_net_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_net_RRESP;
  assign S_AXI_rvalid[0] = S_AXI_net_RVALID;
  assign S_AXI_wready[0] = S_AXI_net_WREADY;
  assign aclk_ctrl_net = aclk_ctrl;
  assign aclk_freerun_net = aclk_freerun;
  assign aclk_pcie_net = aclk_pcie;
  assign aresetn_ctrl_net = aresetn_ctrl;
  assign clk_kernel_00_cont_net = aclk_kernel_00_cont;
  assign clk_kernel_00_net = aclk_kernel_00;
  assign clk_kernel_01_cont_net = aclk_kernel_01_cont;
  assign clk_kernel_01_net = aclk_kernel_01;
  bd_1361_axi_ic_ctrl_mgmt_freq_0 axi_ic_ctrl_mgmt_freq
       (.ACLK(aclk_freerun_net),
        .ARESETN(aresetn_aclk_freerun_net),
        .M00_ACLK(aclk_freerun_net),
        .M00_ARESETN(aresetn_aclk_freerun_net),
        .M00_AXI_araddr(axi_ic_ctrl_mgmt_freq_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_ic_ctrl_mgmt_freq_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_ctrl_mgmt_freq_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_ic_ctrl_mgmt_freq_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_ctrl_mgmt_freq_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ctrl_mgmt_freq_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ctrl_mgmt_freq_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_ctrl_mgmt_freq_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ctrl_mgmt_freq_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ctrl_mgmt_freq_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_ctrl_mgmt_freq_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ctrl_mgmt_freq_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_WVALID),
        .M01_ACLK(aclk_freerun_net),
        .M01_ARESETN(aresetn_aclk_freerun_net),
        .M01_AXI_araddr(axi_ic_ctrl_mgmt_freq_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_ic_ctrl_mgmt_freq_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_ic_ctrl_mgmt_freq_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_ic_ctrl_mgmt_freq_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_ic_ctrl_mgmt_freq_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_ic_ctrl_mgmt_freq_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_ic_ctrl_mgmt_freq_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_ctrl_mgmt_freq_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_ctrl_mgmt_freq_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_ctrl_mgmt_freq_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_ctrl_mgmt_freq_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_ctrl_mgmt_freq_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_WVALID),
        .M02_ACLK(aclk_freerun_net),
        .M02_ARESETN(aresetn_aclk_freerun_net),
        .M02_AXI_araddr(axi_ic_ctrl_mgmt_freq_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_ic_ctrl_mgmt_freq_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_ic_ctrl_mgmt_freq_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_ic_ctrl_mgmt_freq_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_ctrl_mgmt_freq_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_ctrl_mgmt_freq_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_ctrl_mgmt_freq_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_ctrl_mgmt_freq_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_ctrl_mgmt_freq_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_ctrl_mgmt_freq_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_ctrl_mgmt_freq_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_ctrl_mgmt_freq_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_WVALID),
        .S00_ACLK(aclk_ctrl_net),
        .S00_ARESETN(aresetn_ctrl_net),
        .S00_AXI_araddr(S_AXI_net_ARADDR),
        .S00_AXI_arprot(S_AXI_net_ARPROT),
        .S00_AXI_arready(S_AXI_net_ARREADY),
        .S00_AXI_arvalid(S_AXI_net_ARVALID),
        .S00_AXI_awaddr(S_AXI_net_AWADDR),
        .S00_AXI_awprot(S_AXI_net_AWPROT),
        .S00_AXI_awready(S_AXI_net_AWREADY),
        .S00_AXI_awvalid(S_AXI_net_AWVALID),
        .S00_AXI_bready(S_AXI_net_BREADY),
        .S00_AXI_bresp(S_AXI_net_BRESP),
        .S00_AXI_bvalid(S_AXI_net_BVALID),
        .S00_AXI_rdata(S_AXI_net_RDATA),
        .S00_AXI_rready(S_AXI_net_RREADY),
        .S00_AXI_rresp(S_AXI_net_RRESP),
        .S00_AXI_rvalid(S_AXI_net_RVALID),
        .S00_AXI_wdata(S_AXI_net_WDATA),
        .S00_AXI_wready(S_AXI_net_WREADY),
        .S00_AXI_wstrb(S_AXI_net_WSTRB),
        .S00_AXI_wvalid(S_AXI_net_WVALID));
  bd_1361_frequency_counter_aclk_0 frequency_counter_aclk
       (.s_axi_aclk(aclk_freerun_net),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M02_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_aclk_freerun_net),
        .s_axi_arready(axi_ic_ctrl_mgmt_freq_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M02_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_freq_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_freq_M02_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_freq_M02_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_freq_M02_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_freq_M02_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_freq_M02_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_freq_M02_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_freq_M02_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_freq_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_WVALID),
        .test_clk0(aclk_ctrl_net),
        .test_clk1(aclk_pcie_net));
  bd_1361_frequency_counter_aclk_kernel_00_0 frequency_counter_aclk_kernel_00
       (.s_axi_aclk(aclk_freerun_net),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M00_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_aclk_freerun_net),
        .s_axi_arready(axi_ic_ctrl_mgmt_freq_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M00_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_freq_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_freq_M00_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_freq_M00_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_freq_M00_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_freq_M00_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_freq_M00_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_freq_M00_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_freq_M00_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_freq_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_WVALID),
        .test_clk0(clk_kernel_00_cont_net),
        .test_clk1(clk_kernel_00_net));
  bd_1361_frequency_counter_aclk_kernel_01_0 frequency_counter_aclk_kernel_01
       (.s_axi_aclk(aclk_freerun_net),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M01_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_aclk_freerun_net),
        .s_axi_arready(axi_ic_ctrl_mgmt_freq_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M01_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_freq_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_freq_M01_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_freq_M01_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_freq_M01_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_freq_M01_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_freq_M01_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_freq_M01_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_freq_M01_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_freq_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_WVALID),
        .test_clk0(clk_kernel_01_cont_net),
        .test_clk1(clk_kernel_01_net));
  bd_1361_psreset_aclk_freerun_0 psreset_aclk_freerun
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_ctrl_net),
        .interconnect_aresetn(aresetn_aclk_freerun_net),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(aclk_freerun_net));
endmodule

module gapping_demand_imp_F6TB9W
   (S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bresp,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk_ctrl,
    aresetn_ctrl,
    clock_throttling_average,
    gapping_demand_toggle,
    requested_gapping_demand_rate,
    s_axi_bready,
    s_axi_bvalid,
    shutdown_request_ack,
    shutdown_request_latch,
    throttling_enabled);
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bresp;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk_ctrl;
  input aresetn_ctrl;
  output [13:0]clock_throttling_average;
  output [0:0]gapping_demand_toggle;
  output [7:0]requested_gapping_demand_rate;
  input s_axi_bready;
  output s_axi_bvalid;
  output [0:0]shutdown_request_ack;
  input [0:0]shutdown_request_latch;
  output [0:0]throttling_enabled;

  wire [23:0]S_AXI_net_ARADDR;
  wire S_AXI_net_ARREADY;
  wire S_AXI_net_ARVALID;
  wire [23:0]S_AXI_net_AWADDR;
  wire S_AXI_net_AWREADY;
  wire S_AXI_net_AWVALID;
  wire [1:0]S_AXI_net_BRESP;
  wire [31:0]S_AXI_net_RDATA;
  wire S_AXI_net_RREADY;
  wire [1:0]S_AXI_net_RRESP;
  wire S_AXI_net_RVALID;
  wire [31:0]S_AXI_net_WDATA;
  wire S_AXI_net_WREADY;
  wire [3:0]S_AXI_net_WSTRB;
  wire S_AXI_net_WVALID;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [13:0]clock_throttling_average_net;
  wire gapping_demand_bready_net;
  wire gapping_demand_bvalid_net;
  wire [7:0]gapping_demand_net;
  wire [0:0]gapping_demand_toggle_net;
  wire [0:0]gapping_demand_update_net;
  wire [30:0]gnd31_net;
  wire [31:0]gpio_gapping_demand_conc_net;
  wire [31:0]gpio_gapping_demand_gpio_net;
  wire [0:0]shutdown_request_ack_net;
  wire [0:0]shutdown_request_gate_en_net;
  wire [0:0]shutdown_request_latched_net;

  assign S_AXI_arready = S_AXI_net_ARREADY;
  assign S_AXI_awready = S_AXI_net_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_net_BRESP;
  assign S_AXI_net_ARADDR = S_AXI_araddr[23:0];
  assign S_AXI_net_ARVALID = S_AXI_arvalid;
  assign S_AXI_net_AWADDR = S_AXI_awaddr[23:0];
  assign S_AXI_net_AWVALID = S_AXI_awvalid;
  assign S_AXI_net_RREADY = S_AXI_rready;
  assign S_AXI_net_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_net_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_net_WVALID = S_AXI_wvalid;
  assign S_AXI_rdata[31:0] = S_AXI_net_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_net_RRESP;
  assign S_AXI_rvalid = S_AXI_net_RVALID;
  assign S_AXI_wready = S_AXI_net_WREADY;
  assign clock_throttling_average[13:0] = clock_throttling_average_net;
  assign gapping_demand_bready_net = s_axi_bready;
  assign gapping_demand_toggle[0] = gapping_demand_toggle_net;
  assign requested_gapping_demand_rate[7:0] = gapping_demand_net;
  assign s_axi_bvalid = gapping_demand_bvalid_net;
  assign shutdown_request_ack[0] = shutdown_request_ack_net;
  assign shutdown_request_latched_net = shutdown_request_latch[0];
  assign throttling_enabled[0] = shutdown_request_gate_en_net;
  bd_1361_clock_throttling_avg_0 clock_throttling_avg
       (.Clk(aclk_ctrl),
        .Rate(gapping_demand_net),
        .Rate_Avg(clock_throttling_average_net),
        .Rate_Upd_Tog(gapping_demand_toggle_net),
        .Rst(aresetn_ctrl));
  bd_1361_gapping_demand_toggle_0 gapping_demand_toggle_RnM
       (.CE(gapping_demand_update_net),
        .CLK(aclk_ctrl),
        .Q(gapping_demand_toggle_net));
  bd_1361_gapping_demand_update_0 gapping_demand_update
       (.Op1(gapping_demand_bvalid_net),
        .Op2(gapping_demand_bready_net),
        .Res(gapping_demand_update_net));
  bd_1361_gnd31_0 gnd31
       (.dout(gnd31_net));
  bd_1361_gpio_gapping_demand_0 gpio_gapping_demand
       (.gpio2_io_i(gpio_gapping_demand_conc_net),
        .gpio_io_o(gpio_gapping_demand_gpio_net),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(S_AXI_net_ARADDR[8:0]),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(S_AXI_net_ARREADY),
        .s_axi_arvalid(S_AXI_net_ARVALID),
        .s_axi_awaddr(S_AXI_net_AWADDR[8:0]),
        .s_axi_awready(S_AXI_net_AWREADY),
        .s_axi_awvalid(S_AXI_net_AWVALID),
        .s_axi_bready(gapping_demand_bready_net),
        .s_axi_bresp(S_AXI_net_BRESP),
        .s_axi_bvalid(gapping_demand_bvalid_net),
        .s_axi_rdata(S_AXI_net_RDATA),
        .s_axi_rready(S_AXI_net_RREADY),
        .s_axi_rresp(S_AXI_net_RRESP),
        .s_axi_rvalid(S_AXI_net_RVALID),
        .s_axi_wdata(S_AXI_net_WDATA),
        .s_axi_wready(S_AXI_net_WREADY),
        .s_axi_wstrb(S_AXI_net_WSTRB),
        .s_axi_wvalid(S_AXI_net_WVALID));
  bd_1361_gpio_gapping_demand_concat_0 gpio_gapping_demand_concat
       (.In0(shutdown_request_latched_net),
        .In1(gnd31_net),
        .dout(gpio_gapping_demand_conc_net));
  bd_1361_slice_gapping_demand_ack_0 slice_gapping_demand_ack
       (.Din(gpio_gapping_demand_gpio_net),
        .Dout(shutdown_request_ack_net));
  bd_1361_slice_gapping_demand_enable_0 slice_gapping_demand_enable
       (.Din(gpio_gapping_demand_gpio_net),
        .Dout(shutdown_request_gate_en_net));
  bd_1361_slice_gapping_demand_rate_0 slice_gapping_demand_rate
       (.Din(gpio_gapping_demand_gpio_net),
        .Dout(gapping_demand_net));
endmodule

module m00_couplers_imp_MUZ9A9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [23:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [23:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[23:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[23:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[23:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_XDP4OE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [23:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [23:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[23:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[23:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[23:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1NB73IA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [23:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [23:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[23:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[23:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[23:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1Z07QUL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [23:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [23:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[23:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[23:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[23:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_119Y2O6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [23:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [23:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[23:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[23:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[23:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1BUJ6ZT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [23:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [23:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[23:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[23:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[23:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_C5SXUY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [23:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [23:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[23:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[23:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[23:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_34LYQP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [23:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [23:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[23:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[23:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[23:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_1336ZJ6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [23:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [23:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[23:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[23:0];
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[23:0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1N75IZH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [23:0]auto_cc_to_s00_couplers_ARADDR;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [0:0]auto_cc_to_s00_couplers_ARREADY;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [23:0]auto_cc_to_s00_couplers_AWADDR;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [0:0]auto_cc_to_s00_couplers_AWREADY;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire [0:0]auto_cc_to_s00_couplers_BVALID;
  wire [31:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire [0:0]auto_cc_to_s00_couplers_RVALID;
  wire [31:0]auto_cc_to_s00_couplers_WDATA;
  wire [0:0]auto_cc_to_s00_couplers_WREADY;
  wire [3:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [23:0]s00_couplers_to_auto_cc_ARADDR;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [0:0]s00_couplers_to_auto_cc_ARVALID;
  wire [23:0]s00_couplers_to_auto_cc_AWADDR;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [0:0]s00_couplers_to_auto_cc_AWVALID;
  wire [0:0]s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [31:0]s00_couplers_to_auto_cc_RDATA;
  wire [0:0]s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [31:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [3:0]s00_couplers_to_auto_cc_WSTRB;
  wire [0:0]s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[23:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready[0] = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[23:0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[23:0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid[0];
  bd_1361_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_1YVJBSI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [23:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [23:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [23:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[23:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[23:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[23:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module ucs_control_status_imp_1GKYAWY
   (S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk_ctrl,
    aresetn_ctrl,
    clock_program_done,
    clock_throttling_average,
    power_down,
    shutdown_clocks,
    shutdown_request_ack,
    shutdown_request_latch,
    throttling_enabled);
  input [23:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [23:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk_ctrl;
  input aresetn_ctrl;
  output [0:0]clock_program_done;
  input [13:0]clock_throttling_average;
  output power_down;
  input shutdown_clocks;
  input shutdown_request_ack;
  output shutdown_request_latch;
  input throttling_enabled;

  wire [15:0]Request_SW_net;
  wire [23:0]S_AXI_net_ARADDR;
  wire S_AXI_net_ARREADY;
  wire S_AXI_net_ARVALID;
  wire [23:0]S_AXI_net_AWADDR;
  wire S_AXI_net_AWREADY;
  wire S_AXI_net_AWVALID;
  wire S_AXI_net_BREADY;
  wire [1:0]S_AXI_net_BRESP;
  wire S_AXI_net_BVALID;
  wire [31:0]S_AXI_net_RDATA;
  wire S_AXI_net_RREADY;
  wire [1:0]S_AXI_net_RRESP;
  wire S_AXI_net_RVALID;
  wire [31:0]S_AXI_net_WDATA;
  wire S_AXI_net_WREADY;
  wire [3:0]S_AXI_net_WSTRB;
  wire S_AXI_net_WVALID;
  wire aclk_ctrl_net;
  wire aresetn_ctrl_net;
  wire [0:0]clock_program_done_net;
  wire [13:0]clock_throttling_average_net;
  wire force_shutdown_net;
  wire [14:0]gnd15_net;
  wire [1:0]gnd2_net;
  wire [31:0]gpio_ucs_control_status_net;
  wire [31:0]gpio_ucs_status_concat_net;
  wire request_ack_net;
  wire request_gate_en_net;
  wire request_latch_net;
  wire shutdown_latch_net;

  assign S_AXI_arready = S_AXI_net_ARREADY;
  assign S_AXI_awready = S_AXI_net_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_net_BRESP;
  assign S_AXI_bvalid = S_AXI_net_BVALID;
  assign S_AXI_net_ARADDR = S_AXI_araddr[23:0];
  assign S_AXI_net_ARVALID = S_AXI_arvalid;
  assign S_AXI_net_AWADDR = S_AXI_awaddr[23:0];
  assign S_AXI_net_AWVALID = S_AXI_awvalid;
  assign S_AXI_net_BREADY = S_AXI_bready;
  assign S_AXI_net_RREADY = S_AXI_rready;
  assign S_AXI_net_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_net_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_net_WVALID = S_AXI_wvalid;
  assign S_AXI_rdata[31:0] = S_AXI_net_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_net_RRESP;
  assign S_AXI_rvalid = S_AXI_net_RVALID;
  assign S_AXI_wready = S_AXI_net_WREADY;
  assign aclk_ctrl_net = aclk_ctrl;
  assign aresetn_ctrl_net = aresetn_ctrl;
  assign clock_program_done[0] = clock_program_done_net;
  assign clock_throttling_average_net = clock_throttling_average[13:0];
  assign force_shutdown_net = shutdown_clocks;
  assign power_down = shutdown_latch_net;
  assign request_ack_net = shutdown_request_ack;
  assign request_gate_en_net = throttling_enabled;
  assign shutdown_request_latch = request_latch_net;
  bd_1361_clock_shutdown_latch_0 clock_shutdown_latch
       (.Clk(aclk_ctrl_net),
        .Request_Ack(request_ack_net),
        .Request_Gate_En(request_gate_en_net),
        .Request_Latch(request_latch_net),
        .Request_SC(force_shutdown_net),
        .Request_SW(Request_SW_net),
        .Rst(aresetn_ctrl_net),
        .Shutdown_Latch(shutdown_latch_net));
  bd_1361_gnd15_0 gnd15
       (.dout(gnd15_net));
  bd_1361_gnd2_0 gnd2
       (.dout(gnd2_net));
  bd_1361_gpio_ucs_control_status_0 gpio_ucs_control_status
       (.gpio2_io_o(gpio_ucs_control_status_net),
        .gpio_io_i(gpio_ucs_status_concat_net),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(S_AXI_net_ARADDR[8:0]),
        .s_axi_aresetn(aresetn_ctrl_net),
        .s_axi_arready(S_AXI_net_ARREADY),
        .s_axi_arvalid(S_AXI_net_ARVALID),
        .s_axi_awaddr(S_AXI_net_AWADDR[8:0]),
        .s_axi_awready(S_AXI_net_AWREADY),
        .s_axi_awvalid(S_AXI_net_AWVALID),
        .s_axi_bready(S_AXI_net_BREADY),
        .s_axi_bresp(S_AXI_net_BRESP),
        .s_axi_bvalid(S_AXI_net_BVALID),
        .s_axi_rdata(S_AXI_net_RDATA),
        .s_axi_rready(S_AXI_net_RREADY),
        .s_axi_rresp(S_AXI_net_RRESP),
        .s_axi_rvalid(S_AXI_net_RVALID),
        .s_axi_wdata(S_AXI_net_WDATA),
        .s_axi_wready(S_AXI_net_WREADY),
        .s_axi_wstrb(S_AXI_net_WSTRB),
        .s_axi_wvalid(S_AXI_net_WVALID));
  bd_1361_gpio_ucs_status_concat_0 gpio_ucs_status_concat
       (.In0(shutdown_latch_net),
        .In1(gnd15_net),
        .In2(clock_throttling_average_net),
        .In3(gnd2_net),
        .dout(gpio_ucs_status_concat_net));
  bd_1361_slice_ucs_control_status_done_0 slice_ucs_control_status_done
       (.Din(gpio_ucs_control_status_net),
        .Dout(clock_program_done_net));
  bd_1361_slice_ucs_control_status_force_shutdown_0 slice_ucs_control_status_force_shutdown
       (.Din(gpio_ucs_control_status_net),
        .Dout(Request_SW_net));
endmodule
