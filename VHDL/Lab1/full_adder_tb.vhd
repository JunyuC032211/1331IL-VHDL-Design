-- EP4CE115F29C7N

library ieee;
use ieee.std_logic_1164.all;
use work.all;

Entity full_adder_tb is
end full_adder_tb;

Architecture behavioural of full_adder_tb is

component full_adder is
	port (
	A : in std_logic;
		B : in std_logic;
		Cin : in std_logic;
		cout : out std_logic;
		sum : out std_logic
		);
end component;

--inputs

signal A_num: std_logic:='0';
signal B_num: std_logic:='0';
signal Cin_num: std_logic:='0';

--outputs

signal S : std_logic;
signal Cout : std_logic;

begin

DUT: full_adder
	port map(
		A => A_num,
		B => B_num,
		cin =>Cin_num,
		cout => cout,
		sum => s
	);

	cin_num <= not (cin_num) after 10 ns;
	A_num <= not (A_num) after 20 ns;
	B_num <= not (B_num) after 30 ns;

end architecture;