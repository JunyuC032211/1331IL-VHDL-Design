library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Cpu_Package.all;

ENTITY ROM IS
	PORT (
		adr : IN address_bus;
		data : OUT instruction_bus;
		ce : IN std_logic -- active low 
	);  
END ENTITY ROM; 
 
ARCHITECTURE RTL OF ROM IS

begin

	process(ce)
	begin
		if (ce = '0') then
			case adr is
				when "0000" => data <= "1010110011"; -- LDI R3, 3
				when "0001" => data <= "1001111110";
				when "0010" => data <= "1010000001";
				when "0011" => data <= "1000001110";
				when "0100" => data <= "0110000011"; -- MOV R0, R2
				when "0101" => data <= "0000100110";
				when "0110" => data <= "0001000100";
				when "0111" => data <= "1100001100";
				when "1000" => data <= "1011000000";
				when "1001" => data <= "1111000101";
				when "1100" => data <= "1001101111";
				when "1101" => data <= "1111001101";
				when others => data <= "1011000000";
			end case;
		else
			data <= (others => 'Z');
		end if;
		
	end process;
	
end architecture;