module Comparator(a[3:0], b[3:0], aHigher, bHigher, equal);
	input [3:0] a, b;
	output aHigher, bHigher, equal;

	assign aHigher = a[0];
	assign bHigher = b[0];
	assign equal = b[1];
endmodule