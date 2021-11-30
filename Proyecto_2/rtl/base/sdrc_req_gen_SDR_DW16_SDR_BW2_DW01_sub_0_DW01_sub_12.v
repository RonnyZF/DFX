module sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_sub_0_DW01_sub_12 ( A, B, CI, DIFF, 
        CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [6:1] carry;

  FA1A U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1A U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1A U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1A U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1A U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  EO3P U2_6 ( .A(A[6]), .B(n3), .C(carry[6]), .Z(DIFF[6]) );
  IVP U1 ( .A(n9), .Z(n2) );
  IVP U2 ( .A(B[0]), .Z(n9) );
  IVP U3 ( .A(B[6]), .Z(n3) );
  EN U4 ( .A(A[0]), .B(n9), .Z(DIFF[0]) );
  IVP U5 ( .A(B[1]), .Z(n8) );
  ND2 U6 ( .A(n1), .B(n2), .Z(carry[1]) );
  IVP U7 ( .A(A[0]), .Z(n1) );
  IVP U8 ( .A(B[2]), .Z(n7) );
  IVP U9 ( .A(B[5]), .Z(n4) );
  IVP U10 ( .A(B[3]), .Z(n6) );
  IVP U11 ( .A(B[4]), .Z(n5) );
endmodule
