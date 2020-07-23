module unidadControl(input  logic [3:0] Cond,
							input logic [1:0] Op,
							input logic [5:0] Funct,
							input logic [3:0] Rd,
							input logic [3:0] Flags,
							output logic PCSrc, MemToReg,MemWrite,
							ALUSrc,RegWrite,
							output logic [3:0] ALUControl,
							output logic [1:0] ImmSrc,RegSrc);
logic [9:0]generalOut;
logic Branch, ALUOp;

 always_comb
		case(Op)
			2'b00:if(Funct[5])
						generalOut = 10'b0001001001;
					else
						generalOut = 10'b0000111001;
			2'b01:if(Funct[0])
						generalOut = 10'b0101011000;
					else
						generalOut = 10'b0011010100;
			2'b10: generalOut = 10'b1001100010;
			default:generalOut =10'bxxxxxxxxxx;
		endcase
		
assign{Branch, MemToReg,MemWrite,ALUSrc, ImmSrc,RegWrite,RegSrc,ALUOp} = generalOut;
	



endmodule 