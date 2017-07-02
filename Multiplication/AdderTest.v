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

module FullAdder_Test;
    wire sum;
    wire carry;
    reg a = 0;
    reg b = 0;
    reg c = 0;

    initial begin
        $dumpfile("full_adder_test.vcd");
        $dumpvars(0,FullAdder_Test);
        
        # 10 a = 0;
        # 10 b = 0;
        # 10 c = 0;

        # 30 a = 1;
        # 30 b = 0;
        # 30 c = 0;
        
        # 50 a = 0;
        # 50 b = 1;
        # 50 c = 1;
        
        # 70 a = 1;
        # 70 b = 1;
        # 70 c = 1;

        # 90 $stop;
    end

    FullAdder fa (a, b, c, sum, carry);

    initial begin
        $monitor("a: %h, b: %h, c: %h, sum: %h carry: %h", a, b, c, sum, carry);
    end
endmodule