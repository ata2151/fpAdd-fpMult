-------------------------------------------------------------------------------
-- Title      : Testbench for design "8bit_ALU"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : 8bit_ALU_tb.vhd
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

entity 8bit_ALU_tb is

end entity 8bit_ALU_tb;

-------------------------------------------------------------------------------

architecture tb_nbit_ALU of 8bit_ALU_tb is

  -- component generics
  constant n : int := 8;

  -- component ports
  signal i_A   : std_logic_vector(n-1 downto 0);
  signal i_B   : std_logic_vector(n-1 downto 0);
  signal c_in  : std_logic;
  signal o_S   : std_logic_vector(n-1 downto 0);
  signal c_out : std_logic;

  -- clock
  signal Clk : std_logic := '1';

begin  -- architecture tb_nbit_ALU

  -- component instantiation
  DUT: entity work.8bit_ALU
    generic map (
      n => n)
    port map (
      i_A   => i_A,
      i_B   => i_B,
      c_in  => c_in,
      o_S   => o_S,
      c_out => c_out);

  -- clock generation
  Clk <= not Clk after 10 ns;

  -- waveform generation
  WaveGen_Proc: process
  begin
    -- insert signal assignments here

    wait until Clk = '1';
  end process WaveGen_Proc;

  

end architecture tb_nbit_ALU;

-------------------------------------------------------------------------------

configuration 8bit_ALU_tb_tb_nbit_ALU_cfg of 8bit_ALU_tb is
  for tb_nbit_ALU
  end for;
end 8bit_ALU_tb_tb_nbit_ALU_cfg;

-------------------------------------------------------------------------------
