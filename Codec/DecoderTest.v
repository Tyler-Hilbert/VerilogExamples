// Test for 3 X 8 Decoder

module DecoderTest ();
	reg [2:0] in;
	wire [7:0] out;

	Decoder dec(in, out);

	integer i;
	initial begin
		$dumpfile ("test.vcd");
		$dumpvars (0, DecoderTest);

		for (i = 0; i < 8; i=i+1) begin
			{in[2], in[1], in[0]} = i; 
			# 10;
		end
	end

endmodule