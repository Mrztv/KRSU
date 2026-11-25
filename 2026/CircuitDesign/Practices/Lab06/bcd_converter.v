module bcd_converter (S0, S1, S2, S3, C0, N2, N1);
	input C0, S3, S2, S1, S0;
	output [3:0] N2;
	output [3:0] N1;
	
	assign N2[3] = 0;
	assign N2[2] = 0;
	//assign N2[1] = C0 & (S3|S2);
	assign N2[1] = C0 & (S2 | S3);

	//assign N2[0] = (~C0 & S3 & S1) | (~C0 & S3 & S2) | (C0 & ~S3 & ~S2) | (S3 & S2 & S1);
	assign N2[0] = (~C0 &  S3 & (S2 | S1)) | ( C0 & (~S3 & ~S2 | S1 & S3 & S2));
	
	//assign N1[3] = (~C0 & S3 & ~S2 & ~S1) | (C0 & ~S3 & ~S2 & S1) | (C0 & S3 & S2 & ~S1);
	assign N1[3] = (~C0 & ~S1 &  S3 & ~S2) | ( C0 & (~S1 &  S3 &  S2 | S1 & ~S3 & ~S2));
	
	//assign N1[2] = (~C0 & ~S3 & S2)|(~C0 & S2 & S1)|(C0 & ~S2 & ~S1)|(C0 & S3 & S2); !!!
	assign N1[2] = (~C0 &  S2 & ( S1 | ~S3)) | ( C0 & ~S2 & (~S1 |  S3));
	
	//assign N1[1] = (~C0&~S3&S1)|(~C0&S3&S2&~S1)|(C0&~S3&~S2&~S1)|(S3&S2&~S1)|(C0&S3&~S2&S1);
	assign N1[1] = (~C0 & ( S1 & ~S3 | ~S1 & S3 & S2)) | ( C0 & (~S1 & ~S3 & ~S2 | S1 & (S3 ^ S2)));
	
	assign N1[0] = S0;
	
endmodule
