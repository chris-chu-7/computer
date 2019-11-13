module PSA_16bit(Sum, A, B);

input[15:0] A;
input[15:0] B; 
output [15:0] Sum;

wire ovfl0;
wire ovfl1;
wire ovfl2;
wire ovfl3;

wire[15:0] S;

CLA_4bit add1 (.A(A[3:0]), .B(B[3:0]), .Cin(1'b0), .S(S[3:0]), .P(), .G(), .Ovfl(ovfl0));
CLA_4bit add2 (.A(A[7:4]), .B(B[7:4]), .Cin(1'b0), .S(S[7:4]), .P(), .G(), .Ovfl(ovfl1));
CLA_4bit add3 (.A(A[11:8]), .B(B[11:8]), .Cin(1'b0), .S(S[11:8]), .P(), .G(), .Ovfl(ovfl2));
CLA_4bit add4 (.A(A[15:12]), .B(B[15:12]), .Cin(1'b0), .S(S[15:12]), .P(), .G(), .Ovfl(ovfl3));

assign Sum[3:0] = ovfl0 ? {~S[3], {3{S[3]}}} : S[3:0];
assign Sum[7:4] = ovfl1 ? {~S[7], {3{S[7]}}} : S[7:4];
assign Sum[11:8] = ovfl2 ? {~S[11], {3{S[11]}}} : S[11:8];
assign Sum[15:12] = ovfl3 ? {~S[15], {3{S[15]}}} : S[15:12];

endmodule 
