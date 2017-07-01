module HalfAdder(A, B, S, C);
	output		S, C;
	input		A, B;

	and			G1(C, A, B);
	xor			(S, A, B);
endmodule

