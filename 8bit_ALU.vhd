library ieee;
use ieee.std_logic_1164.all;



entity nbit_ALU is
  
  generic (
    n : positive := 8);                      -- N/A

  port (
    i_A   : in  std_logic_vector(n-1 downto 0);
    i_B   : in  std_logic_vector(n-1 downto 0);
    c_in  : in  std_logic;
    o_S   : out std_logic_vector(n-1 downto 0);
    c_out : out std_logic);

end entity nbit_ALU;

architecture basic of nbit_ALU is
  signal cn: std_logic_vector(n downto 0);
  signal o_Sum: std_logic_vector(n-1 downto 0);
  component oneBitAdder is
    port (
      i_CarryIn         : IN  STD_LOGIC;
      i_Ai, i_Bi        : IN  STD_LOGIC;
      o_Sum, o_CarryOut : OUT STD_LOGIC);
  end component oneBitAdder;
begin  -- architecture basic
  cn(0)<=c_in;
  alu_loop: for i in 0 to n-1 generate
    oneBitAdder_1: oneBitAdder
      port map (
        i_CarryIn  => cn(i),
        i_Ai       => i_A(i),
        i_Bi       => i_B(i),
        o_Sum      => o_Sum(i),
        o_CarryOut => cn(i+1));
  end generate alu_loop;


  c_out<=cn(n);
  o_S<=o_Sum;
end architecture basic;
