library ieee;
use ieee.std_logic_1164.all;
use work.all;

Entity full_adder is
	port (
		A : in std_logic;
		B : in std_logic;
		Cin : in std_logic;
		cout : out std_logic;
		sum : out std_logic
		);
end full_adder;

Architecture behavioral of full_adder is

begin

sum <= A xor B xor Cin after 5 ns;
cout <= (A and B) or (a and Cin) or (b and cin) after 5 ns;


end architecture;