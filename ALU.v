module ALU (
    input wire [31:0] A,           
    input wire [31:0] B,           
    input wire Op,                 
    output wire [31:0] Out        
);

    wire [31:0] add_result;
    wire [31:0] mult_result;

    FPAdder adder_inst (
        .A(A),
        .B(B),
        .result(add_result)
    );

    FPMultiplier multiplier_inst (
        .A(A),
        .B(B),
        .result(mult_result)
    );

    assign Out = (Op == 0) ? add_result : mult_result;

endmodule
