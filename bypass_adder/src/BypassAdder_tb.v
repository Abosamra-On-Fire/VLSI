`timescale 1ns / 1ps

module tb_BypassAdder;

    // Testbench signals
    reg [31:0] A, B;        // Inputs A and B (32-bit)
    reg Cin;                // Carry-in
    wire [31:0] Sum;        // Output Sum
    wire Cout;              // Output Carry-out

    // Instantiate the Bypass Adder (Carry-Skip Adder)
    BypassAdder #(32, 4) uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Procedure to validate the test case
    task validate_test(input [31:0] expected_sum, input expected_cout);
        begin
            #1; // Wait for signals to settle
            if (Sum == expected_sum && Cout == expected_cout) begin
                $display("Test Passed: Sum = %h, Cout = %b", Sum, Cout);
            end else begin
                $display("Test Failed: Expected Sum = %h, Cout = %b, but got Sum = %h, Cout = %b", 
                         expected_sum, expected_cout, Sum, Cout);
            end
        end
    endtask

    // Test Case 1
    initial begin
        $display("Running Test Case 1...");
        A = 32'h00000001;
        B = 32'h00000001;
        Cin = 0;
        #10;  // Run the simulation for 10ns
        validate_test(32'h00000002, 1'b0);

        // Test Case 2
        $display("Running Test Case 2...");
        A = 32'hFFFFFFFF;
        B = 32'h00000001;
        Cin = 0;
        #10;
        validate_test(32'h00000000, 1'b1);

        // Test Case 3
        $display("Running Test Case 3...");
        A = 32'h12345678;
        B = 32'h87654321;
        Cin = 1;
        #10;
        validate_test(32'h9999999a, 1'b0);

        // Test Case 4: Test with different carry-out behavior
        $display("Running Test Case 4...");
        A = 32'h11111111;
        B = 32'h22222222;
        Cin = 1;
        #10;
        validate_test(32'h33333334, 1'b0);

        // Test Case 5: Test for maximum values
        $display("Running Test Case 5...");
        A = 32'hFFFFFFFF;
        B = 32'hFFFFFFFF;
        Cin = 0;
        #10;
        validate_test(32'hFFFFFFFE, 1'b1);

        // Test Case 6: Random Inputs
        $display("Running Test Case 6...");
        A = 32'hA5A5A5A5;
        B = 32'h5A5A5A5A;
        Cin = 0;
        #10;
        validate_test(32'hFFFFFFFF, 1'b0);
          $display("Running Test Case 7...");
        A = 32'h00000000;
        B = 32'h00000000;
        Cin = 0;
        #10;
        validate_test(32'h00000000, 1'b0);

        // Additional Test Case 8: One Input Zero, One Input Max
        $display("Running Test Case 8...");
        A = 32'h00000000;
        B = 32'hFFFFFFFF;
        Cin = 0;
        #10;
        validate_test(32'hFFFFFFFF, 1'b0);

        // Additional Test Case 9: One Input Zero, One Input Max with Carry-in
        $display("Running Test Case 9...");
        A = 32'h00000000;
        B = 32'hFFFFFFFF;
        Cin = 1;
        #10;
        validate_test(32'h00000000, 1'b1);

        // Additional Test Case 10: Alternating Bits
        $display("Running Test Case 10...");
        A = 32'hAAAAAAAA;
        B = 32'h55555555;
        Cin = 0;
        #10;
        validate_test(32'hFFFFFFFF, 1'b0);

        // Additional Test Case 11: Alternating Bits with Carry-in
        $display("Running Test Case 11...");
        A = 32'hAAAAAAAA;
        B = 32'h55555555;
        Cin = 1;
        #10;
        validate_test(32'h00000000, 1'b1);


        // End simulation
        $stop;
    end

endmodule
