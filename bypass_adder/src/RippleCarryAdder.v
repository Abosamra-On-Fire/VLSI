module fulladder(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire w1, w2, w3;
  xor G1(w1, X, Y);
  xor G2(S, w1, Ci);
  and G3(w2, w1, Ci);
  and G4(w3, X, Y);
  or G5(Co, w2, w3);
endmodule

module RippleCarryAdder #(parameter WIDTH = 32) (X, Y, Ci, S, Co);
  input [WIDTH-1:0] X, Y;
  input Ci;
  output [WIDTH-1:0] S;
  output Co;
  wire [WIDTH-1:0] C;

  fulladder FA0 (.X(X[0]), .Y(Y[0]), .Ci(Ci), .S(S[0]), .Co(C[0]));

  genvar i;
  generate
      for (i = 1; i < WIDTH; i = i + 1) begin : gen_full_adders
          fulladder FA (.X(X[i]), .Y(Y[i]), .Ci(C[i-1]), .S(S[i]), .Co(C[i]));
      end
  endgenerate
  assign Co = C[WIDTH-1];
endmodule