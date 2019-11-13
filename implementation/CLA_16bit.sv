module CLA_16bit(A, B, Cin, S, P, G, Ovfl);
input [15:0] A;
input [15:0] B;
output[15:0] S;
input Cin;
output P, G, Ovfl;

wire cout;
wire c1;
wire c2;
wire c3;
wire p0;
wire p1;
wire p2;
wire p3;
wire g0;
wire g1;
wire g2;
wire g3;

CLA_4bit add_0(.A(A[3:0]), .B(B[3:0]), .C(Cin), .S(S[3:0]), .P(p0), .G(g0), .Ovfl());
CLA_4bit add_1(.A(A[7:4]), .B(B[7:4]), .C(c1), .S(S[7:4]), .P(p1), .G(g1), .Ovfl());
CLA_4bit add_2(.A(A[11:8]), .B(B[11:8]), .C(c2), .S(S[11:8]), .P(p2), .G(g2), .Ovfl());
CLA_4bit add_3(.A(A[15:12]), .B(B[15:12]), .C(c3), .S(S[15:12]), .P(p3), .G(g3), .Ovfl(Ovfl));

assign c1 = g0 | (p0 &  Cin);
assign c2 = g1 | (g0 & p1) | (Cin & p0 & p1);
assign c3 = g2 | (g1 & p2) | (g0 & p1 & p2) | (Cin & p0 & p1 & p2);
assign cout = g3 | (g2 & p3) | (g1 & p2 & p3) | (g0 & p1 & p2 & p3) | (Cin & p0 & p1 & p2 & p3);

assign P = p0 & p1 & p2 & p3;
assign G = g3 | (g2 & p3) | (g1 & p2 & p3) | (g0 & p1 & p2 & p3);





endmodule
