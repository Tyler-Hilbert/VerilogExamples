module NBitMultiplier (a, b, c, clk);
parameter WIDTH = 64;
output      [2*WIDTH:0]c; 
input       [WIDTH-1:0]a; 
input       [WIDTH-1:0]b; 
input       clk;


genvar i;
generate  for (i = 0; i < WIDTH; i <= i + 1)
begin : shifts
    // shift a 1-bit for each i and 'logical and' it with b
    reg  [WIDTH + i :0]carry;
    wire [WIDTH + i -1:0]shifted = {a,i{0}} & b[i]; 


    // sum the result of shift and 'logical and'
    always @ (posedge clk)
    begin
        carry <= shifted + shifts[i-1].carry ;
    end
end

assign c = shifts[WIDTH].carry;

endgenerate

endmodule