module ra_tb;
    reg [31:0] A, B;
    reg Cin;
    wire [31:0] Sum;
    wire Cout;

    // Instantiate the 32-bit Ripple Carry Adder
    ripple_adder RCA32 (.X(A), .Y(B), .Ci(Cin), .S(Sum), .Co(Cout));

    initial begin
        // Test Case 1
        A = 32'h00000001; B = 32'h00000001; Cin = 1'b0; #10;
        $display("A=%h, B=%h, Cin=%b -> Sum=%h, Cout=%b", A, B, Cin, Sum, Cout);

        // Test Case 2
        A = 32'hFFFFFFFF; B = 32'h00000001; Cin = 1'b0; #10;
        $display("A=%h, B=%h, Cin=%b -> Sum=%h, Cout=%b", A, B, Cin, Sum, Cout);

        // Test Case 3
        A = 32'h12345678; B = 32'h87654321; Cin = 1'b1; #10;
        $display("A=%h, B=%h, Cin=%b -> Sum=%h, Cout=%b", A, B, Cin, Sum, Cout);

        $finish;
    end
endmodule
