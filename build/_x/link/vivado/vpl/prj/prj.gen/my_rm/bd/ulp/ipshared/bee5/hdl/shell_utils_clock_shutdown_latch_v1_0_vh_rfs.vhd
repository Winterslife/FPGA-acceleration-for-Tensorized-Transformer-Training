-- (c) Copyright 2019 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
------------------------------------------------------------

library ieee, xpm;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_misc.all;
    use xpm.vcomponents.all;

entity shell_utils_clock_shutdown_latch is
  
    generic (
        C_ENABLE_SHUTDOWN_CLEARING : integer range 0 to 1     := 0
        );
    port (
        Clk                     : in    std_logic;
        Rst                     : in    std_logic;

        Request_SC              : in    std_logic;                      -- From SC Input pin
        Request_SW              : in    std_logic_vector(15 downto 0);  -- From Host GPIO
        Request_Gate_En         : in    std_logic;                      -- From CMC GPIO
        Request_Ack             : in    std_logic;                      -- From CMC GPIO
        Request_Latch           : out   std_logic;                      -- To CMC GPIO
        Shutdown_Latch          : out   std_logic                       -- To MMCM powerdown
    );
end entity shell_utils_clock_shutdown_latch;

architecture rtl of shell_utils_clock_shutdown_latch is

-------------------------------------------------------------------------------
--
--      Constants (simple)
--
-------------------------------------------------------------------------------

constant ZERO                  : std_logic_vector(0 downto 0)        := (others => '0');

constant SW_SHUTDOWN_MAGIC_NUM : std_logic_vector(Request_SW'RANGE)  := conv_std_logic_vector(56089, Request_SW'LENGTH);

-------------------------------------------------------------------------------
--
--      Type Definitions
--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--
--      Signals
--
-------------------------------------------------------------------------------

signal  Request_SC_cdc        : std_logic := '0';
signal  Request_SW_reduced    : std_logic := '0';
signal  Request               : std_logic := '0';
signal  Request_Latch_int     : std_logic := '0';
signal  Shutdown_Latch_int    : std_logic := '0';
signal  Shutdown_Release      : std_logic := '0';
signal  Request_Ack_d1        : std_logic := '0';

begin

-------------------------------------------------------------------------------
--
--      CDC the SC Shutdown Clocks Request
--
-------------------------------------------------------------------------------

CDC_SCR : xpm_cdc_single
    generic map (
        DEST_SYNC_FF    => 4,
        SRC_INPUT_REG   => 0
    )
    port map (
        src_clk     => ZERO(0),
        src_in      => Request_SC,

        dest_clk    => Clk,
        dest_out    => Request_SC_cdc
    );

-------------------------------------------------------------------------------
--
--      Latch Logic
--
-------------------------------------------------------------------------------

SQ:
process(Clk)
begin

    if (rising_edge(Clk)) then

        Request_SW_reduced <= '0';

        if (Request_SW = SW_SHUTDOWN_MAGIC_NUM) then

            Request_SW_reduced <= '1';

        end if;

        Request <= Request_SC_cdc or Request_SW_reduced;
        
        Shutdown_Release <= Request_Ack_d1 and (not Request_Ack);
        
        Request_Ack_d1 <= Request_Ack;

        -- If shutdown requests are being gated, latch the request here until acknowledged

        Request_Latch_int  <= (Request_Latch_int and (not Request_Ack)) or (Request and      Request_Gate_En);

        -- If shutdown requests are being not being gated, latch the request here
        
        if (C_ENABLE_SHUTDOWN_CLEARING = 0) then

          Shutdown_Latch_int <= Shutdown_Latch_int or (Request and (not Request_Gate_En));

        else            

          Shutdown_Latch_int <= (Shutdown_Latch_int and (not Shutdown_Release)) or (Request and (not Request_Gate_En));

        end if;


        if (Rst = '0') then

            Request_Latch_int  <= '0';
            Request            <= '0';
            Shutdown_Release   <= '0';

        end if;

        Request_Latch  <= Request_Latch_int;
        Shutdown_Latch <= Shutdown_Latch_int;

    end if;

end process;

end architecture rtl; -- of shell_utils_clock_shutdown_latch

