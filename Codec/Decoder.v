module Decoder (x, y, z, d);
	input x, y, z;
	output [7:0] d;

	assign d[0] = !z & !y & !x;
	assign d[1] = !z & !y & x;
	assign d[2] = !z & y & !x;
	assign d[3] = !z & y & x;
	assign d[4] = z & !y & !x;
	assign d[5] = z & !y & x;
	assign d[6] = z & y & !x;
	assign d[7] = z & y & x;
endmodule