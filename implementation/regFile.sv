module regFile(clk, rst, SrcReg1, SrcReg2, DstReg, WriteReg, DstData, SrcData1, SrcData2);
input clk;
input rst;
input WriteReg;

input[3:0] SrcReg1;
input[3:0] SrcReg2;
input[3:0] DstReg;
input[15:0] DstData;

inout [15:0] SrcData1;
inout[15:0] SrcData2;

wire[15:0] Bitline1;
wire[15:0] Bitline2;
wire[15:0] rd1;
wire[15:0] rd2;
wire[15:0] wd; 

rDecoder r1(.regId(SrcReg1), .Wordline(rd1));
rDecoder r2(.regId(SrcReg2), .Wordline(rd2));
writeDecoder w(.regId(DstReg), .Wordline(wd), .writeReg(WriteReg));
zeroReg z(re1(rd1[0]), re2(rd2[0]), bl1(SrcData1), bl2(SrcData2));

register reg1(.clk(clk), .rst(rst), .d(DstData), .wen(wd[1]), .ren1(rd1[1]), .ren2(rd2[1]), .bl1(SrcData1), .bl2(SrcData2));
register reg2(.clk(clk), .rst(rst), .d(DstData), .wen(wd[2]), .ren1(rd1[2]), .ren2(rd2[2]), .bl1(SrcData1), .bl2(SrcData2));
register reg3(.clk(clk), .rst(rst), .d(DstData), .wen(wd[3]), .ren1(rd1[3]), .ren2(rd2[3]), .bl1(SrcData1), .bl2(SrcData2));
register reg4(.clk(clk), .rst(rst), .d(DstData), .wen(wd[4]), .ren1(rd1[4]), .ren2(rd2[4]), .bl1(SrcData1), .bl2(SrcData2));
register reg5(.clk(clk), .rst(rst), .d(DstData), .wen(wd[5]), .ren1(rd1[5]), .ren2(rd2[5]), .bl1(SrcData1), .bl2(SrcData2));
register reg6(.clk(clk), .rst(rst), .d(DstData), .wen(wd[6]), .ren1(rd1[6]), .ren2(rd2[6]), .bl1(SrcData1), .bl2(SrcData2));
register reg7(.clk(clk), .rst(rst), .d(DstData), .wen(wd[7]), .ren1(rd1[7]), .ren2(rd2[7]), .bl1(SrcData1), .bl2(SrcData2));
register reg8(.clk(clk), .rst(rst), .d(DstData), .wen(wd[8]), .ren1(rd1[8]), .ren2(rd2[8]), .bl1(SrcData1), .bl2(SrcData2));
register reg9(.clk(clk), .rst(rst), .d(DstData), .wen(wd[9]), .ren1(rd1[9]), .ren2(rd2[9]), .bl1(SrcData1), .bl2(SrcData2));
register reg10(.clk(clk), .rst(rst), .d(DstData), .wen(wd[10]), .ren1(rd1[10]), .ren2(rd2[10]), .bl1(SrcData1), .bl2(SrcData2));
register reg11(.clk(clk), .rst(rst), .d(DstData), .wen(wd[11]), .ren1(rd1[11]), .ren2(rd2[11]), .bl1(SrcData1), .bl2(SrcData2));
register reg12(.clk(clk), .rst(rst), .d(DstData), .wen(wd[12]), .ren1(rd1[12]), .ren2(rd2[12]), .bl1(SrcData1), .bl2(SrcData2));
register reg13(.clk(clk), .rst(rst),. d(DstData), .wen(wd[13]), .ren1(rd1[13]), .ren2(rd2[13]), .bl1(SrcData1), .bl2(SrcData2));
register reg14(.clk(clk), .rst(rst), .d(DstData), .wen(wd[14]), .ren1(rd1[14]), .ren2(rd2[14]), .bl1(SrcData1), .bl2(SrcData2));
register reg15(.clk(clk), .rst(rst), .d(DstData), .wen(wd[15]), .ren1(rd1[15]), .ren2(rd2[15]), .bl1(SrcData1), .bl2(SrcData2));

endmodule 