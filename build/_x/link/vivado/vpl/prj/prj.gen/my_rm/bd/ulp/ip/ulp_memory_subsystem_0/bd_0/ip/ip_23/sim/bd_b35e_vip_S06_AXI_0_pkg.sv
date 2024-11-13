///////////////////////////////////////////////////////////////////////////
//NOTE: This file has been automatically generated by Vivado.
///////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
package bd_b35e_vip_S06_AXI_0_pkg;
import axi_vip_pkg::*;
///////////////////////////////////////////////////////////////////////////
// These parameters are named after the component for use in your verification 
// environment.
///////////////////////////////////////////////////////////////////////////
      parameter bd_b35e_vip_S06_AXI_0_VIP_PROTOCOL           = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_READ_WRITE_MODE    = "WRITE_ONLY";
      parameter bd_b35e_vip_S06_AXI_0_VIP_INTERFACE_MODE     = 1;
      parameter bd_b35e_vip_S06_AXI_0_VIP_ADDR_WIDTH         = 39;
      parameter bd_b35e_vip_S06_AXI_0_VIP_DATA_WIDTH         = 512;
      parameter bd_b35e_vip_S06_AXI_0_VIP_ID_WIDTH           = 1;
      parameter bd_b35e_vip_S06_AXI_0_VIP_AWUSER_WIDTH       = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_ARUSER_WIDTH       = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_RUSER_WIDTH        = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_WUSER_WIDTH        = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_BUSER_WIDTH        = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_SUPPORTS_NARROW    = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_BURST          = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_LOCK           = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_CACHE          = 1;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_REGION         = 1;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_QOS            = 1;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_PROT           = 1;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_WSTRB          = 1;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_BRESP          = 1;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_RRESP          = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_ACLKEN         = 0;
      parameter bd_b35e_vip_S06_AXI_0_VIP_HAS_ARESETN        = 1;
///////////////////////////////////////////////////////////////////////////

typedef axi_passthrough_agent #(bd_b35e_vip_S06_AXI_0_VIP_PROTOCOL, 
                                bd_b35e_vip_S06_AXI_0_VIP_ADDR_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_DATA_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_DATA_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_ID_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_ID_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_AWUSER_WIDTH, 
                                bd_b35e_vip_S06_AXI_0_VIP_WUSER_WIDTH, 
                                bd_b35e_vip_S06_AXI_0_VIP_BUSER_WIDTH, 
                                bd_b35e_vip_S06_AXI_0_VIP_ARUSER_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_RUSER_WIDTH, 
                                bd_b35e_vip_S06_AXI_0_VIP_SUPPORTS_NARROW, 
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_BURST,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_LOCK,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_CACHE,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_REGION,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_PROT,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_QOS,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_WSTRB,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_BRESP,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_RRESP,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_ARESETN) bd_b35e_vip_S06_AXI_0_passthrough_t;

typedef axi_passthrough_mem_agent #(bd_b35e_vip_S06_AXI_0_VIP_PROTOCOL, 
                                bd_b35e_vip_S06_AXI_0_VIP_ADDR_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_DATA_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_DATA_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_ID_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_ID_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_AWUSER_WIDTH, 
                                bd_b35e_vip_S06_AXI_0_VIP_WUSER_WIDTH, 
                                bd_b35e_vip_S06_AXI_0_VIP_BUSER_WIDTH, 
                                bd_b35e_vip_S06_AXI_0_VIP_ARUSER_WIDTH,
                                bd_b35e_vip_S06_AXI_0_VIP_RUSER_WIDTH, 
                                bd_b35e_vip_S06_AXI_0_VIP_SUPPORTS_NARROW, 
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_BURST,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_LOCK,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_CACHE,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_REGION,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_PROT,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_QOS,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_WSTRB,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_BRESP,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_RRESP,
                                bd_b35e_vip_S06_AXI_0_VIP_HAS_ARESETN) bd_b35e_vip_S06_AXI_0_passthrough_mem_t;

///////////////////////////////////////////////////////////////////////////
// How to start the verification component
///////////////////////////////////////////////////////////////////////////
//      bd_b35e_vip_S06_AXI_0_passthrough_t  bd_b35e_vip_S06_AXI_0_passthrough;
//      initial begin : START_bd_b35e_vip_S06_AXI_0_SLAVE
//        bd_b35e_vip_S06_AXI_0_passthrough = new("bd_b35e_vip_S06_AXI_0_passthrough", `bd_b35e_vip_S06_AXI_0_PATH_TO_INTERFACE);
//        bd_b35e_vip_S06_AXI_0_passthrough.start_master(); //passthrough in run time master mode
//        bd_b35e_vip_S06_AXI_0_passthrough.start_slave(); //passthrough in run time slave mode
//      end


endpackage : bd_b35e_vip_S06_AXI_0_pkg
