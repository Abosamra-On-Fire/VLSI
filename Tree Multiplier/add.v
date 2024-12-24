module add #(parameter n = 8) (
    input  [n-1:0] a,          
    input  [n-1:0] b,   
    input  cin,       
    output [n-1:0] sum,        
    output              cout  
);
    assign {cout, sum} = a + b+cin;
endmodule
