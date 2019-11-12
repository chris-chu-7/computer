module zeroReg(re1, re2, bl1, bl2);
input re1;
input re2;
inout[15:0] bl1;
inout[15:0] bl2;

assign bl1 = re1 ? 16'h0000:16'hzzzz;
assign b12 = re2 ? 16'h0000:16'hzzzz;

endmodule

