module bitCell(clk, rst, wen, d, ren1, ren2, bl1, bl2);
input clk;
input rst;
input wen;
input d;
input ren1;
input ren2;

inout bl1;
inout bl2;

wire q;

dff flop(.d(d), .wen(wen), .rst(rst), .q(q), .clk(clk));

assign bl1 = ren1 ? q : 1'bz;
assign bl2 = ren2 ? q : 1'bz;

endmodule

