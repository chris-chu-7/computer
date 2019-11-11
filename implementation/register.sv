module register(clk, rst, d, wen, ren1, ren2, bl1, bl2);

input clk;
input rst;
input wen;
input ren1;
input ren2; 


input [15:0] d;
input [15:0] bl1;
input [15:0] bl2;

bitCell cell_00 (.clk(clk), .rst(rst), .wen(wen), .d(d[0]), .ren1(ren1), .ren2(ren2), .bl1(bl1[0]), .bl2(bl2[0]));
bitCell cell_01 (.clk(clk), .rst(rst), .wen(wen), .d(d[1]), .ren1(ren1), .ren2(ren2), .bl1(bl1[1]), .bl2(bl2[1]));
bitCell cell_02 (.clk(clk), .rst(rst), .wen(wen), .d(d[2]), .ren1(ren1), .ren2(ren2), .bl1(bl1[2]), .bl2(bl2[2]));
bitCell cell_03 (.clk(clk), .rst(rst), .wen(wen), .d(d[3]), .ren1(ren1), .ren2(ren2), .bl1(bl1[3]), .bl2(bl2[3]));
bitCell cell_04 (.clk(clk), .rst(rst), .wen(wen), .d(d[4]), .ren1(ren1), .ren2(ren2), .bl1(bl1[4]), .bl2(bl2[4]));
bitCell cell_05 (.clk(clk), .rst(rst), .wen(wen), .d(d[5]), .ren1(ren1), .ren2(ren2), .bl1(bl1[5]), .bl2(bl2[5]));
bitCell cell_06 (.clk(clk), .rst(rst), .wen(wen), .d(d[6]), .ren1(ren1), .ren2(ren2), .bl1(bl1[6]), .bl2(bl2[6]));
bitCell cell_07 (.clk(clk), .rst(rst), .wen(wen), .d(d[7]), .ren1(ren1), .ren2(ren2), .bl1(bl1[7]), .bl2(bl2[7]));
bitCell cell_08 (.clk(clk), .rst(rst), .wen(wen), .d(d[8]), .ren1(ren1), .ren2(ren2), .bl1(bl1[8]), .bl2(bl2[8]));
bitCell cell_09 (.clk(clk), .rst(rst), .wen(wen), .d(d[9]), .ren1(ren1), .ren2(ren2), .bl1(bl1[9]), .bl2(bl2[9]));
bitCell cell_10 (.clk(clk), .rst(rst), .wen(wen), .d(d[10]), .ren1(ren1), .ren2(ren2), .bl1(bl1[10]), .bl2(bl2[10]));
bitCell cell_11 (.clk(clk), .rst(rst), .wen(wen), .d(d[11]), .ren1(ren1), .ren2(ren2), .bl1(bl1[11]), .bl2(bl2[11]));
bitCell cell_12 (.clk(clk), .rst(rst), .wen(wen), .d(d[12]), .ren1(ren1), .ren2(ren2), .bl1(bl1[12]), .bl2(bl2[12]));
bitCell cell_13 (.clk(clk), .rst(rst), .wen(wen), .d(d[13]), .ren1(ren1), .ren2(ren2), .bl1(bl1[13]), .bl2(bl2[13]));
bitCell cell_14 (.clk(clk), .rst(rst), .wen(wen), .d(d[14]), .ren1(ren1), .ren2(ren2), .bl1(bl1[14]), .bl2(bl2[14]));
bitCell cell_15 (.clk(clk), .rst(rst), .wen(wen), .d(d[15]), .ren1(ren1), .ren2(ren2), .bl1(bl1[15]), .bl2(bl2[15]));





endmodule
