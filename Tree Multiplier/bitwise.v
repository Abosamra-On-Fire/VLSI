module Bitwise (A, B, p);

input [32:1] A; 
input B;        
output [32:1] p; 

genvar i; 
generate
    for (i = 1; i <= 32; i = i + 1) begin : bitwise_and
        assign p[i] = A[i] & B;
    end
endgenerate

endmodule
