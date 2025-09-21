library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_adder is 
port(
	x: in std_logic;
  	y: in std_logic;
	c_in: in std_logic;
	s: out std_logic;
	c_out: out std_logic);
end full_adder;

architecture adder of full_adder is
begin
	process(x, y, c_in) is
	begin
		s <= x XOR y XOR c_in;
		c_out <= (x AND y) OR (x AND c_in) OR (y AND c_in);
    end process;
end architecture adder;