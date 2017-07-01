module HalfAdder_Test;
	wire sum;
	wire carry;
	reg a = 0;
	reg b = 0;

	initial begin
	    $dumpfile("test.vcd");
     	$dumpvars(0,HalfAdder_Test);
     	
    	# 10 a = 0;
    	# 10 b = 0;

     	# 30 a = 1;
     	# 30 b = 0;
    	
    	# 50 a = 0;
    	# 50 b = 1;
     	
     	# 70 a = 1;
     	# 70 b = 1;

     	# 90 $stop;
  	end

	HalfAdder ha (a, b, sum, carry);

	initial begin
     	$monitor("a: %h, b: %h, sum: %h carry: %h", a, b, sum, carry);
    end
endmodule