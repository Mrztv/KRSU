module behavioral_example (F, A, B, C);
input A, B, C;
output F; 
assign F=(A|(~C&B)); // запишите логическое выражение
endmodule