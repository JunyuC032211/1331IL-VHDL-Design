library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Cpu_Package.all;

Entity Multiplexer is
    Port(
		 Sel  : IN std_logic_vector(1 downto 0);
		 Data_in_2 : IN data_word;
		 Data_in_1 : IN data_bus; -- Potential type problem...
		 Data_in_0 : IN data_word;
		 Data_out : OUT data_word
	 ); 
End Entity Multiplexer; 


architecture RTL of Multiplexer is

begin

	process(sel, data_in_0, data_in_1, data_in_2)
	begin
		case Sel is
			when "00" => Data_out <= data_in_0;
			when "01" => Data_out <= data_in_1;
			when "10" => Data_out <= data_in_2;
			when others => Data_out <= (others => '0');
		end case;
		
		end process;
		
end architecture;