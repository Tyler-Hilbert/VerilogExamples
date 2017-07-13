module ComparatorTest;
	wire [3:0] a = 15;
	wire [3:0] b = 0;

	initial begin
	    $dumpfile("test.vcd");
    	$dumpvars(0, ComparatorTest);
		#10;
		#20 $stop;
	end
endmodule