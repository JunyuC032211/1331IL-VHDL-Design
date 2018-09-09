-- EP4CE115F29C7N

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

Entity adder_ripple_tb is
end adder_ripple_tb;

Architecture behavioural of adder_ripple_tb is

component adder_ripple is
	port (
		Ain : in std_logic_vector (3 downto 0);
		Bin : in std_logic_vector (3 downto 0);
		Cin : in std_logic;
		cout : out std_logic;
		sum : out std_logic_vector (3 downto 0)
	);
end component;

--inputs

signal num1: integer;
signal num2: integer;
signal A_int: std_logic_vector (3 downto 0);
signal B_int : std_logic_vector (3 downto 0);
signal adder_cin : std_logic;

--outputs

signal answer : std_logic_vector (3 downto 0);
signal overflow : std_logic;

begin

DUT: adder_ripple
	port map(
		Ain => A_int,
		Bin => B_int,
		cin => adder_cin,
		cout => overflow,
		sum => answer
	);

	process
	begin
		num1 <= 8;
		num2 <= 1;
		adder_cin <='0';
		wait for 20 ns;
		
		num1 <= 2;
		num2 <= 2;
		adder_cin <='0';
		wait for 20 ns;

	end process;

	A_int <= std_logic_vector(to_unsigned(num1,a_int'length));
	B_int <= std_logic_vector(to_unsigned(num2,b_int'length));
	
end architecture;