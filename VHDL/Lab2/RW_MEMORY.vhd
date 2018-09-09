library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Cpu_Package.all;


ENTITY RW_MEMORY IS
  PORT(
	  adr : IN address_bus;
	  data : INOUT data_bus;
	  clk : IN std_logic;
	  ce : IN std_logic;  -- active low
	  rw : IN std_logic -- read on high 
  ); 
END ENTITY RW_MEMORY; 
 
ARCHITECTURE Behaviour OF RW_MEMORY IS -- osv 

type multiVector is array (15 downto 0) of data_bus;
signal memory : multiVector;
signal temp : std_logic;
begin 

	process (clk)
	begin 
			if(Rising_edge(clk) AND ce = '0' AND rw = '0') then
				memory(to_integer(unsigned(adr))) <= data;
			end if;
	end process;
	
	process(rw, ce, adr)
	begin
			if (rw = '1' AND ce='0') then 
				data <= memory(to_integer(unsigned(adr)));
			else
				data <= (others => 'Z');
			end if;
	end process;

end ARCHITECTURE;





