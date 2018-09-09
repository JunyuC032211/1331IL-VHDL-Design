library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Cpu_Package.all;

ENTITY RW_MEMORY_tb IS
END RW_MEMORY_tb; 
 
ARCHITECTURE behavior OF RW_MEMORY_tb IS
	component RW_MEMORY is 
		PORT (
		adr : IN address_bus;
		data : INOUT data_bus;
		clk : IN std_logic;
		ce : IN std_logic;  -- active low
		rw : IN std_logic -- read on high 
	);
	end component;
	
	-- Signals IN
	signal addressIN: address_bus;
	signal clk : std_logic := '0';
	signal ce: std_logic;
	signal rw : std_logic; -- read on high
	
	-- Signal
	signal data : data_bus;
	signal t : address_bus := "0000";
	signal dt : data_bus := "0000";
	
	begin
	
	DUT: RW_MEMORY
	port map (
		adr  => addressIN,
	   data => data,
	   clk  => clk,
	   ce   => ce,
	   rw   => rw
	);
	
	process
		begin
			clk <= NOT clk;
			wait for 2 ns;
	end process;
	
	process
	begin
	
	--Skrivläge
	rw <= '0';
	ce <= '0';
	for i in 0 to 15 loop
		addressIN <= t;
		data <= dt;
		dt <= signed(unsigned(dt) + 1);
		t <= std_logic_vector(unsigned(t) + 1);
		
		wait for 5 ns;
	end loop;
	
	wait for 10 ns;
	
	--Läsläge
	t <= "0000";
	rw <= '1';
	data <= (others => 'Z');
	for i in 0 to 15 loop
		ce <= '0';
		addressIN <= t;
		t <= std_logic_vector(unsigned(t) + 1);
		
		wait for 5 ns;
	end loop;
	
	wait for 5 ns;
	end process;
	
	
	
end architecture;