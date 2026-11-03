module behavioral (F_sop, F_pos, A, B, C);
	input A, B, C;
	output F_sop, F_pos;
	
	behavioral_pos (F_pos, A, B, C);
	behavioral_sop (F_sop, A, B, C);
endmodule 

module behavioral_pos (F, A, B, C);
	input A, B, C;
	output F;
		
	assign F=(A|B|C)&(A|~B|~C)&(~A|B|C);
endmodule 

module behavioral_sop (F, A, B, C);
	input A, B, C;
	output F;
	
	assign F=(~A&~B&C)|(~A&B&~C)|(A&~B&C)|(A&B&~C)|(A&B&C);
endmodule 

