module red_8bit(S, in1, in2);

input [15:0] in1, in2; 
output[15:0] S;

wire[11:0] AB, CD, ABCD;

wire G_AB_0, G_AB_1, G_CD_0, G_CD_1, G_ABCD_0, G_ABCD_1;
wire C_AB_1, C_AB_2, C_CD_1, C_CD_2, C_ABCD_1, C_ABCD_2;
wire P_AB_1, P_CD_1, P_ABCD_1;
wire exAB, exCD;

//add a and b
CLA_4bit AB1(.A(in1[3:0]), .B(in2[3:0]), .Cin(1'b0), .S(AB[3:0]), .P(), .G(G_AB_0), .Ovfl());
CLA_4bit AB2(.A(in1[7:4]), .B(in2[7:4]), .Cin(C_AB_1), .S(AB[7:4]), .P(), .G(G_AB_1), .Ovfl());
assign exAB = C_AB_2 ^ in1[7] ^ in2[7];
assign AB[11:8] = {4{exAB}};


CLA_4bit CD1(.A(in1[11:8]), .B(in2[11:8]), .Cin(1'b0), .S(CD[3:0]), .P(), .G(G_CD_0), .Ovfl());
CLA_4bit CD2(.A(in1[15:12]), .B(in2[15:12]), .Cin(C_CD_1), .S(CD[7:4]), .P(), .G(G_CD_1), .Ovfl());
assign exCD = C_CD_2 ^ in1[15] ^ in2[15];
assign CD[11:8] = {4{exCD}};

CLA_4bit ABCD0(.A(AB[3:0]), .B(CD[3:0]), .Cin(1'b0), .S(ABCD[3:0]), .P(), .G(G_ABCD_0), .Ovfl());
CLA_4bit ABCD1(.A(AB[7:4]), .B(CD[7:4]), .Cin(C_ABCD_1), .S(AB[7:4]), .P(), .G(G_ABCD_1), .Ovfl());
CLA_4bit ABCD2(.A(AB[11:8]), .B(CD[11:8]), .Cin(C_ABCD_2), .S(ABCD[11:8]), .P(), .G(), .Ovfl());




assign C_AB_1 = G_AB_0;
assign C_AB_2 = G_AB_1 | (G_AB_0 & P_AB_1);


assign C_CD_1 = G_CD_0;
assign C_CD_2 = G_CD_1 | (G_CD_0 & P_CD_1);


assign C_ABCD_1 = G_ABCD_0;
assign C_ABCD_2 = G_ABCD_1 | (G_ABCD_0 & P_ABCD_1);


assign s = {{4{ABCD[11]}}, ABCD};


endmodule
