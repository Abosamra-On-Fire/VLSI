module CSA (
    input [63:0] X, Y, Z,
    output [63:0] S, C
);

    // Initial carry-in is 0
    assign C[0] = 1'b0;

    // Generate FullAdders for each bit using a loop
    genvar i;
    generate
        for (i = 0; i < 63; i = i + 1) begin : FA
            FullAdder FA_inst (
                .a(X[i]), 
                .b(Y[i]), 
                .cin(Z[i]), 
                .sum(S[i]), 
                .cout(C[i+1])
            );
        end
    endgenerate

    // Final carry-out is assigned to 0 as per the original design
    assign S[63] = 1'b0;

endmodule
