
// Bypass Adder (Carry-Skip Adder) Module
module BypassAdder #(parameter N = 32, parameter K = 4) (
    input [N-1:0] A,
    input [N-1:0] B,
    input Cin,
    output [N-1:0] Sum,
    output Cout
);
    localparam NUM_BLOCKS = (N + K - 1) / K; // Number of blocks

    wire [NUM_BLOCKS:0] carry; // Carry signals between blocks
    assign carry[0] = Cin;  // Initial carry-in

    genvar i;
    generate
        for (i = 0; i < NUM_BLOCKS; i = i + 1) begin : BLOCKS
            wire [K-1:0] blockA = A[i*K +: K];  // Extract K bits from A
            wire [K-1:0] blockB = B[i*K +: K];  // Extract K bits from B
            wire [K-1:0] P, G;                   // Propagate and Generate signals
            wire blockCarry;

            // Ripple Carry Adder for each block
            RippleCarryAdder #(.WIDTH(K)) RCA (
                .X(blockA),
                .Y(blockB),
                .Ci(carry[i]),  // Carry-in for each block
                .S(Sum[i*K +: K]),
                .Co(blockCarry)
            );

            // Generate and Propagate signals for carry-skip logic
            assign P = blockA ^ blockB;         // Propagate signal (A XOR B)

            // Carry-skip logic: if generate is high, carry is generated, else skip it
            assign carry[i+1] = (P == {K{1'b1}}) ? carry[i] : blockCarry;
        end
    endgenerate

    // Final carry-out is the last carry
    assign Cout = carry[NUM_BLOCKS];
endmodule



