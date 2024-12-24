`timescale 1ns / 1ps

module sequential_multiplier_tb;

    reg clk, rst, start;
    reg signed [31:0] multiplicand, multiplier;
    wire signed [63:0] product;
    wire done;

    // this was a failure

    // signed_shift_add_multiplier uut (
    //     .clk(clk),
    //     .rst(rst),
    //     .start(start),
    //     .multiplicand(multiplicand),
    //     .multiplier(multiplier),
    //     .product(product),
    //     .done(done)
    // );

    sequential_multiplier uut (
        .clk(clk),
        .rst(rst),
        .start(start),
        .multiplicand(multiplicand),
        .multiplier(multiplier),
        .product(product),
        .done(done)
    );

    task test_case(input signed [31:0] a, input signed [31:0] b, input signed [63:0] expected);
        begin
            // Apply Inputs
            multiplicand = a;
            multiplier = b;
            start = 1;

            // Wait for One Clock Cycle
            #10 start = 0;

            // Wait for Done Signal (Ensure multiplication is done)
            wait (done);
            
            #1;
            // Check the Result
            if (product === expected) begin
                $display("PASS: %0d * %0d = %0d", a, b, product);
            end else begin
                $display("FAIL: %0d * %0d = %0d (Expected: %0d)", a, b, product, expected);
            end
            #10;
        end
    endtask

    parameter CLOCK_PERIOD = 10;

    // Clock Generation
    always #(CLOCK_PERIOD/2) clk = ~clk;

    initial begin
        
        clk = 0;
        rst = 1;
        start = 0;
        multiplicand = 0;
        multiplier = 0;

        
        #20;
        rst = 0;
        #20;

        // Test Cases
        $display("Starting test cases...");

        // Positive * Negative
        test_case(32'd10, -32'd5, -64'd50);

        // Positive * Positive
        test_case(32'd10, 32'd5, 64'd50);

        // Negative * Negative
        test_case(-32'd10, -32'd5, 64'd50);

        // Multiplying by zero
        test_case(32'd0, 32'd123, 64'd0);

        // Multiplying by one
        test_case(32'd1, 32'd123, 64'd123);


        test_case(32'd23, 32'd3, 64'd69);

        test_case(32'd2323, 32'd45, 64'd104535);

        test_case(32'd100, 32'd100, 64'd10000);

        test_case(32'd5678, 32'd1234, 64'd7006652);

        test_case(32'd23, -32'd3, -64'd69);

        test_case(-32'd2323, -32'd45, 64'd104535);

        test_case(32'd100, -32'd100, -64'd10000);

        test_case(-32'd5678, 32'd1234, -64'd7006652);

        // Large Positive * Large Positive
        test_case(32'hC350, 32'hC350, 64'h9502F900);

        // Large Positive * Large Positive
        test_case(32'd50000, 32'd50000, 64'd2500000000);

        // Large Negative * Large Negative
        test_case(-32'd50000, 32'd50000, -64'd2500000000);


        // Large Positive * Large Negative
        test_case(32'd100000, -32'd50000, -64'd5000000000);

        // Maximum Positive * Maximum Positive
        test_case(32'h7FFFFFFF, 32'h7FFFFFFF, 64'h3FFFFFFF00000001);

        test_case(32'd2147483647, 32'd2147483647, 64'd4611686014132420609);

        // Minimum Negative * Minimum Negative
        test_case(-32'sd2147483648, -32'sd2147483648, 64'sd4611686018427387904);

        $display("All test cases completed.");
        
        // Wait and do not close the simulation
        $stop;
    end

endmodule
