module x1_block (z1, z2, z3, z4, x1);

input z1;
input z2;
input z3;
input z4;
output x1;

and(res1, z1, z2);
and(res2, z3, z4);

or(x1, res1, res2);

endmodule
