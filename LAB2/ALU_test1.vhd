library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.CPU_Package_test1.all;

ENTITY ALU IS
	PORT(
	OP: IN std_logic_vector(2 downto 0);
	A: IN data_word;
	B: IN data_word;
	EN: IN std_logic;
	CLK: IN std_logic;
	Y: OUT data_word;
	N_FLAG: OUT std_logic;
	Z_FLAG: OUT std_logic;
	O_FLAG: OUT std_logic
	);
END ALU;

Architecture RTL of ALU IS


END Architecture; 
