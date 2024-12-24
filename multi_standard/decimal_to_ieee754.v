module decimal_to_ieee754(
    input signed [31:0] decimal,
    output reg signed [31:0] ieee754
);
    reg signed [31:0] abs_decimal;
    reg signed [7:0] exponent;
    reg signed [22:0] mantissa;
    reg sign;

    always @(*) begin: conversion_process // this must be named

        
        // declarations must come before any other statements   
        integer i;

        if (decimal === 32'h00000000) begin
            ieee754 = 32'h00000000;
        end 
        else begin
            // Determine the sign
            sign = decimal[31];

            // Get the absolute value of the decimal
            abs_decimal = sign ? -decimal : decimal;

            // Find the position of the highest set bit
            for (i = 31; i >= 0; i = i - 1) begin
                if (abs_decimal[i]) begin
                    exponent = i + 127; // Add bias
                    mantissa = abs_decimal << (23 - i);
                    // break; // verilog does not have explicit break
                    i = -1; // this will exit the loop
                end
            end

            // Assemble the IEEE 754 representation
            ieee754 = {sign, exponent, mantissa[22:0]};
        end
    end
endmodule


// module decimal_to_ieee754(
//     input clk,
//     input reset,
//     input [31:0] decimal,
//     output reg [31:0] ieee754
// );
//     reg [31:0] abs_decimal;
//     reg [7:0] exponent;
//     reg [22:0] mantissa;
//     reg sign;

//     always @(posedge clk or posedge reset) begin
//         if (reset) begin
//             ieee754 <= 32'b0;
//         end else begin
//             // Determine the sign
//             sign = decimal[31];

//             // Get the absolute value of the decimal
//             abs_decimal = sign ? -decimal : decimal;

//             // Find the position of the highest set bit
//             integer i;
//             for (i = 31; i >= 0; i = i - 1) begin
//                 if (abs_decimal[i]) begin
//                     exponent = i + 127; // Add bias
//                     mantissa = abs_decimal << (23 - i);
//                     break;
//                 end
//             end

//             // Assemble the IEEE 754 representation
//             ieee754 = {sign, exponent, mantissa[22:0]};
//         end
//     end
// endmodule