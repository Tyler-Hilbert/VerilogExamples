module HalfAdder_Test;
	wire sum;
	wire carry;
	reg a = 0;
	reg b = 0;

	initial begin
     	$dumpvars(0, HalfAdder_Test);
     	
    	# 10 a = 0; b = 0;
     	# 30 a = 1; b = 0;
    	# 50 a = 0; b = 1;
     	# 70 a = 1; b = 1;

     	# 1000 $stop;
  	end

	HalfAdder ha (a, b, sum, carry);

	initial begin
     	$monitor("a: %h, b: %h, sum: %h carry: %h", a, b, sum, carry);
    end
endmodule

module FullAdder_Test;
    wire sum, carry; // Outputs
    wire a, b, c; // Inputs
    integer i;

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, FullAdder_Test);
        
        for (i = 0; i < 8; i=i+1)
            #10;
       

        # 1000 $stop;
    end

    assign a = i[0], b = i[1], c = i[2];


    FullAdder fa (a, b, c, sum, carry);

    initial begin
        $monitor("a: %h, b: %h, c: %h, sum: %h carry: %h", a, b, c, sum, carry);
    end
endmodule