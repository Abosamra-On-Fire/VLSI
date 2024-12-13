module carry_select_adder #(
    parameter WIDTH = 32  
) (
    input [WIDTH-1:0] a,  
    input [WIDTH-1:0] b,  
    input cin,            
    output [WIDTH-1:0] sum, 
    output cout           
);
    wire [WIDTH:0] carry;  
    assign carry[0] = cin; 

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin
            wire sum0, sum1;  
            wire cout0, cout1; 

            
            full_adder fa0 (
                .a(a[i]),
                .b(b[i]),
                .cin(1'b0), // always 0
                .sum(sum0),
                .cout(cout0)
            );

            
            full_adder fa1 (
                .a(a[i]),
                .b(b[i]),
                .cin(1'b1), //always 1
                .sum(sum1),
                .cout(cout1)
            );

            
            assign sum[i] = carry[i] ? sum1 : sum0;
            assign carry[i+1] = carry[i] ? cout1 : cout0;
        end
    endgenerate

    assign cout = carry[WIDTH]; 
endmodule
