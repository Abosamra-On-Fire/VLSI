`timescale 1ns / 1ps

module carry_select_adder_tb;

    // Testbench signals
    reg [31:0] A, B;        // Inputs A and B (32-bit)
    reg Cin;                // Carry-in
    wire [31:0] Sum;        // Output Sum
    wire Cout;              // Output Carry-out

    // Instantiate the Carry select adder
    carry_select_adder #(32) uut (
        .a(A),
        .b(B),
        .cin(Cin),
        .sum(Sum),
        .cout(Cout)
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

    initial begin
        $display("Running Test Case 1... overflow of positive numbers: 2^31 - 1 plus 1");
        A = 32'h7FFFFFFF;
        B = 32'h00000001;
        Cin = 0;
        #10;  // Run the simulation for 10ns
        validate_test(32'h80000000, 1'b0);

        $display("Running Test Case 2... overflow of negative numbers: -2^31 plus -1");
        A = 32'h80000000;
        B = 32'hFFFFFFFF;
        Cin = 0;
        #10;
        validate_test(32'h7FFFFFFF, 1'b1);

        $display("Running Test Case 3... one positive and one negative: 5 plus -3");
        A = 32'h00000005;
        B = 32'hFFFFFFFD;
        Cin = 0;
        #10;
        validate_test(32'h00000002, 1'b0);

        $display("Running Test Case 4... two positives");
        A = 32'h11111111;
        B = 32'h22222222;
        Cin = 1;
        #10;
        validate_test(32'h33333334, 1'b0);

        $display("Running Test Case 5... two negatives");
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
        $display("Running Test Case 11: Random test case 3...");
        A = 32'hAAAAAAAA;
        B = 32'h55555555;
        Cin = 1;
        #10;
        validate_test(32'h00000000, 1'b1);
        


        // End simulation
        $stop;
    end

endmodule