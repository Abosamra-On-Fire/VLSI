module signed_shift_add_multiplier (
    input signed [31:0] multiplicand,
    input signed [31:0] multiplier,
    input rst,
    input start,
    input clk,
    output reg signed [63:0] product,
    output reg done
);
    reg signed [31:0] M;
    reg signed [31:0] Q;
    reg signed [63:0] P;
    integer i;
    reg [2:0] state; // State variable for FSM
    reg sign_product; // To hold the sign of the product

    localparam IDLE = 3'b000, LOAD = 3'b001, COMPUTE = 3'b010, DONE = 3'b011;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset the registers and state
            M <= 0;
            Q <= 0;
            P <= 0;
            product <= 0;
            done <= 0;
            state <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0; // Clear done signal
                    if (start) begin
                        // Load multiplicand and multiplier
                        M <= multiplicand;
                        Q <= multiplier;
                        P <= 0;
                        // Determine the sign of the product
                        sign_product <= (M < 0) ^ (Q < 0); // XOR to determine if signs are different

                        // Convert to positive if negative
                        if (M < 0) M <= ~M + 1; // Two's complement
                        if (Q < 0) Q <= ~Q + 1; // Two's complement

                        state <= COMPUTE; // Transition to COMPUTE state
                    end
                end

                COMPUTE: begin
                    // Perform multiplication
                    for (i = 0; i < 32; i = i + 1) begin
                        if (Q[0] == 1) begin
                            P <= P + M; // Add multiplicand to product
                        end
                        P <= P << 1; // Shift product left
                        Q <= Q >> 1; // Shift multiplier right
                    end

                    // Adjust the sign of the product if necessary
                    if (sign_product) P <= ~P + 1; // Apply two's complement if the product is negative
                    
                    product <= P; // Final product
                    state <= DONE; // Transition to DONE state
                end

                DONE: begin
                    done <= 1; // Indicate that the multiplication is done
                end
            endcase
        end
    end
endmodule