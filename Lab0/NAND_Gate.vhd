


ENTITY nandgate IS
	PORT(
		A: IN BIT;
		B: IN BIT;
		Q: OUT BIT --NB NO ';' here
	);
END nandgate;

ARCHITECTURE dataflow OF nandgate IS
	SIGNAL Q_prim: BIT;
BEGIN
	Q_prim <= A AND B; --The AND-operation.
	Q <= NOT Q_prim; --The inverter.
END dataflow;