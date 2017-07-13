module HalfAdder(A, B, S, C);
	output		S, C;
	input		A, B;

	// Using boolean algebra
	assign C = A&B;
	assign S = A^B;

	// Using logic gates
	//and			G1(C, A, B);
 	//xor			(S, A, B);
endmodule



module FullAdder (a, b, c, sum, carry);
	output sum;
	output carry;

	input a, b, c;

	HalfAdder ha1 (a, b, s0, c0);
	HalfAdder ha2 (c, s0, sum, c1);

	// Using boolean algebra
	assign carry = c0^c1;

	// Using logic gates:
	//xor (carry, c0, c1);
endmodule