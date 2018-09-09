library work;
library IEEe;
use work.CPU_Package.all;
use work.all;
use ieee.std_logic_1164.all;

Entity RegisterFile_tb is
end RegisterFile_tb;


Architecture behavior of RegisterFile_tb is
	component RegisterFile is 
		PORT( 
			 clk : IN std_logic;
			 data_in : IN data_word;
			 data_out_1 : OUT data_word;
			 data_out_0 : OUT data_word;
			 sel_in : IN std_logic_vector (1 downto 0);
			 sel_out_1 : IN std_logic_vector (1 downto 0);
			 sel_out_0 : IN std_logic_vector (1 downto 0);
			 rw_reg : in std_logic
		);
	end component;
	
	--Signals
	signal clk_in : std_logic := '0';
	signal sel_in : std_logic_vector(1 downto 0);
	signal data_out_1 :data_word;
	signal data_out_0: data_word;
	signal rw_reg : std_logic;
	signal data_in : data_word;
	signal sel_out_0 : std_logic_vector(1 downto 0);
	signal sel_out_1 : std_logic_vector(1 downto 0);
	
begin 
	
DUT: RegisterFile
	port map (
		 clk 			=> clk_in,
		 data_in 	=> data_in,
		 data_out_1 => data_out_1,
		 data_out_0 => data_out_0,
		 sel_in 		=> sel_in,
		 sel_out_1 	=> sel_out_1,
		 sel_out_0 	=> sel_out_0,
		 rw_reg 		=> rw_reg
	);
	
	process
		begin
			clk_in <= NOT clk_in;
			wait for 2 ns;
	end process;
	
	process
	begin
		--Writes 0101 at 00
		sel_in <= "00";
		rw_reg <= '0';
		data_in <= "0101";
		wait for 5 ns;
	
		--Writes 1110 at 11
		sel_in <= "11";
		rw_reg <= '0';
		data_in <= "1110";
		wait for 5 ns;
		
		
		rw_reg <= '1';
		sel_out_0 <= "00";
		sel_out_1 <= "11";
		wait for 5 ns;
	
	end process;
	
	
	
end architecture;
	
	
	
	
	
	
	