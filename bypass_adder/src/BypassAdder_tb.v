`timescale 1ns / 1ps

module tb_BypassAdder;

    // Testbench signals
    reg [31:0] A, B;        // Inputs A and B (32-bit)
    reg Cin;                // Carry-in
    wire [31:0] Sum;        // Output Sum
    wire Cout;              // Output Carry-out

    integer success_count = 0;
    integer failure_count = 0;

    // Instantiate the Bypass Adder (Carry-Skip Adder)
    BypassAdder_s_c #(32, 4) uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Procedure to validate the test case
    task validate_test(input [31:0] expected_sum, input expected_cout, input integer test_case_num);
        begin
            #1; // Wait for signals to settle
            if (Sum == expected_sum && Cout == expected_cout) begin
                $display("TestCase#%0d: success", test_case_num);
                success_count = success_count + 1;
            end else begin
                $display("TestCase#%0d: failed with input A = %h, B = %h, Cin = %b, Output Sum = %h, Cout = %b", 
                         test_case_num, A, B, Cin, Sum, Cout);
                failure_count = failure_count + 1;
            end
        end
    endtask

    // Test cases
    initial begin
        $display("Running Test Case 1...");
        A = 32'h00000001;
        B = 32'h00000001;
        Cin = 0;
        #10;
        validate_test(32'h00000002, 1'b0, 1);

        $display("Running Test Case 2...");
        A = 32'hFFFFFFFF;
        B = 32'h00000001;
        Cin = 0;
        #10;
        validate_test(32'h00000000, 1'b1, 2);

        $display("Running Test Case 3...");
        A = 32'h12345678;
        B = 32'h87654321;
        Cin = 1;
        #10;
        validate_test(32'h9999999a, 1'b0, 3);

        $display("Running Test Case 4...");
        A = 32'h11111111;
        B = 32'h22222222;
        Cin = 1;
        #10;
        validate_test(32'h33333334, 1'b0, 4);

        $display("Running Test Case 5...");
        A = 32'hFFFFFFFF;
        B = 32'hFFFFFFFF;
        Cin = 0;
        #10;
        validate_test(32'hFFFFFFFE, 1'b1, 5);

        $display("Running Test Case 6...");
        A = 32'hA5A5A5A5;
        B = 32'h5A5A5A5A;
        Cin = 0;
        #10;
        validate_test(32'hFFFFFFFF, 1'b0, 6);

        $display("Running Test Case 7...");
        A = 32'h00000000;
        B = 32'h00000000;
        Cin = 0;
        #10;
        validate_test(32'h00000000, 1'b0, 7);

        $display("Running Test Case 8...");
        A = 32'h00000000;
        B = 32'hFFFFFFFF;
        Cin = 0;
        #10;
        validate_test(32'hFFFFFFFF, 1'b0, 8);

        $display("Running Test Case 9...");
        A = 32'h00000000;
        B = 32'hFFFFFFFF;
        Cin = 1;
        #10;
        validate_test(32'h00000000, 1'b1, 9);

        $display("Running Test Case 10...");
        A = 32'hAAAAAAAA;
        B = 32'h55555555;
        Cin = 0;
        #10;
        validate_test(32'hFFFFFFFF, 1'b0, 10);

        $display("Running Test Case 11...");
        A = 32'hAAAAAAAA;
        B = 32'h55555555;
        Cin = 1;
        #10;
        validate_test(32'h00000000, 1'b1, 11);

        $display("Running Test Case 12...");
        A = 32'h7FFFFFFF;
        B = 32'h00000001;
        Cin = 0;
        #10;
        validate_test(32'h80000000, 1'b0, 12);

        $display("Running Test Case 13...");
        A = 32'h80000000;
        B = 32'hFFFFFFFF;
        Cin = 0;
        #10;
        validate_test(32'h7FFFFFFF, 1'b1, 13);

        // Report total number of successes and failures
        $display("Total Successes: %0d", success_count);
        $display("Total Failures: %0d", failure_count);

        // End simulation
        $stop;
    end

endmodule