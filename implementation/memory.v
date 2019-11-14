module memory1c (data_out, data_in, addr, enable, wr, clk, rst);

   parameter ADDR_WIDTH = 16;
   output  [15:0] data_out;
   input [15:0]   data_in;
   input [ADDR_WIDTH-1 :0]   addr;
   input          enable;
   input          wr;
   input          clk;
   input          rst;
   wire [15:0]    data_out;
   
   reg [15:0]      mem [0:2**ADDR_WIDTH-1];
   reg            loaded;
   
   assign         data_out = (enable & (~wr))? {mem[addr[ADDR_WIDTH-1 :1]]}: 0; 
   initial begin
      loaded = 0;
   end

   always @(posedge clk) begin
      if (rst) begin
         if (!loaded) begin
            $readmemh("test3.o", mem);
            loaded = 1;
         end
          
      end
      else begin
         if (enable & wr) begin
	        mem[addr[ADDR_WIDTH-1 :1]] = data_in[15:0];     
         end
      end
   end


endmodule 
