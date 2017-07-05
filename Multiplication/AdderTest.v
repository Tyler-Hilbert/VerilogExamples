module HalfAdder_Test;
	wire sum;
	wire carry;
	reg a = 0;
	reg b = 0;

	initial begin          // TODO - see if I can get this to not take control of console when testing and just generate file
     	$dumpvars(0, HalfAdder_Test);
     	
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
        $dumpfile("test.vcd");
        $dumpvars(0, FullAdder_Test);
        
        # 0 a=0; b=0; c=0;
        # 10 a=1; b=0; c=0;
        # 20 a=0; b=1; c=0;
        # 30 a=1; b=1; c=0;
        # 40 a=0; b=0; c=1;
        # 50 a=1; b=0; c=1;
        # 60 a=0; b=1; c=1;
        # 70 a=1; b=1; c=1;
        # 80 a=0; b=0; c=0;

        # 90 $stop;
    end

    FullAdder fa (a, b, c, sum, carry);

    initial begin
        $monitor("a: %h, b: %h, c: %h, sum: %h carry: %h", a, b, c, sum, carry);
    end
endmodule