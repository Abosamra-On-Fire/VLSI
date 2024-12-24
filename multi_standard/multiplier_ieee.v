
module fp_multiplier (
    input [31:0] a, // Input operand A
    input [31:0] b, // Input operand B
    output reg [31:0] result // Result
);
    // Intermediate variables
    reg sign_a, sign_b, sign_res;
    reg [7:0] exp_a, exp_b, exp_res;
    reg [23:0] mant_a, mant_b;
    reg [47:0] mant_res;
    reg [7:0] bias = 8'd127;

    always @(*) begin
        // Extract sign, exponent, and mantissa
        sign_a = a[31];
        sign_b = b[31];
        exp_a = a[30:23];
        exp_b = b[30:23];
        mant_a = {1'b1, a[22:0]}; // Add implicit 1
        mant_b = {1'b1, b[22:0]}; // Add implicit 1

        // Multiply mantissas
        mant_res = mant_a * mant_b;

        // Normalize result if needed
        if (mant_res[47]) begin
            mant_res = mant_res >> 1;
            exp_res = exp_a + exp_b - bias + 1; // Add 1 due to normalization
        end else begin
            exp_res = exp_a + exp_b - bias;
        end

        // Calculate sign
        sign_res = sign_a ^ sign_b;

        // Assemble the result
        if (exp_res >= 255) begin
            // Handle overflow (set to infinity)
            result = {sign_res, 8'hFF, 23'b0};
        end else if (exp_res <= 0) begin
            // Handle underflow (set to zero)
            result = {sign_res, 8'b0, 23'b0};
        end else begin
            // Normal result
            result = {sign_res, exp_res[7:0], mant_res[46:24]};
        end
    end
endmodule


// module fp_multiplier (
//     input clk,
//     input reset,
//     input [31:0] a, // Input operand A
//     input [31:0] b, // Input operand B
//     output reg [31:0] result // Result
// );
//     // Intermediate variables
//     reg sign_a, sign_b, sign_res;
//     reg [7:0] exp_a, exp_b, exp_res;
//     reg [23:0] mant_a, mant_b;
//     reg [47:0] mant_res;
//     reg [7:0] bias = 8'd127;

//     always @(posedge clk or posedge reset) begin
//         if (reset) begin
//             result <= 32'b0;
//         end else begin
//             // Extract sign, exponent, and mantissa
//             sign_a = a[31];
//             sign_b = b[31];
//             exp_a = a[30:23];
//             exp_b = b[30:23];
//             mant_a = {1'b1, a[22:0]}; // Add implicit 1
//             mant_b = {1'b1, b[22:0]}; // Add implicit 1

//             // Multiply mantissas
//             mant_res = mant_a * mant_b;

//             // Normalize result if needed
//             if (mant_res[47]) begin
//                 mant_res = mant_res >> 1;
//                 exp_res = exp_a + exp_b - bias + 1; // Add 1 due to normalization
//             end else begin
//                 exp_res = exp_a + exp_b - bias;
//             end

//             // Calculate sign
//             sign_res = sign_a ^ sign_b;

//             // Assemble the result
//             if (exp_res >= 255) begin
//                 // Handle overflow (set to infinity)
//                 result = {sign_res, 8'hFF, 23'b0};
//             end else if (exp_res <= 0) begin
//                 // Handle underflow (set to zero)
//                 result = {sign_res, 8'b0, 23'b0};
//             end else begin
//                 // Normal result
//                 result = {sign_res, exp_res[7:0], mant_res[46:24]};
//             end
//         end
//     end
// endmodule