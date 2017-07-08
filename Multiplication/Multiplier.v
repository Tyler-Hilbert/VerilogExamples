module Multiplier (a0, a1, b0, b1, c[3:0]);
	output 		[3:0]c;	
	input 		a0, a1, b0, b1;
	wire 		a0b1, a1b0, ha0c, a1b1;  

	assign c[0] = a0&b0;
	assign a0b1 = a0&b1;
	assign a1b0 = a1&b0;
	HalfAdder ha0 (a1b0, a0b1, c[1], ha0c);

	assign a1b1 = a1&b1;
	HalfAdder ha1 (ha0c, a1b1, c[2], c[3]);
endmodule