`timescale 1ns / 1ps

module tb_multiplier;

    // Testbench signals
    reg signed [31:0] A, B;        // Inputs A and B (32-bit signed)
    wire signed [63:0] P;          // Output P (64-bit signed)

    integer success_count = 0;
    integer failure_count = 0;

    // Instantiate the multiplier
    multiplier_f #(32) uut (
        .A(A),
        .B(B),
        .P(P)
    );

    // Procedure to validate the test case
    task validate_test(input signed [31:0] a, input signed [31:0] b, input signed [63:0] expected, input integer test_case_num);
        begin
            // Apply Inputs
            A = a;
            B = b;
            #10; // Wait for signals to settle

            // Check the Result
            if (P === expected) begin
                $display("TestCase#%0d: PASS: %0d * %0d = %0d", test_case_num, a, b, P);
                success_count = success_count + 1;
            end else begin
                $display("TestCase#%0d: FAIL: %0d * %0d = %0d (Expected: %0d)", test_case_num, a, b, P, expected);
                failure_count = failure_count + 1;
            end
            #10;
        end
    endtask

    // Test cases
    initial begin
        // Multiplication of a positive and a negative number
        $display("Running Test Case 1...");
        validate_test(32'd10, -32'd5, -64'd50, 1);

        // Multiplication of two positive numbers
        $display("Running Test Case 2...");
        validate_test(32'd15, 32'd3, 64'd45, 2);

        // Multiplication of two negative numbers
        $display("Running Test Case 3...");
        validate_test(-32'd7, -32'd6, 64'd42, 3);

        // Multiplication of a negative and a positive number
        $display("Running Test Case 4...");
        validate_test(-32'd8, 32'd4, -64'd32, 4);

        // Multiplication by zero
        $display("Running Test Case 5...");
        validate_test(32'd0, 32'd12345, 64'd0, 5);

        // Multiplication by one
        $display("Running Test Case 6...");
        validate_test(32'd1, 32'd6789, 64'd6789, 6);

        // Additional random test cases
        $display("Running Test Case 7...");
        validate_test(32'd123, 32'd456, 64'd56088, 7);

        $display("Running Test Case 8...");
        validate_test(-32'd789, 32'd1011, -64'd797679, 8);

        $display("Running Test Case 9...");
        validate_test(32'd23, 32'd3, 64'd69, 9);

        $display("Running Test Case 10...");
        validate_test(32'd2323, 32'd45, 64'd104535, 10);

        $display("Running Test Case 11...");
        validate_test(32'd100, 32'd100, 64'd10000, 11);

        $display("Running Test Case 12...");
        validate_test(32'd5678, 32'd1234, 64'd7006652, 12);

        $display("Running Test Case 13...");
        validate_test(32'd23, -32'd3, -64'd69, 13);

        $display("Running Test Case 14...");
        validate_test(-32'd2323, -32'd45, 64'd104535, 14);

        $display("Running Test Case 15...");
        validate_test(32'd100, -32'd100, -64'd10000, 15);

        $display("Running Test Case 16...");
        validate_test(-32'd5678, 32'd1234, -64'd7006652, 16);

        // Large Positive * Large Positive
        $display("Running Test Case 17...");
        validate_test(32'hC350, 32'hC350, 64'h9502F900, 17);

        $display("Running Test Case 18...");
        validate_test(32'd50000, 32'd50000, 64'd2500000000, 18);

        // Large Negative * Large Negative
        $display("Running Test Case 19...");
        validate_test(-32'd50000, 32'd50000, -64'd2500000000, 19);

        // Large Positive * Large Negative
        $display("Running Test Case 20...");
        validate_test(32'd100000, -32'd50000, -64'd5000000000, 20);

        // Maximum Positive * Maximum Positive
        $display("Running Test Case 21...");
        validate_test(32'h7FFFFFFF, 32'h7FFFFFFF, 64'h3FFFFFFF00000001, 21);

        $display("Running Test Case 22...");
        validate_test(32'd2147483647, 32'd2147483647, 64'd4611686014132420609, 22);

        // Minimum Negative * Minimum Negative
        $display("Running Test Case 23...");
        validate_test(-32'sd2147483648, -32'sd2147483648, 64'sd4611686018427387904, 23);

        $display("Test completed with %0d successes and %0d failures", success_count, failure_count);
    end

endmodule