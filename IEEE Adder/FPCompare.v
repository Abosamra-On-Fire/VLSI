module FloatingCompare (input [31:0]A,
                        input [31:0]B,
                        output reg result);

    always @(*) begin
        if (A[31] != B[31])
            result = ~A[31];  

        else begin
            if (A[30:23] != B[30:23]) begin
                result = (A[30:23] > B[30:23]) ? 1'b1 : 1'b0;  
                if (A[31]) result = ~result;  
            end
            else begin
                result = (A[22:0] > B[22:0]) ? 1'b1 : 1'b0;  
                if (A[31]) result = ~result;  
            end
        end
    end

endmodule