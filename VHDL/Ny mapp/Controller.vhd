library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.CPU_Package.all;


ENTITY Controller IS
	PORT(
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
END ENTITY Controller; 



architecture Behaviour of Controller is
--type state_type is (Controller_reset, Fetch_instruction, Load_instruction, Decode_instruction,
--							Write_result, Load_data, Store_data, Load_immediate);

-- s0 - Controller_reset,
-- s1 - Fetch_instruction, 
-- s2 - Load_instruction, 
-- s3 - Decode_instruction,
-- s4 - Write_result, 
-- s5 - Load_data, 
-- s6 - Store_data, 
-- s7 - Load_immediate

type state_type is (s0, s1, s2, s3, s4, s5, s6, s7);							
signal next_state, current_state : state_type;

signal PC : unsigned(address_size - 1 downto 0);
signal IR : instruction_bus;

alias instruction : std_logic_vector(3 downto 0) is IR(9 downto 6);
alias R1 : std_logic_vector(1 downto 0) is IR(5 downto 4);
alias R2 : std_logic_vector(1 downto 0) is IR(3 downto 2);
alias R3 : std_logic_vector(1 downto 0) is IR(1 downto 0);
alias mem : std_logic_vector(3 downto 0) is IR(3 downto 0);
alias instruction_alu : std_logic_vector(2 downto 0) is IR(8 downto 6);

begin	

	process(clk, reset)
	begin
		if (reset = '1') then
			current_state <= s0;
		else
			current_state <= next_state;
		end if;
	end process;

	process(clk)
	begin
		if (Rising_edge(clk)) then
			case current_state is
				when s0 => -- controller_reset
					next_state <= s1;
					PC <= (others => '0');
					adr <= "ZZZZ";
					w_RWM <= '1'; -- read from RWM
					RWM_en <= '1'; -- Disable RWM
					ROM_en <= '1'; -- Disable ROM
					rw_reg <= '1'; -- Read register
					alu_en <= '0'; -- Disable ALU
					sel_op_0 <= "ZZ"; -- Stop selecting register
					sel_op_1 <= "ZZ"; -- Stop selecting register
					sel_in <= "ZZ"; -- Clear selection of register to write to
					sel_mux <= "ZZ"; -- Clear selection for mux
					data_imm <= "ZZZZ"; -- Clear data input
					out_en <= '0'; -- Disable buffer
					
				when s1 => -- fetch_instruction
					adr <= address_bus(PC); --
					rw_reg <= '1'; -- Read register
					RWM_en <= '1'; -- Disable RWM
					w_RWM <= '1';
					out_en <= '0';
					alu_en <= '0';
					next_state <= s2;
					
				when s2 => -- load_instruction
					ROM_en <= '0';
					IR <= data;
					next_state <= s3;
					
				when s3 => -- decode_instruction
					ROM_en <= '0';
					case instruction is
						when "0000" | "0001" | "0010" | "0011" | "0100" => -- ADD, SUB, AND, OR, XOR. 
							alu_op <= instruction_alu;								-- Whole section is an ALU operation
							alu_en <= '1';
							sel_op_1 <= R1;
							sel_op_0 <= R2;
							sel_in <= R3;
							next_state <= s4; -- next_state <= write_result
							rw_reg <= '1'; -- set register to read
							sel_mux <= "00";
								
						when "0101" | "0110" =>			-- NOT, MOV. This section has only 1 difference from the 
							alu_op <= instruction_alu; -- one above. "Sel_op_0" is not assigned here since it is not used
							alu_en <= '1';	-- Enable ALU 	-- by the "NOT" and "MOV" operations
							sel_op_1 <= R1; -- Set register to output to ALU A input 
							sel_op_0 <= "ZZ";
							sel_in <= R3;  -- Save to specified register
							next_state <= s4; -- next_state <= write_result
							sel_mux <= "00";
							rw_reg <= '1'; -- set register to read 
					
						when "1000" => -- LDR, Load Register
							w_RWM <= '0'; -- write to RWM
							RWM_en <= '0'; -- Enable RWM 
							adr <= mem; -- Set address to payload "mem"
							sel_mux <= "01"; -- Set mux to data_in_1
							sel_in <= r1; -- Set register input to payload "r1"
							rw_reg <= '0'; -- Set RegisterFile to write
							next_state <= s5; -- next_state = load_data
							PC <= PC + 1;
							
						when "1001" => -- STR 
							w_RWM <= '0'; -- write to RWM
							RWM_en <= '0'; -- enable RWM 
							adr <= mem; -- Set address to payload "mem"
							out_en <= '1'; -- enable Buffer
							rw_reg <= '1'; -- Set RegisterFile to read 
							sel_op_1 <= R1; -- Set RegisterFile data_out_1 to payload of "R1"
							next_state <= s6; -- next_state = Store Data
							PC <= PC + 1;
							
						when "1010" => -- LDI, Load immediate
							rw_reg <= '0';
							sel_in <= R1;
							sel_mux <= "10";
							data_imm <= signed(mem);
							next_state <= s7;
							PC <= PC + 1;
							
						when "1011" => -- NOP
							PC <= PC + 1;
							next_state <= s1;
							
						when "1100" => -- BRZ mem
							if(z_flag = '1') then 
								PC <= unsigned(mem);
							else
								PC <= PC + 1;
							end if;
							next_state <= s1;
							
						when "1101" => -- BRN mem
							if(n_flag = '1') then
								PC <= unsigned(mem);
							else
								PC <= PC + 1;
							end if;
							next_state <= s1;
							
						when "1110" => -- BRO meme
							if(o_flag = '1') then 
								PC <= unsigned(mem);
							else
								PC <= PC + 1;
							end if;
							next_state <= s1;
							
						when "1111" => -- BRA
							PC <= unsigned(mem);
							next_state <= s1;
						
						when others => -- If out of bounds, reset
							next_state <= s0;
							
					end case;
			
				when s4 => --write_result
					next_state <= s1;
					rw_reg <= '0'; -- Set register to write
					PC <= PC + 1;
					
				when s5 => -- Load Data
					next_state <= s1;
					
				when s6 => -- Store Data
					next_state <= s1;
					
				when s7 => -- Load immediate
					next_state <= s1;
				
				when others => -- If, somehow, the current_state does not exist, reset the controller
					next_state <= s0;
					
			end case;
		end if;
	end process;
end architecture;








