library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.All;

Package CPU_Package is
	constant address_size : integer := 4;
	constant data_size : integer := 4;
	constant operation_size : integer := 4;
	constant instruction_size : integer := 10;

	subtype data_word is signed(data_size-1 downto 0);
	subtype address_bus is std_logic_vector(address_size-1 downto 0);
	subtype data_bus is signed(data_size-1 downto 0);
	subtype instruction_bus is std_logic_vector(instruction_size-1 downto 0);
	subtype program_word is std_logic_vector(instruction_size-1 downto 0);
	subtype command_word is std_logic_vector(operation_size-1 downto 0);
	
	function add_overflow (a, b :signed) return signed;
	function sub_overflow(a, b : signed) return signed; 
	
end Package;

Package body CPU_Package is
	function add_overflow (a, b :signed) return signed is
		variable sum : signed(data_word'length-1 downto 0);
		variable d : std_logic_vector(2 downto 0);
		
		begin
		sum := a + b;
		
		--d := a(a'high) & b(b'high) & sum(sum'high); --d = decide
		
		--if( (d(2)='0' AND d(1)='0' AND d(0)='1') OR (d(2)='1' AND d(1)='1' AND d(0)='0') ) then
			if ((a'left = b'left) and (a'left /= sum'left)) then
			return ('1' & sum);
		
		else 
			return ('0' & sum);
		
		end if;
		
	end add_overflow;
	
	function sub_overflow (a, b :signed) return signed is
		variable diff : signed(data_word'length-1 downto 0);
		variable d : std_logic_vector(2 downto 0);
		
		begin
		diff := a - b;
		d := a(a'high) & b(b'high) & diff(diff'high); --d = decide
		
		if( (d(2)='0' AND d(1)='1' AND d(0)='1') OR (d(2)='1' AND d(1)='0' AND d(0)='0') ) then
			return ('1' & diff);
			
		else 
			return ('0' & diff);
		end if;
		
	end sub_overflow;
	
end CPU_Package;













