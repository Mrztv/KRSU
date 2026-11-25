module seven_seg_decoder 
(
	OUT,IN
);
input [0:3] IN;
output [0:6] OUT;

reg [0:6] OUT;

always @(IN)
	begin
		case (IN)
		4'b0000: OUT = 7'b0000001;
		4'b0001: OUT = 7'b1001111;
		4'b0010: OUT = 7'b0010010;
		4'b0011: OUT = 7'b0000110;
		4'b0100: OUT = 7'b1001100;
		4'b0101: OUT = 7'b0100100;
		4'b0110: OUT = 7'b0100000;
		4'b0111: OUT = 7'b0001111;
		4'b1000: OUT = 7'b0000000;
		4'b1001: OUT = 7'b0000100;
		4'b1010: OUT = 7'b0001000;
		4'b1011: OUT = 7'b1100000;
		4'b1100: OUT = 7'b0110001;
		4'b1101: OUT = 7'b1000010;
		4'b1110: OUT = 7'b0110000;
		4'b1111: OUT = 7'b0111000;
		endcase
	end
	
endmodule
