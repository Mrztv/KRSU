
module lab3 (output F1,F2,F3,F4,input A, B, C);

structural_example (F1, A, B, C);
behavioral_example (F2, A, B, C);
Block1(F3,B, C, A);

endmodule
 


module structural_example (F, A, B, C);
input A, B, C;
output F;
wire D,E;


not(D,C); // C инвертируется и сохраняется в D (выход)
and(E,B,D); //логическое И между B и D, результат сохраняется в E
or (F,A,E); // логическое ИЛИ между A и E, результат сохраняется в F
endmodule 

