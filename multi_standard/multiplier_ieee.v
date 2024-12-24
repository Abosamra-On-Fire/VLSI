module multiplier_ieee(
    input wire clk,
    input wire rst,
    input wire [31:0] a,
    input wire [31:0] b,
    output wire [31:0] product,
    output wire overflow
);

    reg [31:0] reg_a;
    reg [31:0] reg_b;
    reg [31:0] reg_product;
    reg reg_overflow;
    
    wire sign_x, sign_y, sign_product;
    wire [7:0] exp_x, exp_y, exp_product;
    wire [22:0] mantissa_x, mantissa_y, mantissa_product;
    wire [23:0] mantissa_x_ext, mantissa_y_ext;
    wire [47:0] mantissa_product_ext;
    wire [7:0] exp_x_bias, exp_y_bias, exp_product_bias;
    
    assign sign_x = reg_a[31];
    assign exp_x = reg_a[30:23];
    assign mantissa_x = reg_a[22:0];
    
    assign sign_y = reg_b[31];
    assign exp_y = reg_b[30:23];
    assign mantissa_y = reg_b[22:0];
    
    assign mantissa_x_ext = {1'b1, mantissa_x};
    assign mantissa_y_ext = {1'b1, mantissa_y};
    
    assign sign_product = sign_x ^ sign_y;
    assign mantissa_product_ext = mantissa_x_ext * mantissa_y_ext;
    
    assign exp_x_bias = exp_x - 8'd127;
    assign exp_y_bias = exp_y - 8'd127;
    assign exp_product_bias = exp_x_bias + exp_y_bias;
    
    assign {mantissa_product, exp_product} = mantissa_product_ext[47] ? 
    {mantissa_product_ext[46:24], exp_product_bias + 8'd128} : 
    {mantissa_product_ext[45:23], exp_product_bias + 8'd127};

    assign overflow = (exp_x[7] == exp_y[7]) && (exp_x[7] != exp_product[7]);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            reg_a <= 32'b0;
            reg_b <= 32'b0;
            reg_product <= 32'b0;
            reg_overflow <= 32'b0;
        end else begin
            reg_a <= a;
            reg_b <= b;
            reg_product <= (reg_a == 0 || reg_b == 0) ? 32'b0 : {sign_product, exp_product, mantissa_product};
            reg_overflow <= (reg_a == 0 || reg_b == 0) ? 1'b0 : overflow;
        end
    end

    assign product = reg_product;

endmodule