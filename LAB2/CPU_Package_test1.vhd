library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package CPU_package is

constant adress_size: integer := 4;
constant data_size: integer := 4;
constant operation_size: integer := 4;
constant instruction_size: integer := 10; 

subtype data_word is std_logic_vector (3 downto 0);
subtype adress_bus is std_logic_vector (3 downto 0);
subtype data_bus is std_logic_vector (3 downto 0);
subtype instruction_bus is std_logic_vector (9 downto 0);
subtype program_word is std_logic_vector (9 downto 0);
subtype command_word is std_logic_vector (3 downto 0);

Function add_overflow(a,b : std_logic_vector)
							return std_logic_vector;

Function sub_overflow(a,b : std_logic_vector)
							return std_logic_vector;


end package CPU_package;

