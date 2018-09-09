Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.all;

package CPU_Package is
	-- constants
	constant address_size : integer := 4;
	constant data_size : integer := 4;
	constant operation_size : integer := 4;
	constant instruction_size : integer := 10;
	
	-- types
	subtype data_word is signed(data_size - 1 downto 0);
	subtype address_bus is std_logic_vector(address_size - 1 downto 0);
	subtype data_bus is signed(data_size - 1 downto 0);
	subtype instruction_bus is std_logic_vector(instruction_size - 1 downto 0);
	subtype program_word is std_logic_vector(instruction_size - 1 downto 0);
	subtype command_word is std_logic_vector(operation_size - 1 downto 0);
	
	-- functions
	Function add_overflow(a, b : signed) return signed;
	Function sub_overflow(a, b : signed) return signed; 
end;

Package BODY CPU_Package is
	
	function add_overflow(a, b : signed) return signed is
		variable sum : signed(a'length - 1 downto 0);
		begin
		sum := a + b;
		
		if ((a(a'high) = '0' AND b(b'high) = '0' AND sum(sum'high) = '1') OR
				(a(a'high) = '1' AND b(b'high) = '1' AND sum(sum'high) = '0'))
					then return '1' & sum;
		else return '0' & sum;
		end if;
	end function add_overflow;
	
	function sub_overflow(a, b : signed) return signed is
		variable difference : signed(a'length - 1 downto 0);
		begin
		difference := a - b;
		
		if ((a(a'high) = '0' AND b(b'high) = '1' AND difference(difference'high) = '1') OR
				(a(a'high) = '1' AND b(b'high) = '0' AND difference(difference'high) = '0'))
					then return '1' & difference;
		else return '0' & difference;
		end if;
		
		return difference;
	end function sub_overflow;
	
end package body;
