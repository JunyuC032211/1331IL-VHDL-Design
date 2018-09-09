ENTITY DataBuffer IS
	 PORT ( out_en : IN std_logic;
	 data_in : IN data_word;
	 data_out : OUT data_bus);
END ENTITY DataBuffer;
ARCHITECTURE RTL OF DataBuffer IS 
	begin 
	
	process
	beign if(out_en = ){}