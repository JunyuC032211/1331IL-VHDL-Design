library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Cpu_Package.all;


ENTITY RegisterFile IS 
	PORT( 
		clk  : IN std_logic;
		data_in : IN data_word;
		data_out_1 : OUT data_word;   
		data_out_0 : OUT data_word;   
		sel_in : IN std_logic_vector (1 downto 0);   
		sel_out_1 : IN std_logic_vector (1 downto 0);   
		sel_out_0 : IN std_logic_vector (1 downto 0);     
		rw_reg : in std_logic
		); 
END ENTITY RegisterFile; 
 
ARCHITECTURE RTL OF RegisterFile IS 
--	shared variable R0 : data_word;
--	shared variable R1 : data_word;
--	shared variable R2 : data_word;
--	shared variable R3 : data_word;

type multiVector is array (3 downto 0) of data_word;
signal memory : multiVector;
	
	begin
	process(clk)

		begin 
			if(Rising_edge(clk)) then
				if (rw_reg = '0') then
					memory(to_integer(unsigned(sel_in))) <= data_in;
				end if;
			end if;
		end process;
		
		data_out_0 <= memory(to_integer(unsigned(sel_out_0))); -- Goes to B, on ALU
		data_out_1 <= memory(to_integer(unsigned(sel_out_1))); -- Goes to A, on ALU
		
end architecture;



















