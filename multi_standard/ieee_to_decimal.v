module ieee754_to_decimal(
    input [31:0] ieee754,
    output reg [31:0] decimal
);
    reg sign;
    reg [7:0] exponent;
    reg [22:0] mantissa;
    reg [31:0] abs_decimal;

    always @(*) begin
        // Extract the sign, exponent, and mantissa
        sign = ieee754[31];
        exponent = ieee754[30:23] - 127; // Remove bias
        mantissa = {1'b1, ieee754[22:0]}; // Add implicit 1

        // Calculate the absolute value of the decimal
        abs_decimal = mantissa << exponent;

        // Apply the sign
        decimal = sign ? -abs_decimal : abs_decimal;
    end
endmodule



// module ieee754_to_decimal(
//     input clk,
//     input reset,
//     input [31:0] ieee754,
//     output reg [31:0] decimal
// );
//     reg sign;
//     reg [7:0] exponent;
//     reg [22:0] mantissa;
//     reg [31:0] abs_decimal;

//     always @(posedge clk or posedge reset) begin
//         if (reset) begin
//             decimal <= 32'b0;
//         end else begin
//             // Extract the sign, exponent, and mantissa
//             sign = ieee754[31];
//             exponent = ieee754[30:23] - 127; // Remove bias
//             mantissa = {1'b1, ieee754[22:0]}; // Add implicit 1

//             // Calculate the absolute value of the decimal
//             abs_decimal = mantissa << exponent;

//             // Apply the sign
//             decimal = sign ? -abs_decimal : abs_decimal;
//         end
//     end
// endmodule