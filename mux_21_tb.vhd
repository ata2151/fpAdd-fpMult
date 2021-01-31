-------------------------------------------------------------------------------
-- Title      : Testbench for design "mux_21"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : mux_21_tb.vhd
-- Author     :   <DELL@DESKTOP-6D0I4AA>
-- Company    : 
-- Created    : 2021-01-27
-- Last update: 2021-01-27
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2021 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2021-01-27  1.0      DELL	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity mux_21_tb is

end entity mux_21_tb;

-------------------------------------------------------------------------------

architecture tb_mux21 of mux_21_tb is

  -- component ports
  signal i_1    : STD_LOGIC;
  signal i_2    : STD_LOGIC;
  signal sel    : STD_LOGIC;
  signal output : STD_LOGIC;

  -- clock
  signal Clk : std_logic := '1';

begin  -- architecture tb_mux21

  -- component instantiation
  DUT: entity work.mux_21
    port map (
      i_1    => i_1,
      i_2    => i_2,
      sel    => sel,
      output => output);

  -- clock generation
  Clk <= not Clk after 10 ns;

  -- waveform generation
  WaveGen_Proc: process
  begin
    -- insert signal assignments here

    wait until Clk = '1';
  end process WaveGen_Proc;

  

end architecture tb_mux21;

-------------------------------------------------------------------------------

configuration mux_21_tb_tb_mux21_cfg of mux_21_tb is
  for tb_mux21
  end for;
end mux_21_tb_tb_mux21_cfg;

-------------------------------------------------------------------------------
