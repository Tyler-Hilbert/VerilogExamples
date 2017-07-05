module TestExample;
	wire a, b, c;
	integer i;

		/*# 0 a=0; b=0; c=0;
		# 10 a=1; b=0; c=0;
		# 20 a=0; b=1; c=0;
		# 30 a=1; b=1; c=0;
		# 40 a=0; b=0; c=1;
		# 50 a=1; b=0; c=1;
		# 60 a=0; b=1; c=1;
		# 70 a=1; b=1; c=1;
		# 80 a=0; b=0; c=0;*/

	initial begin
    	$dumpfile("test.vcd");
    	$dumpvars(0, TestExample);
    	for (i = 0; i < 32; i=i+1)
        	#10;
    	$stop;
	end

	assign a = i[0], b = i[1], c = i[2];
endmodule