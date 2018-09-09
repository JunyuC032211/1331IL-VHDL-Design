-- EP4CE115F29C7N

library ieee;
use ieee.std_logic_1164.all;
use work.all;

Entity adder_ripple is
	port (
		Ain: in std_logic_vector (3 downto 0);
		Bin: in std_logic_vector (3 downto 0);
		cin: in std_logic;
		cout: out std_logic;
		sum : out std_logic_vector (3 downto 0)
	);
	
	

end adder_ripple;

Architecture behavioural of adder_ripple is

component full_adder is
	port (
		A : in std_logic;
		B : in std_logic;
		Cin : in std_logic;
		cout : out std_logic;
		sum : out std_logic
		);
end component;

signal carry_line : std_logic_vector (3 downto 0);

begin

FA0: full_adder
	port map ( 
		A => Ain(0),
		B => Bin(0),
		cin => cin,
		cout => carry_line(0),
		sum => sum(0)
	);
		
gen_adder:
	for i in 1 to 2 generate
	FAx: full_adder
		port map ( 
			A => Ain(i),
			B => Bin(i),
			cin => carry_line(i-1),
			cout => carry_line(i),
			sum => sum(i)
			);
	end generate;

FA3:full_adder
	port map ( 
		A => Ain(3),
		B => Bin(3),
		cin => carry_line(2),
		cout => cout,
		sum => sum(3)
		);

end architecture;


