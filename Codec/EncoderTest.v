// Octal to binary encoder test
module EncoderTest ();
	wire [2:0] bin;
	reg [7:0] oct;

	Encoder e (oct, bin);

	initial begin
		$dumpfile ("encoder.vcd");
		$dumpvars (0, EncoderTest);
		# 10 oct = 8'b00000001;
		# 10 oct = 8'b00000010;
		# 10 oct = 8'b00000100;
		# 10 oct = 8'b00001000;
		# 10 oct = 8'b00010000;
		# 10 oct = 8'b00100000;
		# 10 oct = 8'b01000000;
		# 10 oct = 8'b01000000;
		# 10 oct = 8'b10000000;
	end
endmodule