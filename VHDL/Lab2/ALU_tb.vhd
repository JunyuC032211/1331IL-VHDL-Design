LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use ieee.numeric_std.all;

library work;
use work.CPU_Package.all;
use work.all;

Entity ALU_tb is
end ALU_tb;


Architecture behavioral of ALU_tb is
	component ALU is 
		PORT(
		 Op    : IN std_logic_vector(2 downto 0);
		 A     : IN data_word;
		 B     : IN data_word;
		 En    : IN std_logic;
		 clk   : IN std_logic;
		 y     : OUT data_word;
		 n_flag: OUT std_logic;
		 z_flag: OUT std_logic;
		 o_flag: OUT std_logic
		);
	end component;
	
-- Variables
	signal sum: data_word;
	
-- inputs
	signal op_in: std_logic_vector(2 downto 0);
	signal A_in: data_word;
	signal B_in: data_word;
	signal EN_in: std_logic;
	signal clk_in: std_logic:='0';
	
-- outputs
	signal y_out: data_word;
	signal n: std_logic;
	signal z: std_logic;
	signal o: std_logic;
	
begin 
	
DUT: ALU
	port map (
		Op => Op_in,
		A => A_in,
		B => B_in,
		En => En_in,
		clk => clk_in,
		y => y_out,
		n_flag => n,
		z_flag => z,
		o_flag => o
	);
	
	process(clk_in)
		begin
			clk_in <= NOT clk_in;
			wait for 2 ns;
	end process;
	
	process
	begin
	op_in <= "000";
	A_in <= "1001";
	B_in <= "0101";
	En_in <= '1';
	
	
	--Checks if add works
	if(op_in = "000") then
		sum <= A_in + B_in;
		assert sum = y_out report "Does not add" SEVERITY WARNING;
		
	--Checks if sub works
	elsif(op_in = "001") then
		sum <= A_in - B_in;
		assert sum = y_out report "Does not sub" SEVERITY WARNING;
		
	end if;
	
	wait for 10 ns;
	end process;
	
	
	
end architecture;
	
	
	
	
	
	
	