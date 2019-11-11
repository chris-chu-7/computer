//chris chu's d flip flop 

module fdd (d, wen, rst, q, clk);

//inputs
input d;
input wen;
input rst;
input clk;

//outputs
output q;

reg state;

assign q = state;

always @(posedge clk) begin
	state <= (rst) ? 0 : (wen) ? d : state;
end


endmodule 