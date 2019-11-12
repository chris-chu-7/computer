//register read decoder

module rDecoder(regId, Wordline);
input [3:0] regId;
output reg[15:0] Wordline;


always_comb begin
	case(regId)
		4'h0: Wordline = 16'h0001;
		4'h1: Wordline = 16'h0002;
		4'h2: Wordline = 16'h0004;
		4'h3: Wordline = 16'h0008;
		4'h4: Wordline = 16'h0010;
		4'h5: Wordline = 16'h0020;
		4'h6: Wordline = 16'h0040;
		4'h7: Wordline = 16'h0080;
		4'h8: Wordline = 16'h0100;
		4'h9: Wordline = 16'h0200;
		4'ha: Wordline = 16'h0400;
		4'hb: Wordline = 16'h0800;
		4'hc: Wordline = 16'h1000;
		4'hd: Wordline = 16'h2000;
		4'he: Wordline = 16'h4000;
		4'hf: Wordline = 16'h8000;
	endcase
	end
endmodule


