module Multiplier_Test;
	wire c0, c1, c2, c3;
	reg a0=0, a1=0, b0=0, b1=0;

	initial begin
	    $dumpfile("test.vcd");
     	$dumpvars(0, Multiplier_Test);
     	
     	# 90 $stop;
  	end

	Multiplier mult (a0, a1, b0, b1, c0, c1, c2, c3);

	initial begin
     	//$monitor("a: %h, b: %h, sum: %h carry: %h", a, b, sum, carry);
    end
endmodule
