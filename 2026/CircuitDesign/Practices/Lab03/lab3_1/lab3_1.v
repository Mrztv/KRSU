module lab3_1 (A, C, G, W);
	input C, G, W;
	output A;
	
	not(c, C);
	not(g, G);
	not(w, W);
	
	
	or(a, C, G, W);
	or(b, C, G, w);
	or(d, C, g, W);
	or(e, c, G, W);
	or(f, c, G, w);
	
	
	and(A, a, b, d, e, f);
endmodule
