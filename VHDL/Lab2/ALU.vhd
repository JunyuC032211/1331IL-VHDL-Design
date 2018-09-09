library IEEE;
use IEEE.std_logic_1164.all;
use work.CPU_Package.all;
use ieee.numeric_std.all;


ENTITY ALU IS
    PORT(
		 Op    : IN std_logic_vector(2 downto 0);
		 A     : IN data_word;
		 B     : IN data_word;
		 En    : IN std_logic;
		 clk   : IN std_logic;
		 y     : OUT data_word;
		 n_flag: OUT std_logic;
		 z_flag: OUT std_logic;
		 o_flag: OUT std_logic       
	 ); 
END ALU; 

Architecture RTL of ALU is
	shared variable res : signed(data_word'length downto 0);
	shared variable tempy : signed(data_word'length-1 downto 0);
	constant zeroVector : std_logic_vector(data_word'range) := (others => '0');
	
	begin 
	Process(clk)
		Begin
		if (Rising_edge(clk) AND En='1') tHen
			o_flag <= '0';
			z_flag <= '0';
			if (Op = "000") tHen 
				res := add_overflow(a, b);
				tempy := res(res'high-1 downto 0);
				o_flag <= res(res'high);
			elsif (Op = "001") tHen
				res := sub_overflow(a, b);
				tempy := res(res'high-1 downto 0);
				o_flag <= res(res'high);
			elsif (Op = "010") tHen
				tempy := A AND B;
			elsif (Op = "011") tHen
				tempy := A OR B;
			elsif (Op = "100") tHen 
				tempy := A XOR B;
			elsif (Op = "101") tHen
				tempy := NOT A;
			elsif (Op = "110") tHen
				tempy := A;
			end if;
			
			y <= tempy; 
			n_flag <= tempy(tempy'high);
			if (tempy = (tempy'range => '0')) then
				z_flag <= '1';
			
			end if;
		end if;
	end process;
end RTL;



