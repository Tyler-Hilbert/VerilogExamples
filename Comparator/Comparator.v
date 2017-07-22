module ComparatorWithOperators(a[3:0], b[3:0], aHigher, bHigher, equal);
	input [3:0] a, b;
	output aHigher, bHigher, equal;

   	assign aHigher = a > b;
   	assign bHigher = a < b;
   	assign equal = a~|b;

endmodule

module ComparatorWithControlStatements(a[3:0], b[3:0], aHigher, bHigher, equal);
	input [3:0] a, b;
	output aHigher, bHigher, equal;
	//assign equal = 0;

	//integer i;

	//always@(*)
	//begin
	//for(i = 0; i <= 3; i++)
		//if (equal == 0)
			//assign bHigher = !a[0]&b[0];
			//assign aHigher = !b[0]&a[0];
			//assign equal = aHigher~|bHigher;
   	//end
endmodule