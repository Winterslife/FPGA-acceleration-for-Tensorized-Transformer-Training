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
module pipeline_reg_v1_0_0 #(
  parameter WIDTH       = 1,
  parameter DEPTH       = 1,
  parameter INCLUDE_CDC = 0,
  parameter INACTIVE_VAL = 0  
) 
( 
  input  [WIDTH-1:0] d,
  output [WIDTH-1:0] q,
  input clk,
  input resetn
);

  wire [WIDTH-1:0] d_i;
  
  generate
    if (INCLUDE_CDC) begin
      xpm_cdc_array_single #(
        .DEST_SYNC_FF(4), 
        .INIT_SYNC_FF(0), 
        .SIM_ASSERT_CHK(0), 
        .SRC_INPUT_REG(0), 
        .WIDTH(WIDTH)
      )
      xpm_cdc_array_single_inst (
        .dest_out(d_i), 
        .dest_clk(clk), 
        .src_clk(1'b0), 
        .src_in(d) 
      );
    end else begin 
      assign d_i=d;
    end
  endgenerate

  generate
    if (DEPTH>0) begin
      reg[WIDTH-1:0] q_i;
      always @(posedge clk) begin
        if (resetn == 1'b0) begin
          q_i <= {WIDTH{INACTIVE_VAL[0]}}; 
        end else begin
          q_i <= d_i;
        end
      end
      assign q=q_i;
    end else begin
      // Wirethrough
      assign q=d_i;
    end     
  endgenerate
endmodule


