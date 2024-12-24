module sequential_multiplier (
    input clk,
    input rst,
    input start,
    input signed [31:0] multiplicand,
    input signed [31:0] multiplier,
    output reg signed [63:0] product, // this is treated as accumulator
    output reg done
);
    reg signed [31:0] a, b;      // Multiplicand and multiplier registers
    reg signed [63:0] temp_product; // Temporary product
    reg [5:0] count;            // Counter for 32 iterations
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            product <= 64'sd0;
            temp_product <= 64'sd0;
            a <= 32'sd0;
            b <= 32'sd0;
            count <= 6'd0;
            done <= 1'b0;
        end else if (start) begin
            a <= multiplicand;
            b <= multiplier;
            temp_product <= 64'sd0;
            count <= 6'd32;
            done <= 1'b0;
        end else if (count > 0) begin
            if (b[0] == 1'b1) begin
                // Add the sign-extended multiplicand to the product
                temp_product = temp_product + {{32{a[31]}}, a}; // Sign-extend 'a'
            end
            a <= a << 1;  // Signed shift for multiplicand (left shift)
            b <= b >>> 1; // Arithmetic shift right for multiplier
            count <= count - 1;
        end else if (count == 0) begin

            // when both multiplicand and multiplier are negative, the product is positive
            if (multiplicand[31] == 1'b1 && multiplier[31] == 1'b1) begin
                // fill the most significant 32 bits with 0's
                temp_product[63:32] = 32'b0;
            end

            product <= temp_product;
            done <= 1'b1;
        end
    end
endmodule