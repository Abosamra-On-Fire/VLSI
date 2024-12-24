`timescale 1ns / 1ps

module decimal_to_ieee754_tb();

    reg signed [31:0] original;
    wire signed [31:0] converted;

    decimal_to_ieee754 uut (
        .decimal(original),
        .ieee754(converted)
    );

    task test_case(input [31:0] a, input [31:0] expected);
        begin
            // Apply Input to converter
            original = a;
            
            #10; // wait for output to be ready

            // Check the Result
            if (converted === expected) begin
                $display("PASS: %0d ==> %0h", a, converted);
            end else begin
                $display("FAIL: %0d ==> %0h (Expected: %0h)", a, converted, expected);
            end

            #10;
        end
    endtask

    initial begin
        // Test Cases
        $display("Starting test cases...");
        
        // Zero
        test_case(32'h00000000, 32'h00000000);  

        // Small positive numbers
        test_case(32'h00000001, 32'h3f800000);  // 1
        test_case(32'h00000002, 32'h40000000);  // 2
        test_case(32'h00000003, 32'h40400000);  // 3
        test_case(32'h00000004, 32'h40800000);  // 4
        
        // Small negative numbers
        test_case(32'hFFFFFFFF, 32'hBF800000);  // -1
        test_case(32'hFFFFFFFE, 32'hC0000000);  // -2
        test_case(32'hFFFFFFFD, 32'hC0400000);  // -3
        
        // Large positive number
        test_case(32'd1234, 32'h449a4000);      // 1234
        test_case(32'd100000, 32'h47c35000);    // 100000
        
        // Random values
        test_case(32'd10, 32'h41200000);        // 10
        test_case(-32'd10, 32'hC1200000);       // -10


        $display("All test cases completed.");
        
        // Wait and do not close the simulation
        $stop;
    end

endmodule
