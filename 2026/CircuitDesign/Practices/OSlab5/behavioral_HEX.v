module behavioral_HEX (output [0:6] F, input [0:3] IN);

assign F[0]= ~(IN[0]&IN[1]&IN[2]&IN[3]);
assign F[1]= ~(IN[0]&IN[1]&IN[2]&IN[3]);
assign F[2]= ~(IN[0]&IN[1]&IN[2]&IN[3]);
assign F[3]= ~(IN[0]&IN[1]&IN[2]&IN[3]);
assign F[4]= ~(IN[0]&IN[1]&IN[2]&IN[3]);
assign F[5]= ~(IN[0]&IN[1]&IN[2]&IN[3]);
assign F[6]= ~(IN[0]&IN[1]&IN[2]&IN[3]);

endmodule