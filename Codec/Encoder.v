// Priority Octal to octary encoder
module Encoder (oct, bin);
	input [7:0] oct;
	output [2:0] bin;

	assign bin[0] = !oct[6] & (!oct[4] & !oct[2] & oct[1] + (!oct[4] & oct[3]) + oct[5]) + oct[7];
	assign bin[1] = !oct[5] & !oct[4] & (oct[2] + oct[3]) + oct[6] + oct[7];
	assign bin[2] = oct[4] + oct[5] + oct[6] + oct[7];

	/*assign oct[0] = oct[1] | oct[3] | oct[5] | oct[7];
	assign oct[1] = oct[2] | oct[3] | oct[6] | oct[7];
	assign oct[2] = oct[4] | oct[5] | oct[6] | oct[7];*/
endmodule