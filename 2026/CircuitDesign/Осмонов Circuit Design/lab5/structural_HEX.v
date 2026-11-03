module structural_HEX (output [0:6] F, input [0:3] IN);

nand(F[0],IN[0],IN[1],IN[2],IN[3]);
nand(F[1],IN[0],IN[1],IN[2],IN[3]);
nand(F[2],IN[0],IN[1],IN[2],IN[3]);
nand(F[3],IN[0],IN[1],IN[2],IN[3]);
nand(F[4],IN[0],IN[1],IN[2],IN[3]);
nand(F[5],IN[0],IN[1],IN[2],IN[3]);
nand(F[6],IN[0],IN[1],IN[2],IN[3]);

endmodule