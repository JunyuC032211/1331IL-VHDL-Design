library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.CPU_Package.all;


entity Counter is
	Port(
		clk : in std_logic;
		step : in std_logic;
		counts : out integer;
		hex : inout std_logic_vector(6 downto 0) := (others => '0')
	);
end entity;

architecture Behaviour of counter is
signal prev_step : std_logic:='0';
signal count : integer := 0;

begin

	process(clk)
	begin
		if (step /= prev_step) then
			prev_step <= step;
			count <= count + 1;
			if (count >= 15) then
				count <= 0;
			end if;
			counts <= count;
			hex(0)<='0'; hex(1)<='0'; hex(2)<='0'; hex(3)<='0'; hex(4)<='0';hex(5)<='0'; hex(6)<='0';
			case count is
			  when 0 =>   hex(0)<='1'; hex(1)<='1'; hex(2)<='1'; hex(3)<='1'; hex(4)<='1'; hex(5)<='1';
			  when 1 =>   hex(1)<='1'; hex(2)<='1';
			  when 2 =>   hex(0)<='1'; hex(1)<='1'; hex(6)<='1'; hex(4)<='1'; hex(3)<='1';
			  when 3 =>   hex(0)<='1'; hex(1)<='1'; hex(6)<='1'; hex(2)<='1'; hex(3)<='1';
			  when 4 =>   hex(1)<='1'; hex(2)<='1'; hex(5)<='1'; hex(6)<='1';
			  when 5 =>   hex(0)<='1'; hex(2)<='1'; hex(3)<='1'; hex(5)<='1'; hex(6)<='1';
			  when 6 =>   hex(0)<='1'; hex(2)<='1'; hex(3)<='1'; hex(4)<='1'; hex(5)<='1';
			  when 7 =>   hex(0)<='1'; hex(1)<='1'; hex(2)<='1';
			  when 8 =>   hex(0)<='1'; hex(1)<='1'; hex(2)<='1'; hex(3)<='1'; hex(4)<='1';hex(5)<='1'; hex(6)<='1';
			  when 9 =>   hex(0)<='1'; hex(1)<='1'; hex(2)<='1'; hex(5)<='1'; hex(6)<='1';
			  when 10 =>  hex(0)<='1'; hex(1)<='1'; hex(2)<='1'; hex(4)<='1';hex(5)<='1'; hex(6)<='1';
			  when 11 =>  hex(2)<='1'; hex(3)<='1'; hex(4)<='1'; hex(5)<='1'; hex(6)<='1';
			  when 12 =>  hex(3)<='1'; hex(4)<='1'; hex(6)<='1';
			  when 13 =>  hex(1)<='1'; hex(2)<='1'; hex(3)<='1'; hex(4)<='1';
			  when 14 =>  hex(0)<='1'; hex(3)<='1'; hex(4)<='1'; hex(5)<='1'; hex(6)<='1';
			  when 15 =>  hex(0)<='1'; hex(4)<='1'; hex(5)<='1'; hex(6)<='1';
			  when others => hex(0)<='1'; hex(1)<='1'; hex(2)<='1'; hex(3)<='1'; hex(4)<='1';hex(5)<='1'; hex(6)<='1';
			end case;
			
		end if;
	end process;
	
	
end architecture;














