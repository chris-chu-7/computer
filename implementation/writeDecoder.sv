//register read decoder

module rDecoder(regId, Wordline, writeReg);
input [3:0] regId;
output reg[15:0] Wordline;
reg[15:0] line;
input writeReg;

assign WordLine = (writeReg) ? line : 16'h0000;



always_comb begin
	case(regId)
		4'h0: line = 16'h0001;
		4'h1: line = 16'h0002;
		4'h2: line = 16'h0004;
		4'h3: line = 16'h0008;
		4'h4: line = 16'h0010;
		4'h5: line = 16'h0020;
		4'h6: line = 16'h0040;
		4'h7: line = 16'h0080;
		4'h8: line = 16'h0100;
		4'h9: line = 16'h0200;
		4'ha: line = 16'h0400;
		4'hb: line = 16'h0800;
		4'hc: line = 16'h1000;
		4'hd: line = 16'h2000;
		4'he: line = 16'h4000;
		4'hf: line = 16'h8000;
	endcase
	end
endmodule
