module decoALU(		input logic [1:0] Op,
							input logic [5:0] Funct,
							input logic [3:0] Rd,
							input logic [1:0] sh,
							output logic PCS, RegWrite,MemWrite,MemToReg,
							ALUSrc,
							output logic [1:0] ImmSrc,RegSrc,
							output logic [3:0] ALUControl);
logic [9:0]generalOut;
logic Branch, ALUOp;

 always_comb begin
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
	end
		
assign{Branch, MemToReg,MemWrite,ALUSrc, ImmSrc,RegWrite,RegSrc,ALUOp} = generalOut;
	
always_comb begin
	if(ALUOp) begin
			case(Funct[4:1])
				4'b0000: ALUControl = 4'b0010;//AND
				4'b0001: ALUControl = 4'b0100;//XOR
				4'b0010: ALUControl = 4'b0001;//SUB
				4'b0100: ALUControl = 4'b0000;//ADD
				4'b1100: ALUControl = 4'b0011;//OR
				4'b1111: ALUControl = 4'b0101;//NOT
				4'b1101: if(sh==2'b11)
								ALUControl = 4'b1001;//RotCirc
							else
								ALUControl = 4'bx;
							
				4'b1010: if(Funct[0])
								ALUControl = 4'b0001;//Comparacion
							else
								ALUControl = 4'bx;
				default: ALUControl = 4'bx;	
			endcase
	end
	else
	ALUControl = 4'bx;
		

end
		


assign PCS = ((Rd==4'b1111) & RegWrite)| Branch;		

endmodule 