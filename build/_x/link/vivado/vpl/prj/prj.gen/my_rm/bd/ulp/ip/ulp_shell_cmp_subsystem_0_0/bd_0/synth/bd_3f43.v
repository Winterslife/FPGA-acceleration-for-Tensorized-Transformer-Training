//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_3f43.bd
//Design : bd_3f43
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_3f43,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_3f43,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ulp_shell_cmp_subsystem_0_0.hwdef" *) 
module bd_3f43
   (aclk_ctrl,
    aresetn_ctrl,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
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
    s_axi_ctrl_user_debug_araddr,
    s_axi_ctrl_user_debug_arprot,
    s_axi_ctrl_user_debug_arready,
    s_axi_ctrl_user_debug_arvalid,
    s_axi_ctrl_user_debug_awaddr,
    s_axi_ctrl_user_debug_awprot,
    s_axi_ctrl_user_debug_awready,
    s_axi_ctrl_user_debug_awvalid,
    s_axi_ctrl_user_debug_bready,
    s_axi_ctrl_user_debug_bresp,
    s_axi_ctrl_user_debug_bvalid,
    s_axi_ctrl_user_debug_rdata,
    s_axi_ctrl_user_debug_rready,
    s_axi_ctrl_user_debug_rresp,
    s_axi_ctrl_user_debug_rvalid,
    s_axi_ctrl_user_debug_wdata,
    s_axi_ctrl_user_debug_wready,
    s_axi_ctrl_user_debug_wstrb,
    s_axi_ctrl_user_debug_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl_mgmt:s_axi_ctrl_user_debug, ASSOCIATED_RESET aresetn_ctrl, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 1, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [4:0]s_axi_ctrl_mgmt_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *) output s_axi_ctrl_mgmt_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *) input s_axi_ctrl_mgmt_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *) input [4:0]s_axi_ctrl_mgmt_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *) output s_axi_ctrl_mgmt_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *) input s_axi_ctrl_mgmt_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *) input s_axi_ctrl_mgmt_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *) output [1:0]s_axi_ctrl_mgmt_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *) output s_axi_ctrl_mgmt_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *) output [31:0]s_axi_ctrl_mgmt_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *) input s_axi_ctrl_mgmt_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *) output [1:0]s_axi_ctrl_mgmt_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *) output s_axi_ctrl_mgmt_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *) input [31:0]s_axi_ctrl_mgmt_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *) output s_axi_ctrl_mgmt_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *) input [3:0]s_axi_ctrl_mgmt_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *) input s_axi_ctrl_mgmt_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_user_debug, ADDR_WIDTH 25, ARUSER_WIDTH 0, ASSOCIATED_BUSIF S_AXI, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 1, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [4:0]s_axi_ctrl_user_debug_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARPROT" *) input [2:0]s_axi_ctrl_user_debug_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARREADY" *) output s_axi_ctrl_user_debug_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARVALID" *) input s_axi_ctrl_user_debug_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWADDR" *) input [4:0]s_axi_ctrl_user_debug_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWPROT" *) input [2:0]s_axi_ctrl_user_debug_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWREADY" *) output s_axi_ctrl_user_debug_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWVALID" *) input s_axi_ctrl_user_debug_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug BREADY" *) input s_axi_ctrl_user_debug_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug BRESP" *) output [1:0]s_axi_ctrl_user_debug_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug BVALID" *) output s_axi_ctrl_user_debug_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RDATA" *) output [31:0]s_axi_ctrl_user_debug_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RREADY" *) input s_axi_ctrl_user_debug_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RRESP" *) output [1:0]s_axi_ctrl_user_debug_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RVALID" *) output s_axi_ctrl_user_debug_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WDATA" *) input [31:0]s_axi_ctrl_user_debug_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WREADY" *) output s_axi_ctrl_user_debug_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WSTRB" *) input [3:0]s_axi_ctrl_user_debug_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WVALID" *) input s_axi_ctrl_user_debug_wvalid;

  wire aclk_ctrl_mgmt_net;
  wire aresetn_ctrl_mgmt_net;
  wire [4:0]axi_ic_mgmt_M00_AXI_ARADDR;
  wire axi_ic_mgmt_M00_AXI_ARREADY;
  wire axi_ic_mgmt_M00_AXI_ARVALID;
  wire [4:0]axi_ic_mgmt_M00_AXI_AWADDR;
  wire axi_ic_mgmt_M00_AXI_AWREADY;
  wire axi_ic_mgmt_M00_AXI_AWVALID;
  wire axi_ic_mgmt_M00_AXI_BREADY;
  wire [1:0]axi_ic_mgmt_M00_AXI_BRESP;
  wire axi_ic_mgmt_M00_AXI_BVALID;
  wire [31:0]axi_ic_mgmt_M00_AXI_RDATA;
  wire axi_ic_mgmt_M00_AXI_RREADY;
  wire [1:0]axi_ic_mgmt_M00_AXI_RRESP;
  wire axi_ic_mgmt_M00_AXI_RVALID;
  wire [31:0]axi_ic_mgmt_M00_AXI_WDATA;
  wire axi_ic_mgmt_M00_AXI_WREADY;
  wire [3:0]axi_ic_mgmt_M00_AXI_WSTRB;
  wire axi_ic_mgmt_M00_AXI_WVALID;
  wire [4:0]s_axi_ctrl_mgmt_net_ARADDR;
  wire s_axi_ctrl_mgmt_net_ARREADY;
  wire s_axi_ctrl_mgmt_net_ARVALID;
  wire [4:0]s_axi_ctrl_mgmt_net_AWADDR;
  wire s_axi_ctrl_mgmt_net_AWREADY;
  wire s_axi_ctrl_mgmt_net_AWVALID;
  wire s_axi_ctrl_mgmt_net_BREADY;
  wire [1:0]s_axi_ctrl_mgmt_net_BRESP;
  wire s_axi_ctrl_mgmt_net_BVALID;
  wire [31:0]s_axi_ctrl_mgmt_net_RDATA;
  wire s_axi_ctrl_mgmt_net_RREADY;
  wire [1:0]s_axi_ctrl_mgmt_net_RRESP;
  wire s_axi_ctrl_mgmt_net_RVALID;
  wire [31:0]s_axi_ctrl_mgmt_net_WDATA;
  wire s_axi_ctrl_mgmt_net_WREADY;
  wire [3:0]s_axi_ctrl_mgmt_net_WSTRB;
  wire s_axi_ctrl_mgmt_net_WVALID;
  wire [4:0]s_axi_ctrl_user_debug_net_ARADDR;
  wire [2:0]s_axi_ctrl_user_debug_net_ARPROT;
  wire s_axi_ctrl_user_debug_net_ARREADY;
  wire s_axi_ctrl_user_debug_net_ARVALID;
  wire [4:0]s_axi_ctrl_user_debug_net_AWADDR;
  wire [2:0]s_axi_ctrl_user_debug_net_AWPROT;
  wire s_axi_ctrl_user_debug_net_AWREADY;
  wire s_axi_ctrl_user_debug_net_AWVALID;
  wire s_axi_ctrl_user_debug_net_BREADY;
  wire [1:0]s_axi_ctrl_user_debug_net_BRESP;
  wire s_axi_ctrl_user_debug_net_BVALID;
  wire [31:0]s_axi_ctrl_user_debug_net_RDATA;
  wire s_axi_ctrl_user_debug_net_RREADY;
  wire [1:0]s_axi_ctrl_user_debug_net_RRESP;
  wire s_axi_ctrl_user_debug_net_RVALID;
  wire [31:0]s_axi_ctrl_user_debug_net_WDATA;
  wire s_axi_ctrl_user_debug_net_WREADY;
  wire [3:0]s_axi_ctrl_user_debug_net_WSTRB;
  wire s_axi_ctrl_user_debug_net_WVALID;
  wire user_debug_bridge_m0_bscan_BSCANID_EN;
  wire user_debug_bridge_m0_bscan_CAPTURE;
  wire user_debug_bridge_m0_bscan_DRCK;
  wire user_debug_bridge_m0_bscan_RESET;
  wire user_debug_bridge_m0_bscan_RUNTEST;
  wire user_debug_bridge_m0_bscan_SEL;
  wire user_debug_bridge_m0_bscan_SHIFT;
  wire user_debug_bridge_m0_bscan_TCK;
  wire user_debug_bridge_m0_bscan_TDI;
  wire user_debug_bridge_m0_bscan_TDO;
  wire user_debug_bridge_m0_bscan_TMS;
  wire user_debug_bridge_m0_bscan_UPDATE;

  assign aclk_ctrl_mgmt_net = aclk_ctrl;
  assign aresetn_ctrl_mgmt_net = aresetn_ctrl;
  assign s_axi_ctrl_mgmt_arready = s_axi_ctrl_mgmt_net_ARREADY;
  assign s_axi_ctrl_mgmt_awready = s_axi_ctrl_mgmt_net_AWREADY;
  assign s_axi_ctrl_mgmt_bresp[1:0] = s_axi_ctrl_mgmt_net_BRESP;
  assign s_axi_ctrl_mgmt_bvalid = s_axi_ctrl_mgmt_net_BVALID;
  assign s_axi_ctrl_mgmt_net_ARADDR = s_axi_ctrl_mgmt_araddr[4:0];
  assign s_axi_ctrl_mgmt_net_ARVALID = s_axi_ctrl_mgmt_arvalid;
  assign s_axi_ctrl_mgmt_net_AWADDR = s_axi_ctrl_mgmt_awaddr[4:0];
  assign s_axi_ctrl_mgmt_net_AWVALID = s_axi_ctrl_mgmt_awvalid;
  assign s_axi_ctrl_mgmt_net_BREADY = s_axi_ctrl_mgmt_bready;
  assign s_axi_ctrl_mgmt_net_RREADY = s_axi_ctrl_mgmt_rready;
  assign s_axi_ctrl_mgmt_net_WDATA = s_axi_ctrl_mgmt_wdata[31:0];
  assign s_axi_ctrl_mgmt_net_WSTRB = s_axi_ctrl_mgmt_wstrb[3:0];
  assign s_axi_ctrl_mgmt_net_WVALID = s_axi_ctrl_mgmt_wvalid;
  assign s_axi_ctrl_mgmt_rdata[31:0] = s_axi_ctrl_mgmt_net_RDATA;
  assign s_axi_ctrl_mgmt_rresp[1:0] = s_axi_ctrl_mgmt_net_RRESP;
  assign s_axi_ctrl_mgmt_rvalid = s_axi_ctrl_mgmt_net_RVALID;
  assign s_axi_ctrl_mgmt_wready = s_axi_ctrl_mgmt_net_WREADY;
  assign s_axi_ctrl_user_debug_arready = s_axi_ctrl_user_debug_net_ARREADY;
  assign s_axi_ctrl_user_debug_awready = s_axi_ctrl_user_debug_net_AWREADY;
  assign s_axi_ctrl_user_debug_bresp[1:0] = s_axi_ctrl_user_debug_net_BRESP;
  assign s_axi_ctrl_user_debug_bvalid = s_axi_ctrl_user_debug_net_BVALID;
  assign s_axi_ctrl_user_debug_net_ARADDR = s_axi_ctrl_user_debug_araddr[4:0];
  assign s_axi_ctrl_user_debug_net_ARPROT = s_axi_ctrl_user_debug_arprot[2:0];
  assign s_axi_ctrl_user_debug_net_ARVALID = s_axi_ctrl_user_debug_arvalid;
  assign s_axi_ctrl_user_debug_net_AWADDR = s_axi_ctrl_user_debug_awaddr[4:0];
  assign s_axi_ctrl_user_debug_net_AWPROT = s_axi_ctrl_user_debug_awprot[2:0];
  assign s_axi_ctrl_user_debug_net_AWVALID = s_axi_ctrl_user_debug_awvalid;
  assign s_axi_ctrl_user_debug_net_BREADY = s_axi_ctrl_user_debug_bready;
  assign s_axi_ctrl_user_debug_net_RREADY = s_axi_ctrl_user_debug_rready;
  assign s_axi_ctrl_user_debug_net_WDATA = s_axi_ctrl_user_debug_wdata[31:0];
  assign s_axi_ctrl_user_debug_net_WSTRB = s_axi_ctrl_user_debug_wstrb[3:0];
  assign s_axi_ctrl_user_debug_net_WVALID = s_axi_ctrl_user_debug_wvalid;
  assign s_axi_ctrl_user_debug_rdata[31:0] = s_axi_ctrl_user_debug_net_RDATA;
  assign s_axi_ctrl_user_debug_rresp[1:0] = s_axi_ctrl_user_debug_net_RRESP;
  assign s_axi_ctrl_user_debug_rvalid = s_axi_ctrl_user_debug_net_RVALID;
  assign s_axi_ctrl_user_debug_wready = s_axi_ctrl_user_debug_net_WREADY;
  bd_3f43_axi_ic_ctrl_mgmt_0 axi_ic_ctrl_mgmt
       (.ACLK(aclk_ctrl_mgmt_net),
        .ARESETN(aresetn_ctrl_mgmt_net),
        .M00_ACLK(aclk_ctrl_mgmt_net),
        .M00_ARESETN(aresetn_ctrl_mgmt_net),
        .M00_AXI_araddr(axi_ic_mgmt_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_ic_mgmt_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_mgmt_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_mgmt_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_ic_mgmt_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_mgmt_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_mgmt_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_mgmt_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_mgmt_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_mgmt_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_mgmt_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_mgmt_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_mgmt_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_mgmt_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_mgmt_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_mgmt_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_mgmt_M00_AXI_WVALID),
        .S00_ACLK(aclk_ctrl_mgmt_net),
        .S00_ARESETN(aresetn_ctrl_mgmt_net),
        .S00_AXI_araddr(s_axi_ctrl_mgmt_net_ARADDR),
        .S00_AXI_arready(s_axi_ctrl_mgmt_net_ARREADY),
        .S00_AXI_arvalid(s_axi_ctrl_mgmt_net_ARVALID),
        .S00_AXI_awaddr(s_axi_ctrl_mgmt_net_AWADDR),
        .S00_AXI_awready(s_axi_ctrl_mgmt_net_AWREADY),
        .S00_AXI_awvalid(s_axi_ctrl_mgmt_net_AWVALID),
        .S00_AXI_bready(s_axi_ctrl_mgmt_net_BREADY),
        .S00_AXI_bresp(s_axi_ctrl_mgmt_net_BRESP),
        .S00_AXI_bvalid(s_axi_ctrl_mgmt_net_BVALID),
        .S00_AXI_rdata(s_axi_ctrl_mgmt_net_RDATA),
        .S00_AXI_rready(s_axi_ctrl_mgmt_net_RREADY),
        .S00_AXI_rresp(s_axi_ctrl_mgmt_net_RRESP),
        .S00_AXI_rvalid(s_axi_ctrl_mgmt_net_RVALID),
        .S00_AXI_wdata(s_axi_ctrl_mgmt_net_WDATA),
        .S00_AXI_wready(s_axi_ctrl_mgmt_net_WREADY),
        .S00_AXI_wstrb(s_axi_ctrl_mgmt_net_WSTRB),
        .S00_AXI_wvalid(s_axi_ctrl_mgmt_net_WVALID));
  bd_3f43_build_info_0 build_info
       (.S_AXI_ACLK(aclk_ctrl_mgmt_net),
        .S_AXI_ARADDR(axi_ic_mgmt_M00_AXI_ARADDR),
        .S_AXI_ARESETN(aresetn_ctrl_mgmt_net),
        .S_AXI_ARREADY(axi_ic_mgmt_M00_AXI_ARREADY),
        .S_AXI_ARVALID(axi_ic_mgmt_M00_AXI_ARVALID),
        .S_AXI_AWADDR(axi_ic_mgmt_M00_AXI_AWADDR),
        .S_AXI_AWREADY(axi_ic_mgmt_M00_AXI_AWREADY),
        .S_AXI_AWVALID(axi_ic_mgmt_M00_AXI_AWVALID),
        .S_AXI_BREADY(axi_ic_mgmt_M00_AXI_BREADY),
        .S_AXI_BRESP(axi_ic_mgmt_M00_AXI_BRESP),
        .S_AXI_BVALID(axi_ic_mgmt_M00_AXI_BVALID),
        .S_AXI_RDATA(axi_ic_mgmt_M00_AXI_RDATA),
        .S_AXI_RREADY(axi_ic_mgmt_M00_AXI_RREADY),
        .S_AXI_RRESP(axi_ic_mgmt_M00_AXI_RRESP),
        .S_AXI_RVALID(axi_ic_mgmt_M00_AXI_RVALID),
        .S_AXI_WDATA(axi_ic_mgmt_M00_AXI_WDATA),
        .S_AXI_WREADY(axi_ic_mgmt_M00_AXI_WREADY),
        .S_AXI_WSTRB(axi_ic_mgmt_M00_AXI_WSTRB),
        .S_AXI_WVALID(axi_ic_mgmt_M00_AXI_WVALID));
  bd_3f43_user_debug_bridge_0 user_debug_bridge
       (.S_AXI_araddr(s_axi_ctrl_user_debug_net_ARADDR),
        .S_AXI_arprot(s_axi_ctrl_user_debug_net_ARPROT),
        .S_AXI_arready(s_axi_ctrl_user_debug_net_ARREADY),
        .S_AXI_arvalid(s_axi_ctrl_user_debug_net_ARVALID),
        .S_AXI_awaddr(s_axi_ctrl_user_debug_net_AWADDR),
        .S_AXI_awprot(s_axi_ctrl_user_debug_net_AWPROT),
        .S_AXI_awready(s_axi_ctrl_user_debug_net_AWREADY),
        .S_AXI_awvalid(s_axi_ctrl_user_debug_net_AWVALID),
        .S_AXI_bready(s_axi_ctrl_user_debug_net_BREADY),
        .S_AXI_bresp(s_axi_ctrl_user_debug_net_BRESP),
        .S_AXI_bvalid(s_axi_ctrl_user_debug_net_BVALID),
        .S_AXI_rdata(s_axi_ctrl_user_debug_net_RDATA),
        .S_AXI_rready(s_axi_ctrl_user_debug_net_RREADY),
        .S_AXI_rresp(s_axi_ctrl_user_debug_net_RRESP),
        .S_AXI_rvalid(s_axi_ctrl_user_debug_net_RVALID),
        .S_AXI_wdata(s_axi_ctrl_user_debug_net_WDATA),
        .S_AXI_wready(s_axi_ctrl_user_debug_net_WREADY),
        .S_AXI_wstrb(s_axi_ctrl_user_debug_net_WSTRB),
        .S_AXI_wvalid(s_axi_ctrl_user_debug_net_WVALID),
        .m0_bscan_bscanid_en(user_debug_bridge_m0_bscan_BSCANID_EN),
        .m0_bscan_capture(user_debug_bridge_m0_bscan_CAPTURE),
        .m0_bscan_drck(user_debug_bridge_m0_bscan_DRCK),
        .m0_bscan_reset(user_debug_bridge_m0_bscan_RESET),
        .m0_bscan_runtest(user_debug_bridge_m0_bscan_RUNTEST),
        .m0_bscan_sel(user_debug_bridge_m0_bscan_SEL),
        .m0_bscan_shift(user_debug_bridge_m0_bscan_SHIFT),
        .m0_bscan_tck(user_debug_bridge_m0_bscan_TCK),
        .m0_bscan_tdi(user_debug_bridge_m0_bscan_TDI),
        .m0_bscan_tdo(user_debug_bridge_m0_bscan_TDO),
        .m0_bscan_tms(user_debug_bridge_m0_bscan_TMS),
        .m0_bscan_update(user_debug_bridge_m0_bscan_UPDATE),
        .s_axi_aclk(aclk_ctrl_mgmt_net),
        .s_axi_aresetn(aresetn_ctrl_mgmt_net));
  bd_3f43_user_debug_hub_0 user_debug_hub
       (.S_BSCAN_bscanid_en(user_debug_bridge_m0_bscan_BSCANID_EN),
        .S_BSCAN_capture(user_debug_bridge_m0_bscan_CAPTURE),
        .S_BSCAN_drck(user_debug_bridge_m0_bscan_DRCK),
        .S_BSCAN_reset(user_debug_bridge_m0_bscan_RESET),
        .S_BSCAN_runtest(user_debug_bridge_m0_bscan_RUNTEST),
        .S_BSCAN_sel(user_debug_bridge_m0_bscan_SEL),
        .S_BSCAN_shift(user_debug_bridge_m0_bscan_SHIFT),
        .S_BSCAN_tck(user_debug_bridge_m0_bscan_TCK),
        .S_BSCAN_tdi(user_debug_bridge_m0_bscan_TDI),
        .S_BSCAN_tdo(user_debug_bridge_m0_bscan_TDO),
        .S_BSCAN_tms(user_debug_bridge_m0_bscan_TMS),
        .S_BSCAN_update(user_debug_bridge_m0_bscan_UPDATE),
        .clk(aclk_ctrl_mgmt_net));
endmodule

module bd_3f43_axi_ic_ctrl_mgmt_0
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
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
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
  output [4:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [4:0]M00_AXI_awaddr;
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
  input S00_ACLK;
  input S00_ARESETN;
  input [4:0]S00_AXI_araddr;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [4:0]S00_AXI_awaddr;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_ic_ctrl_mgmt_ACLK_net;
  wire axi_ic_ctrl_mgmt_ARESETN_net;
  wire [4:0]axi_ic_ctrl_mgmt_to_s00_couplers_ARADDR;
  wire axi_ic_ctrl_mgmt_to_s00_couplers_ARREADY;
  wire axi_ic_ctrl_mgmt_to_s00_couplers_ARVALID;
  wire [4:0]axi_ic_ctrl_mgmt_to_s00_couplers_AWADDR;
  wire axi_ic_ctrl_mgmt_to_s00_couplers_AWREADY;
  wire axi_ic_ctrl_mgmt_to_s00_couplers_AWVALID;
  wire axi_ic_ctrl_mgmt_to_s00_couplers_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_to_s00_couplers_BRESP;
  wire axi_ic_ctrl_mgmt_to_s00_couplers_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_to_s00_couplers_RDATA;
  wire axi_ic_ctrl_mgmt_to_s00_couplers_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_to_s00_couplers_RRESP;
  wire axi_ic_ctrl_mgmt_to_s00_couplers_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_to_s00_couplers_WDATA;
  wire axi_ic_ctrl_mgmt_to_s00_couplers_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_to_s00_couplers_WSTRB;
  wire axi_ic_ctrl_mgmt_to_s00_couplers_WVALID;
  wire [4:0]s00_couplers_to_axi_ic_ctrl_mgmt_ARADDR;
  wire s00_couplers_to_axi_ic_ctrl_mgmt_ARREADY;
  wire s00_couplers_to_axi_ic_ctrl_mgmt_ARVALID;
  wire [4:0]s00_couplers_to_axi_ic_ctrl_mgmt_AWADDR;
  wire s00_couplers_to_axi_ic_ctrl_mgmt_AWREADY;
  wire s00_couplers_to_axi_ic_ctrl_mgmt_AWVALID;
  wire s00_couplers_to_axi_ic_ctrl_mgmt_BREADY;
  wire [1:0]s00_couplers_to_axi_ic_ctrl_mgmt_BRESP;
  wire s00_couplers_to_axi_ic_ctrl_mgmt_BVALID;
  wire [31:0]s00_couplers_to_axi_ic_ctrl_mgmt_RDATA;
  wire s00_couplers_to_axi_ic_ctrl_mgmt_RREADY;
  wire [1:0]s00_couplers_to_axi_ic_ctrl_mgmt_RRESP;
  wire s00_couplers_to_axi_ic_ctrl_mgmt_RVALID;
  wire [31:0]s00_couplers_to_axi_ic_ctrl_mgmt_WDATA;
  wire s00_couplers_to_axi_ic_ctrl_mgmt_WREADY;
  wire [3:0]s00_couplers_to_axi_ic_ctrl_mgmt_WSTRB;
  wire s00_couplers_to_axi_ic_ctrl_mgmt_WVALID;

  assign M00_AXI_araddr[4:0] = s00_couplers_to_axi_ic_ctrl_mgmt_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_axi_ic_ctrl_mgmt_ARVALID;
  assign M00_AXI_awaddr[4:0] = s00_couplers_to_axi_ic_ctrl_mgmt_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_axi_ic_ctrl_mgmt_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_ic_ctrl_mgmt_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_ic_ctrl_mgmt_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_ic_ctrl_mgmt_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_ic_ctrl_mgmt_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_ic_ctrl_mgmt_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_ic_ctrl_mgmt_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_ic_ctrl_mgmt_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_ic_ctrl_mgmt_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_ic_ctrl_mgmt_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_ic_ctrl_mgmt_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_ic_ctrl_mgmt_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_ic_ctrl_mgmt_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_ic_ctrl_mgmt_to_s00_couplers_WREADY;
  assign axi_ic_ctrl_mgmt_ACLK_net = M00_ACLK;
  assign axi_ic_ctrl_mgmt_ARESETN_net = M00_ARESETN;
  assign axi_ic_ctrl_mgmt_to_s00_couplers_ARADDR = S00_AXI_araddr[4:0];
  assign axi_ic_ctrl_mgmt_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_ic_ctrl_mgmt_to_s00_couplers_AWADDR = S00_AXI_awaddr[4:0];
  assign axi_ic_ctrl_mgmt_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_ic_ctrl_mgmt_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_ic_ctrl_mgmt_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_ic_ctrl_mgmt_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_ic_ctrl_mgmt_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_ic_ctrl_mgmt_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_ic_ctrl_mgmt_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_ic_ctrl_mgmt_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_ic_ctrl_mgmt_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_ic_ctrl_mgmt_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_ic_ctrl_mgmt_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_ic_ctrl_mgmt_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_ic_ctrl_mgmt_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_ic_ctrl_mgmt_WREADY = M00_AXI_wready;
  s00_couplers_imp_LZAOVP s00_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_ic_ctrl_mgmt_ARADDR),
        .M_AXI_arready(s00_couplers_to_axi_ic_ctrl_mgmt_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_ic_ctrl_mgmt_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_ic_ctrl_mgmt_AWADDR),
        .M_AXI_awready(s00_couplers_to_axi_ic_ctrl_mgmt_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_ic_ctrl_mgmt_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_ic_ctrl_mgmt_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_ic_ctrl_mgmt_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_ic_ctrl_mgmt_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_ic_ctrl_mgmt_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_ic_ctrl_mgmt_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_ic_ctrl_mgmt_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_ic_ctrl_mgmt_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_ic_ctrl_mgmt_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_ic_ctrl_mgmt_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_ic_ctrl_mgmt_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_ic_ctrl_mgmt_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_ic_ctrl_mgmt_to_s00_couplers_ARADDR),
        .S_AXI_arready(axi_ic_ctrl_mgmt_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_to_s00_couplers_AWADDR),
        .S_AXI_awready(axi_ic_ctrl_mgmt_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_LZAOVP
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
  output [4:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [4:0]M_AXI_awaddr;
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
  input [4:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [4:0]S_AXI_awaddr;
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

  wire [4:0]s00_couplers_to_s00_couplers_ARADDR;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [4:0]s00_couplers_to_s00_couplers_AWADDR;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[4:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[4:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[4:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[4:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule
