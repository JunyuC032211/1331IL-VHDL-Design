library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Cpu_Package.all;


ENTITY DataBuffer IS  
	PORT ( 
		out_en : IN std_logic;   
		data_in : IN data_word; 
		data_out : OUT data_bus
		); 
END ENTITY DataBuffer; 
 
ARCHITECTURE RTL OF DataBuffer IS  

begin

	process(out_en, data_in)
		begin 
			if (out_en = '1') then
				data_out <= data_in;
			else
				data_out <= (data_out'range => 'Z');
			end if;
			
	end process;

end architecture;