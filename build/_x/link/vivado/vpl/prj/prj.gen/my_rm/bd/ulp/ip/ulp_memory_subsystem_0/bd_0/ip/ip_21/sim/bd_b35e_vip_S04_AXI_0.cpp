// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "bd_b35e_vip_S04_AXI_0_sc.h"

#include "bd_b35e_vip_S04_AXI_0.h"

#include "axi_vip.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
bd_b35e_vip_S04_AXI_0::bd_b35e_vip_S04_AXI_0(const sc_core::sc_module_name& nm) : bd_b35e_vip_S04_AXI_0_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_arid("m_axi_arid"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rid("m_axi_rid"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready"),mp_M_AXI_wr_socket_stub(nullptr),mp_S_AXI_wr_socket_stub(nullptr)
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_M_AXI_transactor = NULL;
  mp_S_AXI_transactor = NULL;

  // initialize socket stubs
  mp_M_AXI_wr_socket_stub = NULL;
  mp_S_AXI_wr_socket_stub = NULL;

}

void bd_b35e_vip_S04_AXI_0::before_end_of_elaboration()
{
  // configure 'M_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "M_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_M_AXI_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket", 0);

  // 'M_AXI' transactor parameters
    xsc::common_cpp::properties M_AXI_transactor_param_props;
    M_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    M_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    M_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    M_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    M_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");
    M_AXI_transactor_param_props.addString("SUPPORT_NARROW_BURST", "1");

    mp_M_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,1,1,1,1,1,1>("M_AXI_transactor", M_AXI_transactor_param_props);

    // M_AXI' transactor ports

    mp_M_AXI_transactor->ARADDR(m_axi_araddr);
    mp_M_AXI_transactor->ARCACHE(m_axi_arcache);
    mp_M_AXI_transactor->ARID(m_axi_arid);
    mp_M_AXI_transactor->ARLEN(m_axi_arlen);
    mp_M_AXI_transactor->ARPROT(m_axi_arprot);
    mp_M_AXI_transactor->ARQOS(m_axi_arqos);
    mp_M_AXI_transactor->ARREADY(m_axi_arready);
    mp_M_AXI_transactor->ARREGION(m_axi_arregion);
    mp_M_AXI_transactor->ARVALID(m_axi_arvalid);
    mp_M_AXI_transactor->RDATA(m_axi_rdata);
    mp_M_AXI_transactor->RID(m_axi_rid);
    mp_M_AXI_transactor->RLAST(m_axi_rlast);
    mp_M_AXI_transactor->RREADY(m_axi_rready);
    mp_M_AXI_transactor->RRESP(m_axi_rresp);
    mp_M_AXI_transactor->RVALID(m_axi_rvalid);
    mp_M_AXI_transactor->CLK(aclk);
    mp_M_AXI_transactor->RST(aresetn);

    // M_AXI' transactor sockets

    mp_impl->M_INITIATOR_rd_socket->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_impl->M_INITIATOR_wr_socket->bind(mp_M_AXI_wr_socket_stub->target_socket);
  }
  else
  {
  }

  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,39,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARCACHE(s_axi_arcache);
    mp_S_AXI_transactor->ARID(s_axi_arid);
    mp_S_AXI_transactor->ARLEN(s_axi_arlen);
    mp_S_AXI_transactor->ARPROT(s_axi_arprot);
    mp_S_AXI_transactor->ARQOS(s_axi_arqos);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARREGION(s_axi_arregion);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RID(s_axi_rid);
    mp_S_AXI_transactor->RLAST(s_axi_rlast);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->CLK(aclk);
    mp_S_AXI_transactor->RST(aresetn);

    // S_AXI' transactor sockets

    mp_impl->S_TARGET_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->S_TARGET_wr_socket->bind(mp_S_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
bd_b35e_vip_S04_AXI_0::bd_b35e_vip_S04_AXI_0(const sc_core::sc_module_name& nm) : bd_b35e_vip_S04_AXI_0_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_arid("m_axi_arid"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rid("m_axi_rid"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready"),mp_M_AXI_wr_socket_stub(nullptr),mp_S_AXI_wr_socket_stub(nullptr)
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_M_AXI_transactor = NULL;
  mp_S_AXI_transactor = NULL;

  // initialize socket stubs
  mp_M_AXI_wr_socket_stub = NULL;
  mp_S_AXI_wr_socket_stub = NULL;

}

void bd_b35e_vip_S04_AXI_0::before_end_of_elaboration()
{
  // configure 'M_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "M_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_M_AXI_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket", 0);

  // 'M_AXI' transactor parameters
    xsc::common_cpp::properties M_AXI_transactor_param_props;
    M_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    M_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    M_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    M_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    M_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");
    M_AXI_transactor_param_props.addString("SUPPORT_NARROW_BURST", "1");

    mp_M_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,1,1,1,1,1,1>("M_AXI_transactor", M_AXI_transactor_param_props);

    // M_AXI' transactor ports

    mp_M_AXI_transactor->ARADDR(m_axi_araddr);
    mp_M_AXI_transactor->ARCACHE(m_axi_arcache);
    mp_M_AXI_transactor->ARID(m_axi_arid);
    mp_M_AXI_transactor->ARLEN(m_axi_arlen);
    mp_M_AXI_transactor->ARPROT(m_axi_arprot);
    mp_M_AXI_transactor->ARQOS(m_axi_arqos);
    mp_M_AXI_transactor->ARREADY(m_axi_arready);
    mp_M_AXI_transactor->ARREGION(m_axi_arregion);
    mp_M_AXI_transactor->ARVALID(m_axi_arvalid);
    mp_M_AXI_transactor->RDATA(m_axi_rdata);
    mp_M_AXI_transactor->RID(m_axi_rid);
    mp_M_AXI_transactor->RLAST(m_axi_rlast);
    mp_M_AXI_transactor->RREADY(m_axi_rready);
    mp_M_AXI_transactor->RRESP(m_axi_rresp);
    mp_M_AXI_transactor->RVALID(m_axi_rvalid);
    mp_M_AXI_transactor->CLK(aclk);
    mp_M_AXI_transactor->RST(aresetn);

    // M_AXI' transactor sockets

    mp_impl->M_INITIATOR_rd_socket->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_impl->M_INITIATOR_wr_socket->bind(mp_M_AXI_wr_socket_stub->target_socket);
  }
  else
  {
  }

  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,39,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARCACHE(s_axi_arcache);
    mp_S_AXI_transactor->ARID(s_axi_arid);
    mp_S_AXI_transactor->ARLEN(s_axi_arlen);
    mp_S_AXI_transactor->ARPROT(s_axi_arprot);
    mp_S_AXI_transactor->ARQOS(s_axi_arqos);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARREGION(s_axi_arregion);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RID(s_axi_rid);
    mp_S_AXI_transactor->RLAST(s_axi_rlast);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->CLK(aclk);
    mp_S_AXI_transactor->RST(aresetn);

    // S_AXI' transactor sockets

    mp_impl->S_TARGET_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->S_TARGET_wr_socket->bind(mp_S_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
bd_b35e_vip_S04_AXI_0::bd_b35e_vip_S04_AXI_0(const sc_core::sc_module_name& nm) : bd_b35e_vip_S04_AXI_0_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_arid("m_axi_arid"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rid("m_axi_rid"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready"),mp_M_AXI_wr_socket_stub(nullptr),mp_S_AXI_wr_socket_stub(nullptr)
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_M_AXI_transactor = NULL;
  mp_S_AXI_transactor = NULL;

  // initialize socket stubs
  mp_M_AXI_wr_socket_stub = NULL;
  mp_S_AXI_wr_socket_stub = NULL;

}

void bd_b35e_vip_S04_AXI_0::before_end_of_elaboration()
{
  // configure 'M_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "M_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_M_AXI_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket", 0);

  // 'M_AXI' transactor parameters
    xsc::common_cpp::properties M_AXI_transactor_param_props;
    M_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    M_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    M_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    M_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    M_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");
    M_AXI_transactor_param_props.addString("SUPPORT_NARROW_BURST", "1");

    mp_M_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,1,1,1,1,1,1>("M_AXI_transactor", M_AXI_transactor_param_props);

    // M_AXI' transactor ports

    mp_M_AXI_transactor->ARADDR(m_axi_araddr);
    mp_M_AXI_transactor->ARCACHE(m_axi_arcache);
    mp_M_AXI_transactor->ARID(m_axi_arid);
    mp_M_AXI_transactor->ARLEN(m_axi_arlen);
    mp_M_AXI_transactor->ARPROT(m_axi_arprot);
    mp_M_AXI_transactor->ARQOS(m_axi_arqos);
    mp_M_AXI_transactor->ARREADY(m_axi_arready);
    mp_M_AXI_transactor->ARREGION(m_axi_arregion);
    mp_M_AXI_transactor->ARVALID(m_axi_arvalid);
    mp_M_AXI_transactor->RDATA(m_axi_rdata);
    mp_M_AXI_transactor->RID(m_axi_rid);
    mp_M_AXI_transactor->RLAST(m_axi_rlast);
    mp_M_AXI_transactor->RREADY(m_axi_rready);
    mp_M_AXI_transactor->RRESP(m_axi_rresp);
    mp_M_AXI_transactor->RVALID(m_axi_rvalid);
    mp_M_AXI_transactor->CLK(aclk);
    mp_M_AXI_transactor->RST(aresetn);

    // M_AXI' transactor sockets

    mp_impl->M_INITIATOR_rd_socket->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_impl->M_INITIATOR_wr_socket->bind(mp_M_AXI_wr_socket_stub->target_socket);
  }
  else
  {
  }

  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,39,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARCACHE(s_axi_arcache);
    mp_S_AXI_transactor->ARID(s_axi_arid);
    mp_S_AXI_transactor->ARLEN(s_axi_arlen);
    mp_S_AXI_transactor->ARPROT(s_axi_arprot);
    mp_S_AXI_transactor->ARQOS(s_axi_arqos);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARREGION(s_axi_arregion);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RID(s_axi_rid);
    mp_S_AXI_transactor->RLAST(s_axi_rlast);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->CLK(aclk);
    mp_S_AXI_transactor->RST(aresetn);

    // S_AXI' transactor sockets

    mp_impl->S_TARGET_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->S_TARGET_wr_socket->bind(mp_S_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
bd_b35e_vip_S04_AXI_0::bd_b35e_vip_S04_AXI_0(const sc_core::sc_module_name& nm) : bd_b35e_vip_S04_AXI_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_arid("m_axi_arid"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rid("m_axi_rid"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready"),mp_M_AXI_wr_socket_stub(nullptr),mp_S_AXI_wr_socket_stub(nullptr)
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_M_AXI_transactor = NULL;
  mp_S_AXI_transactor = NULL;

  // Instantiate Socket Stubs
  mp_M_AXI_wr_socket_stub = NULL;
  mp_S_AXI_wr_socket_stub = NULL;

  // configure M_AXI_transactor
    xsc::common_cpp::properties M_AXI_transactor_param_props;
    M_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    M_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    M_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    M_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    M_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");
    M_AXI_transactor_param_props.addString("SUPPORT_NARROW_BURST", "1");

    mp_M_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,1,1,1,1,1,1>("M_AXI_transactor", M_AXI_transactor_param_props);
  mp_M_AXI_transactor->ARADDR(m_axi_araddr);
  mp_M_AXI_transactor->ARCACHE(m_axi_arcache);
  mp_M_AXI_transactor->ARID(m_axi_arid);
  mp_M_AXI_transactor->ARLEN(m_axi_arlen);
  mp_M_AXI_transactor->ARPROT(m_axi_arprot);
  mp_M_AXI_transactor->ARQOS(m_axi_arqos);
  mp_M_AXI_transactor->ARREADY(m_axi_arready);
  mp_M_AXI_transactor->ARREGION(m_axi_arregion);
  mp_M_AXI_transactor->ARVALID(m_axi_arvalid);
  mp_M_AXI_transactor->RDATA(m_axi_rdata);
  mp_M_AXI_transactor->RID(m_axi_rid);
  mp_M_AXI_transactor->RLAST(m_axi_rlast);
  mp_M_AXI_transactor->RREADY(m_axi_rready);
  mp_M_AXI_transactor->RRESP(m_axi_rresp);
  mp_M_AXI_transactor->RVALID(m_axi_rvalid);
  mp_M_AXI_transactor->CLK(aclk);
  mp_M_AXI_transactor->RST(aresetn);
  // configure S_AXI_transactor
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,39,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);
  mp_S_AXI_transactor->ARADDR(s_axi_araddr);
  mp_S_AXI_transactor->ARCACHE(s_axi_arcache);
  mp_S_AXI_transactor->ARID(s_axi_arid);
  mp_S_AXI_transactor->ARLEN(s_axi_arlen);
  mp_S_AXI_transactor->ARPROT(s_axi_arprot);
  mp_S_AXI_transactor->ARQOS(s_axi_arqos);
  mp_S_AXI_transactor->ARREADY(s_axi_arready);
  mp_S_AXI_transactor->ARREGION(s_axi_arregion);
  mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
  mp_S_AXI_transactor->RDATA(s_axi_rdata);
  mp_S_AXI_transactor->RID(s_axi_rid);
  mp_S_AXI_transactor->RLAST(s_axi_rlast);
  mp_S_AXI_transactor->RREADY(s_axi_rready);
  mp_S_AXI_transactor->RRESP(s_axi_rresp);
  mp_S_AXI_transactor->RVALID(s_axi_rvalid);
  mp_S_AXI_transactor->CLK(aclk);
  mp_S_AXI_transactor->RST(aresetn);

  // initialize transactors stubs
  M_AXI_transactor_initiator_rd_socket_stub = nullptr;
  S_AXI_transactor_target_rd_socket_stub = nullptr;

}

void bd_b35e_vip_S04_AXI_0::before_end_of_elaboration()
{
  // configure 'M_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "M_AXI_TLM_MODE") != 1)
  {
    mp_impl->M_INITIATOR_rd_socket->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_M_AXI_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket", 0);
    mp_impl->M_INITIATOR_wr_socket->bind(mp_M_AXI_wr_socket_stub->target_socket);
  
  }
  else
  {
    M_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_M_AXI_transactor->disable_transactor();
  }

  // configure 'S_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "S_AXI_TLM_MODE") != 1)
  {
    mp_impl->S_TARGET_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_S_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S_TARGET_wr_socket->bind(mp_S_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_S_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
bd_b35e_vip_S04_AXI_0::bd_b35e_vip_S04_AXI_0(const sc_core::sc_module_name& nm) : bd_b35e_vip_S04_AXI_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_arid("m_axi_arid"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rid("m_axi_rid"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready"),mp_M_AXI_wr_socket_stub(nullptr),mp_S_AXI_wr_socket_stub(nullptr)
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_M_AXI_transactor = NULL;
  mp_S_AXI_transactor = NULL;

  // Instantiate Socket Stubs
  mp_M_AXI_wr_socket_stub = NULL;
  mp_S_AXI_wr_socket_stub = NULL;

  // configure M_AXI_transactor
    xsc::common_cpp::properties M_AXI_transactor_param_props;
    M_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    M_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    M_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    M_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    M_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");
    M_AXI_transactor_param_props.addString("SUPPORT_NARROW_BURST", "1");

    mp_M_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,1,1,1,1,1,1>("M_AXI_transactor", M_AXI_transactor_param_props);
  mp_M_AXI_transactor->ARADDR(m_axi_araddr);
  mp_M_AXI_transactor->ARCACHE(m_axi_arcache);
  mp_M_AXI_transactor->ARID(m_axi_arid);
  mp_M_AXI_transactor->ARLEN(m_axi_arlen);
  mp_M_AXI_transactor->ARPROT(m_axi_arprot);
  mp_M_AXI_transactor->ARQOS(m_axi_arqos);
  mp_M_AXI_transactor->ARREADY(m_axi_arready);
  mp_M_AXI_transactor->ARREGION(m_axi_arregion);
  mp_M_AXI_transactor->ARVALID(m_axi_arvalid);
  mp_M_AXI_transactor->RDATA(m_axi_rdata);
  mp_M_AXI_transactor->RID(m_axi_rid);
  mp_M_AXI_transactor->RLAST(m_axi_rlast);
  mp_M_AXI_transactor->RREADY(m_axi_rready);
  mp_M_AXI_transactor->RRESP(m_axi_rresp);
  mp_M_AXI_transactor->RVALID(m_axi_rvalid);
  mp_M_AXI_transactor->CLK(aclk);
  mp_M_AXI_transactor->RST(aresetn);
  // configure S_AXI_transactor
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,39,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);
  mp_S_AXI_transactor->ARADDR(s_axi_araddr);
  mp_S_AXI_transactor->ARCACHE(s_axi_arcache);
  mp_S_AXI_transactor->ARID(s_axi_arid);
  mp_S_AXI_transactor->ARLEN(s_axi_arlen);
  mp_S_AXI_transactor->ARPROT(s_axi_arprot);
  mp_S_AXI_transactor->ARQOS(s_axi_arqos);
  mp_S_AXI_transactor->ARREADY(s_axi_arready);
  mp_S_AXI_transactor->ARREGION(s_axi_arregion);
  mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
  mp_S_AXI_transactor->RDATA(s_axi_rdata);
  mp_S_AXI_transactor->RID(s_axi_rid);
  mp_S_AXI_transactor->RLAST(s_axi_rlast);
  mp_S_AXI_transactor->RREADY(s_axi_rready);
  mp_S_AXI_transactor->RRESP(s_axi_rresp);
  mp_S_AXI_transactor->RVALID(s_axi_rvalid);
  mp_S_AXI_transactor->CLK(aclk);
  mp_S_AXI_transactor->RST(aresetn);

  // initialize transactors stubs
  M_AXI_transactor_initiator_rd_socket_stub = nullptr;
  S_AXI_transactor_target_rd_socket_stub = nullptr;

}

void bd_b35e_vip_S04_AXI_0::before_end_of_elaboration()
{
  // configure 'M_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "M_AXI_TLM_MODE") != 1)
  {
    mp_impl->M_INITIATOR_rd_socket->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_M_AXI_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket", 0);
    mp_impl->M_INITIATOR_wr_socket->bind(mp_M_AXI_wr_socket_stub->target_socket);
  
  }
  else
  {
    M_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_M_AXI_transactor->disable_transactor();
  }

  // configure 'S_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "S_AXI_TLM_MODE") != 1)
  {
    mp_impl->S_TARGET_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_S_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S_TARGET_wr_socket->bind(mp_S_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_S_AXI_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




bd_b35e_vip_S04_AXI_0::~bd_b35e_vip_S04_AXI_0()
{
  delete mp_M_AXI_transactor;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "M_AXI_TLM_MODE") != 1)
  {
    delete mp_M_AXI_wr_socket_stub;
  }

  delete mp_S_AXI_transactor;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_b35e_vip_S04_AXI_0", "S_AXI_TLM_MODE") != 1)
  {
    delete mp_S_AXI_wr_socket_stub;
  }

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(bd_b35e_vip_S04_AXI_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(bd_b35e_vip_S04_AXI_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(bd_b35e_vip_S04_AXI_0);
SC_REGISTER_BV(512);
#endif

