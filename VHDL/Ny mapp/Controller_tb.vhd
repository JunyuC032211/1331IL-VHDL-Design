library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.CPU_Package.all;

entity Controller_tb is
end entity;

architecture RTL of Controller_tb is

	component Controller is
		Port (
			adr : OUT address_bus; -- unsigned
			data : IN program_word; -- unsigned
			w_RWM : OUT std_logic;  -- read on high
			RWM_en : OUT std_logic;  -- active low
			ROM_en : OUT std_logic;  -- active low
			clk : IN std_logic;
			reset : IN std_logic;  -- active high
			rw_reg  : OUT std_logic;  -- read on high
			sel_op_1 : OUT std_logic_vector (1 downto 0);
			sel_op_0 : OUT std_logic_vector (1 downto 0);
			sel_in : OUT std_logic_vector (1 downto 0);
			sel_mux : OUT std_logic_vector (1 downto 0);
			alu_op : OUT std_logic_vector (2 downto 0);
			alu_en : OUT std_logic; -- active high
			z_flag : IN std_logic;  -- active high
			n_flag : IN std_logic;  -- active high
			o_flag : IN std_logic; -- active high
			out_en : OUT std_logic; -- active high
			data_imm : OUT data_word -- signed
		);
	end component;
	
	
	-- inputs 
		signal data : program_word; -- unsigned
		signal clk : std_logic:='0';
		signal reset : std_logic:='0'; -- active high
		signal z_flag : std_logic:='0'; -- active high
		signal n_flag : std_logic:='0'; -- active high
		signal o_flag : std_logic:='0'; -- active high
		
	-- outputs
		signal adr : address_bus:="0000"; -- unsigned
		signal w_RWM : std_logic; -- read on high
		signal RWM_en : std_logic; -- active low
		signal ROM_en : std_logic; -- active low
		signal rw_reg : std_logic; -- read on high
		signal sel_op_1 : std_logic_vector (1 downto 0);
		signal sel_op_0 : std_logic_vector (1 downto 0);
		signal sel_in : std_logic_vector (1 downto 0);
		signal sel_mux : std_logic_vector (1 downto 0);
		signal alu_op : std_logic_vector (2 downto 0);
		signal alu_en : std_logic; -- active high
		signal out_en : std_logic; -- active high
		signal data_imm : data_word; -- signed

begin
		
	DUT: Controller
		Port map (
			data => data,
			clk => clk,
			reset => reset,
			z_flag => z_flag,
			n_flag => n_flag,
			o_flag => o_flag,
			adr => adr,
			w_RWM => w_RWM,
			RWM_en => RWM_en,
			ROM_en => ROM_en,
			rw_reg => rw_reg,
			sel_op_1 => sel_op_1,
			sel_op_0 => sel_op_0,
			sel_in => sel_in,
			sel_mux => sel_mux,
			alu_op => alu_op,
			alu_en => alu_en,
			out_en => out_en,
			data_imm => data_imm
		);
	
	process
	begin
		clk <= NOT clk;
		wait for 2 ns;
	end process;
		
--		when "0000" => data <= "1010110011"; -- LDI R3, 3
--		when "0001" => data <= "1001111110"; -- STR R3, 14
--		when "0010" => data <= "1010010001"; -- LDI R1, 1
--		when "0011" => data <= "1000001110"; -- LDR R0, 14 
--		when "0100" => data <= "0110000011"; -- MOV R0, R2
--		when "0101" => data <= "0000100110"; -- ADD R2, R1, R2
--		when "0110" => data <= "0001000100"; -- SUB R0, R1, R0
--		when "0111" => data <= "1100001100"; -- BRZ 12
--		when "1000" => data <= "1011000000"; -- NOP
--		when "1001" => data <= "1111000101"; -- BRA 5
--		when "1100" => data <= "1001101111"; -- STR R2, 15
--		when "1101" => data <= "1111001101"; -- BRA 13 
--		when others => data <= "1011000000"; -- NOP		
	with adr select
		data <= 	--"1010110011" when "0000", -- LDI R3, 3
					"1111001101" when "0000",
					"1001111110" when "0001", -- STR R3, 14
					"1010010001" when "0010", -- LDI R1, 1
					"1000001110" when "0011", -- LDR R0, 14 
					"0110000010" when "0100", -- MOV R0, R2
					"0000100110" when "0101", -- ADD R2, R1, R2
					"0001000100" when "0110", -- SUB R0, R1, R0
					"1100001100" when "0111", -- BRZ 12
					"1011000000" when "1000", -- NOP
					"1111000101" when "1001", -- BRA 5
					"1001101111" when "1100", -- STR R2, 15
					"1111001101" when "1101", -- BRA 13 
					"1011000000" when others; -- NOP
		
	process
	begin
	
		adr <= "1101";
		wait for 2 ns;
		
		adr <= "ZZZZ";
		wait for 200 ns;
		
	
	end process;
		
		
		
		
end architecture;