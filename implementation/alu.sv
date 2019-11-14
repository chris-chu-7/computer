 module ALU(ALU_in1, ALU_in2, flags_in, flags_out, opcode, ALU_out);


input[2:0] opcode;
input[2:0] flags_in;
output[2:0] flags_out;
output reg[15:0] ALU_out;
input[15:0] ALU_in1;
input[15:0] ALU_in2; 

typedef enum reg[2:0] {ADD, SUB, XOR, RED, SLL, SRA, ROR, PAD} opcode_t;

wire[15:0] Addsubsum, PSAsum, Redsum, Shiftout;
wire Ovfl;


addSub_16bit addSub(.sum(Addsubsum), .ovfl(Ovfl), .a(ALU_in1), .b(ALU_in2), .sub(), .cin());
PSA_16bit psa(.Sum(PSASum), .A(ALU_in1), .B(ALU_in2));
red_8bit reg8(.S(Redsum), .in1(ALU_in1), .in2(ALU_in2));
shifter shift(.shift_out(Shiftout), .shift_in(ALU_in1), .shift_val(ALU_in2[3:0]), .mode(opcode[1:0]));


always_comb begin
	case(opcode)
		ADD: ALU_out = Addsubsum;
		SUB: ALU_out = Addsubsum;
		XOR: ALU_out = ALU_in1 ^ ALU_in2;
		RED: ALU_out = Redsum;
		SLL: ALU_out = Shiftout;
		SRA: ALU_out = Shiftout;
		ROR: ALU_out = Shiftout;
		PAD: ALU_out = PSAsum;
	endcase
end

assign flags_out[2] = ~(!ALU_out); //zero flag
assign flags_out[1] = |opcode[2:1] ? flags_in[1] : Ovfl; //overflow flag
assign flags_out[0] = |opcode[2:1] ? flags_in[2] : ALU_out[15];//  




endmodule

