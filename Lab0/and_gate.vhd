library ieee;
use ieee.std_logic_1164.all;
use work.all;

ENTITY and_gate IS
	PORT(
		A: IN BIT;
		B: IN BIT;
		Q: OUT BIT --NB NO ';' here
	);
END and_gate;

ARCHITECTURE dataflow OF nandgate IS
	
BEGIN
	Q <= A AND B after 3 ns; --The AND-operation.

END dataflow;