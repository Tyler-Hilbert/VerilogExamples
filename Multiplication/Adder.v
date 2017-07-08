module HalfAdder(A, B, S, C);
	output		S, C;
	input		A, B;

	assign C = A&B;
	assign S = A^B;
endmodule



module FullAdder (a, b, c, sum, carry);
	output sum;
	output carry;

	input a, b, c;

	HalfAdder ha1 (a, b, s0, c0);
	HalfAdder ha2 (c, s0, sum, c1);

	assign carry = c0^c1;
endmodule