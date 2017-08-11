// Test for 3 X 8 Decoder

module DecoderTest ();
	reg x, y, z;
	wire [7:0] d;

	Decoder dec(x, y, z, d);

	integer i;
	initial begin
		$dumpfile ("test.vcd");
		$dumpvars (0, DecoderTest);

		for (i = 0; i < 8; i=i+1) begin
			{z, y, x} = i; 
			# 10;
		end
	end

endmodule