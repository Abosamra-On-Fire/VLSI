`timescale 1ns / 1ps

module tb_multiplier;

    // Testbench signals
    reg signed [31:0] A, B;        // Inputs A and B (32-bit signed)
    wire signed [63:0] P;          // Output P (64-bit signed)

    integer success_count = 0;
    integer failure_count = 0;

    // Instantiate the multiplier
    multiplier #(32) uut (
        .A(A),
        .B(B),
        .P(P)
    );

    // Procedure to validate the test case
    task validate_test(input signed [63:0] expected_product, input integer test_case_num);
        begin
            #1; // Wait for signals to settle
            if (P == expected_product) begin
                $display("TestCase#%0d: success", test_case_num);
                success_count = success_count + 1;
            end else begin
                $display("TestCase#%0d: failed with input A = %d, B = %d, Output P = %d", 
                         test_case_num, A, B, P);
                failure_count = failure_count + 1;
            end
        end
    endtask

    // Test cases
    initial begin
        // Multiplication of a positive and a negative number
        $display("Running Test Case 1...");
        A = 32'd10;
        B = -32'd5;
        #10;
        validate_test(-64'd50, 1);

        // Multiplication of two positive numbers
        $display("Running Test Case 2...");
        A = 32'd15;
        B = 32'd3;
        #10;
        validate_test(64'd45, 2);

        // Multiplication of two negative numbers
        $display("Running Test Case 3...");
        A = -32'd7;
        B = -32'd6;
        #10;
        validate_test(64'd42, 3);

        // Multiplication of a negative and a positive number
        $display("Running Test Case 4...");
        A = -32'd8;
        B = 32'd4;
        #10;
        validate_test(-64'd32, 4);

        // Multiplication by zero
        $display("Running Test Case 5...");
        A = 32'd0;
        B = 32'd12345;
        #10;
        validate_test(64'd0, 5);

        // Multiplication by one
        $display("Running Test Case 6...");
        A = 32'd1;
        B = 32'd6789;
        #10;
        validate_test(64'd6789, 6);

        // Additional random test case 1
        $display("Running Test Case 7...");
        A = 32'd123;
        B = 32'd456;
        #10;
        validate_test(64'd56088, 7);

        // Additional random test case 2
        $display("Running Test Case 8...");
        A = -32'd789;
        B = 32'd1011;
        #10;
        validate_test(-64'd797079, 8);

        $display("Test completed with %0d successes and %0d failures", success_count, failure_count);
    end

endmodule