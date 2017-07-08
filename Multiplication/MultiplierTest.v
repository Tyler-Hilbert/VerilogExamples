module Multiplier_Test;
	wire [3:0]c; // Outputs
	wire a0, a1, b0, b1; // Inputs
	integer i; 

	initial begin
    	$dumpfile("test.vcd");
    	$dumpvars(0, Multiplier_Test);
    	for (i = 0; i < 16; i=i+1)
        	#10;
    	
    	# 1000 $stop;
	end

	assign a0 = i[0], a1 = i[1], b0 = i[2], b1 = i[3];


	Multiplier mult (a0, a1, b0, b1, c);
endmodule


module NBitMultiplier_Test;
	wire [3:0]c; // Outputs
	wire a0, a1, b0, b1; // Inputs
	integer i; 

	initial begin
    	$dumpfile("test.vcd");
    	$dumpvars(0, NBitMultiplier_Test);
    	for (i = 0; i < 16; i=i+1)
        	#10;
    	# 1000 $stop;
	end

	assign a0 = i[0], a1 = i[1], b0 = i[2], b1 = i[3];


	Multiplier mult (a0, a1, b0, b1, c);
endmodule
