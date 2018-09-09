library ieee;
use work.cpu_package.all;
use work.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY controller IS
	PORT( 
		adr : OUT address_bus; -- unsigned
		data : IN program_word; -- unsigned, 10 bitar!!
		rw_RWM : OUT std_logic; -- read on high 
		RWM_en : OUT std_logic; -- active low
		ROM_en : OUT std_logic; -- active low
		clk : IN std_logic;
		reset : IN std_logic; -- active high
		rw_reg : OUT std_logic; -- read on high
		sel_op_1 : OUT std_logic_vector(1 downto 0);
		sel_op_0 : OUT std_logic_vector(1 downto 0);
		sel_in : OUT std_logic_vector(1 downto 0);
		sel_mux : OUT std_logic_vector(1 downto 0);
		alu_op : OUT std_logic_vector(2 downto 0);
		alu_en : OUT std_logic; -- active high
		z_flag : IN std_logic; -- active high
		n_flag : IN std_logic; -- active high
		o_flag : IN std_logic; -- active high
		out_en : OUT std_logic; -- active high
		data_imm : OUT data_word;  -- four bits, signed --data till ram
		state : BUFFER state_type := controller_reset;
		state_out : out std_logic_vector(2 downto 0); --for checking state in testbench
		stop : in std_logic --if '1' then the controller stops in present state
	);
END ENTITY controller;

architecture rtl of controller is 
	signal pc : unsigned(3 downto 0);
	signal instr : program_word;
	alias op : std_logic_vector(3 downto 0) is instr(9 downto 6);
	alias r1 : std_logic_vector(1 downto 0) is instr(5 downto 4);
	alias r2 : std_logic_vector(1 downto 0) is instr(3 downto 2);
	alias r3 : std_logic_vector(1 downto 0) is instr(1 downto 0);
	alias mem : std_logic_vector(3 downto 0) is instr(3 downto 0);
	alias imm : std_logic_vector(3 downto 0) is instr(3 downto 0);
	
	begin
		alu_en <= '1' when (state = decode_instruction) and (op(op'high) = '0') else '0'; -- enable alu at decode
		alu_op <= op(2 downto 0); -- what op, four first bits
		adr <= address_bus(pc) when state = load_instruction else mem;
		rom_en <= '0' when state = load_instruction else '1'; --get instruction from rom
		rwm_en <= '0' when (state = store_data) or (state = load_data) else '1'; -- write or read from mem, 0 when active writing
		data_imm <= imm;--instr(3 downto 0); -- could use imm here
		rw_rwm <= '0' when (state = store_data) else '1'; -- 1 when reading from mem
		rw_reg <= '0' when (state = load_data) or (state = load_immediate) or (state = write_result)  else '1'; --write  to reg
		out_en <= '1' when state = store_data else '0'; -- put in memory
		
		with state select
			sel_mux <= "00" when write_result,
			           "01" when load_data,
						  "10" when load_immediate,
						  "00" when others;
		sel_op_0 <= (r1);
		sel_op_1 <= (r2);
		with state select
			state_out <= "000" when controller_reset,
							 "001" when fetch_instruction,
							 "010" when load_instruction,
							 "011" when decode_instruction,
							 "100" when write_result,
							 "101" when load_data,
							 "110" when store_data,
							 "111" when load_immediate,
							 "000" when others;
		with state select					 
			sel_in <= (r1) when load_data,
						 (r1) when load_immediate,
						 (r3) when write_result,
						 "00" when others;
		--out_en <= '1' when state = store_data else '0'; -- put in memory
		--rw_reg <= '0' when (state = load_data) or (state = load_immediate) or (state = write_result)  else '1'; --write  to reg
			
		controller_process : process(clk, stop)
		begin	
			if rising_edge(clk) and (stop = '0') then 
				
				if reset = '1' then
					state <= controller_reset;
				else
					case state is
						when controller_reset => --when state=reset then next state=fetch
							pc <= "0000" - 1;
							state <= fetch_instruction; 

						when fetch_instruction => --when state=fetch then next state is load instruction
							state <= load_instruction; -- if state=fetch then rw='1'
							pc <= pc + 1;
		
						when load_instruction => --when state=load then next state=decode
							state <= decode_instruction;--if state= load.instr. then instr=data
							instr <= data;
		
						when decode_instruction => -- when state=decode then checking op for nest state
							if op(op'high) = '0' then --if op starts with '0' then its an ALU operation and next state will be write result
								state <= write_result;
							else
								case op is --checking possible operation
									when "1000" => state <= load_data; -- fetching from mem to store in reg
												
									when "1001" => state <= store_data; -- fetch from reg to store in mem
											
									when "1010" => state <= load_immediate; -- load value immediate in reg
									
									--branch op
									when "1100" => --if the z='1' then pc=mem else pc+1
										if z_flag = '1' then pc <= unsigned(mem) - 1; 
										end if;
										state <= fetch_instruction; 
										
									when "1011" => -- nop, pc+1
										state <= fetch_instruction;
							
									when "1101" => --if n='1' then pc=mem else pc+1
										if n_flag = '1' then pc <= unsigned(mem) - 1; 
										end if;
										state <= fetch_instruction;
						
									when "1110" => --BRO, if o=1 then pc=mem else pc+1 
										if o_flag = '1' then pc <= unsigned(mem) - 1; 
										end if;
										state <= fetch_instruction;
							
									when "1111" => pc <= unsigned(mem) - 1;
										state <= fetch_instruction; 
							
									-- end of branch op
									when others => state <= controller_reset; --cover every case cuz thereÂ´s lika a billion every time
								end case;
							end if;
						when write_result => state <= fetch_instruction; --directing next state
						when load_data => state <= fetch_instruction;
						when store_data => state <= fetch_instruction;
						when load_immediate => state <= fetch_instruction;
						when others => state <= controller_reset;
					end case;
				end if;
			end if; --dont think it will work
		end process controller_process;
			
end architecture rtl;