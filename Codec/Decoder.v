// 3 to 8 Decoder

module Decoder (in, d);
	input [2:0] in;
	output [7:0] d;

	assign d[0] = !in[2] & !in[1] & !in[0];
	assign d[1] = !in[2] & !in[1] & in[0];
	assign d[2] = !in[2] & in[1] & !in[0];
	assign d[3] = !in[2] & in[1] & in[0];
	assign d[4] = in[2] & !in[1] & !in[0];
	assign d[5] = in[2] & !in[1] & in[0];
	assign d[6] = in[2] & in[1] & !in[0];
	assign d[7] = in[2] & in[1] & in[0];
endmodule