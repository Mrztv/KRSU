//  Module Declaration
module truth_table_block
(
// {{ALTERA_ARGS_BEGIN}} DO NOT REMOVE THIS LINE!
E, G, X, F
// {{ALTERA_ARGS_END}} DO NOT REMOVE THIS LINE!
);
// Port Declaration

// {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
input E;
input G;
input X;
output F;
// {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
reg F;
always @(*) // invoke procedural code w hen these change
	begin // begin the procedural statements
	
		case ({E,G,X})  	 // variables that affect the procedure
								 // the 3’b simply means that w e are 
			3'b000:F= 'b0; // considering a three-bit binary value
			3'b001: F= 1'b0; 
			3'b010: F= 'b1;
			3'b011: F= 'b0;
			3'b100: F= 'b1;
			3'b101: F= 'b1;
			3'b110: F= 'b1;
			3'b111: F= 'b1;
			
		endcase
	end	
endmodule
