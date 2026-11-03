module structural (F_sop, F_pos, A, B, C);
	input A, B, C;
	output F_sop, F_pos;
	
	structural_pos (F_pos, A, B, C);
	structural_sop (F_sop, A, B, C);
endmodule 

module structural_pos (F, A, B, C);
	input A, B, C;
	output F;
	
	not(_A, A);
	not(_B, B);
	not(_C, C);
	
	
	or(tmp1, A, B, C);
	or(tmp2, A, _B, _C);
	or(tmp3, _A, B, C);
	
	and(F, tmp1, tmp2, tmp3);
endmodule 


module structural_sop (F, A, B, C);
	input A, B, C;
	output F;
	
	not(_A, A);
	not(_B, B);
	not(_C, C);
	
	and(tmp1, _A, _B, C);
	and(tmp2, _A, B, _C);
	and(tmp3, A, _B, C);
	and(tmp4, A, B, _C);
	and(tmp5, A, B, C);
	
	or(F, tmp1, tmp2, tmp3, tmp4, tmp5);
endmodule 
