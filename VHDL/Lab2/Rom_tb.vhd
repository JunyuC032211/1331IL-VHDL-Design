library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Cpu_Package.all;

ENTITY ROM_tb IS
END ROM_tb; 
 
ARCHITECTURE behavior OF ROM_tb IS
	component ROM is 
		PORT (
		adr : IN address_bus;
		data : OUT instruction_bus;
		ce : IN std_logic -- active low 
	);
	end component;
	
	-- Signals IN
	signal addressIN: address_bus;
	signal ce: std_logic;
	
	-- Signals OUT
	signal dataOUT : instruction_bus;
	
	-- Signal
	signal t : address_bus := "0000";
	
	begin
	
	DUT: ROM
	port map (
		adr => addressIN,
		data => dataOUT,
		ce => ce
	);
	
	process
	begin
	
	for i in 0 to 14 loop
		addressIN <= t;
		t <= std_logic_vector(unsigned(t) + 1);
		ce <= '0';
		wait for 5 ns;
		ce <= '1';
		wait for 1 ns;
	end loop;
	
	
	wait for 5 ns;
	end process;
	
	
	
end architecture;