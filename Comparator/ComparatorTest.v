module ComparatorTest;
	reg [3:0] a;
	reg [3:0] b;
	output aHigher, bHigher, equal;

	ComparatorWithOperators c (a, b, aHigher, bHigher, equal);

	initial begin
	    $dumpfile("test.vcd");
    	$dumpvars(0, ComparatorTest);

		# 0  a[3:0]=4'b0000; b[3:0]=4'b0000;
		# 20 a[3:0]=4'b1111; b[3:0]=4'b1111;
		# 40 a[3:0]=4'b0000; b[3:0]=4'b1111;
		# 60 a[3:0]=4'b1111; b[3:0]=4'b0000;
		# 80 a[3:0]=4'b1000; b[3:0]=4'b0111;
		# 100 $stop;
	end
endmodule