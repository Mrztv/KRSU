module x3_block
(
z1, z2, z3, z4, x3
);

input z1;
input z2;
input z3;
input z4;
output x3;

assign x3 = z1&z3 | z2&z4;

endmodule
