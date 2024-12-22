module multiplier #(parameter N = 32) (
    input signed[N-1:0] A, // Input A with parameterized width
    input signed [N-1:0] B, // Input B with parameterized width
    output signed[2*N-1:0] P // Output P with parameterized width
);

assign P = A * B;

endmodule