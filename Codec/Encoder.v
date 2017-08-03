// Octal to binary encoder
module Encoder (d, x, y, z);
	input [7:0] d;
	output x, y, z;

	assign z = d[1] | d[3] | d[5] | d[7];
	assign y = d[2] | d[3] | d[6] | d[7];
	assign x = d[4] | d[5] | d[6] | d[7];
endmodule