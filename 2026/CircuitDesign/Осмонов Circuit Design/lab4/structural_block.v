//  Module Declaration
module  structural_block
(
// {{ALTERA_ARGS_BEGIN}} DO NOT REMOVE THIS LINE!
A, B, C, E
// {{ALTERA_ARGS_END}} DO NOT REMOVE THIS LINE!
);
// Port Declaration

// {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
input A;
input B;
input C;
output E;
// {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
not(notA,A);
not(notB,B);
not(notC,C);

not (D,C); // C инвертируется и сохраняется в D (выход)
and (G,B,D); //логическое И между B и D, результат сохраняется в E
or (E,A,G); // логическое ИЛИ между A и E, результат сохраняется в F

endmodule
