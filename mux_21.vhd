LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity mux_21 is
  port(i_1 : in STD_LOGIC;
       i_2 : in STD_LOGIC;
       sel:  in STD_LOGIC;
       output: out STD_LOGIC);
end mux_21;

architecture basic of mux_21 is

begin  -- architecture basic

  output <=( i_1 and not (sel)) or (i_2 and sel);

end architecture basic;
