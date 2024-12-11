module fulladder(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire w1,w2,w3;
  xor G1(w1, X, Y);
  xor G2(S, w1, Ci);
  and G3(w2, w1, Ci);
  and G4(w3, X, Y);
  or G5(Co, w2, w3);
endmodule

module ripple_adder(X, Y, Ci, S, Co);
  input [31:0] X, Y;
  input Ci;
  output [31:0] S;
  output Co;
  wire [31:0] C;

  fulladder FA0 (.X(X[0]), .Y(Y[0]), .Ci(Ci), .S(S[0]), .Co(C[0]));

  genvar i;
  generate
      for (i = 1; i < 32; i = i + 1) begin : gen_full_adders
          fulladder FA (.X(X[i]), .Y(Y[i]), .Ci(C[i-1]), .S(S[i]), .Co(C[i]));
      end
  endgenerate
  assign Co = C[31];
//  fulladder u1(X[0], Y[0], 1'b0, S[0], w1);
//  fulladder u2(X[1], Y[1], w1, S[1], w2);
//  fulladder u3(X[2], Y[2], w2, S[2], w3);
//  fulladder u4(X[3], Y[3], w3, S[3], Co);
//  fulladder u5(X[4], Y[4], w1, S[4], w2);
//  fulladder u6(X[5], Y[5], w2, S[5], w3);
//  fulladder u7(X[6], Y[6], w3, S[6], Co);
//  fulladder u8(X[7], Y[7], w1, S[7], w2);
//  fulladder u9(X[8], Y[8], w2, S[8], w3);
//  fulladder u10(X[9], Y[9], w3, S[9], Co);
//  fulladder u11(X[10], Y[10], w1, S[10], w2);
//  fulladder u12(X[11]], Y[11]], w2, S[11], w3);
//  fulladder u13(X[12], Y[12], w3, S[12], Co);
//  fulladder u14(X[13], Y[13], w1, S[13], w2);
//  fulladder u15(X[14], Y[14], w2, S[14], w3);
//  fulladder u16(X[15], Y[15], w3, S[15], Co);
//  fulladder u17(X[16], Y[16], w1, S[16], w2);
//  fulladder u18(X[17], Y[17], w2, S[17], w3);
//  fulladder u19(X[18], Y[18], w3, S[18], Co);
//  fulladder u20(X[19], Y[19], w3, S[19], Co);
//  fulladder u21(X[20], Y[20], w1, S[20], w2);
//  fulladder u22(X[21], Y[21], w2, S[21], w3);
//  fulladder u23(X[22], Y[22], w3, S[22], Co);
//  fulladder u24(X[23], Y[23], w1, S[23], w2);
//  fulladder u25(X[24], Y[24], w2, S[24], w3);
//  fulladder u26(X[25], Y[25], w3, S[25], Co);
//  fulladder u27(X[26], Y[26], w1, S[26], w2);
//  fulladder u28(X[27], Y[27], w2, S[27], w3);
//  fulladder u29(X[28], Y[28], w3, S[28], Co);
//  fulladder u30(X[29], Y[29], w3, S[29], Co);
//  fulladder u31(X[30], Y[30], w1, S[30], w2);
//  fulladder u32(X[31], Y[31], w2, S[31], w3);
endmodule
