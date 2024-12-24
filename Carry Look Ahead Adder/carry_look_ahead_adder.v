module carry_look_ahead_adder  (
    input [31:0] a, b, 
    input cin,           
    output [31:0] sum,  
    output cout           
);
    wire [31:0] G, P;   
    wire [32:0] C;         

    assign G = a & b;     
    assign P = a | b;     

    assign C[0] = cin;
    genvar i;
    generate
        for (i = 1; i <= 32; i = i + 1) begin : carry_logic
            assign C[i] = G[i-1] | (P[i-1] & C[i-1]);
        end
    endgenerate

    assign sum = a ^ b ^ C[31:0]; 

    assign cout = C[n];
endmodule
