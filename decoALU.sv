module decoALU(		input logic [1:0] Op,
							input logic [5:0] Funct,
							input logic [3:0] Rd,
							output logic [1:0] FlagW,
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
						generalOut = 10'b0000101001;
					else
						generalOut = 10'b0000001001;
			2'b01:if(Funct[0])
						generalOut = 10'b0001111000;
					else
						generalOut = 10'b1001110100;
			2'b10: generalOut = 10'b0110100010;
			default:generalOut =10'bxxxxxxxxxx;
		endcase
	end
		
assign{ RegSrc,ImmSrc,ALUSrc,MemToReg, RegWrite,MemWrite,Branch,ALUOp} = generalOut;
	
always_comb begin
	if(ALUOp) begin
			case(Funct[4:1])
				4'b0000: ALUControl = 4'b0110;//AND
				4'b0001: ALUControl = 4'b0100;//XOR
				4'b0010: ALUControl = 4'b0001;//SUB
				4'b0100: ALUControl = 4'b0000;//ADD
				4'b1100: ALUControl = 4'b0011;//OR
				4'b1111: ALUControl = 4'b0101;//NOT
				4'b1101: if(sh=='b11)
								ALUControl = 4'b0110;//RotCirc
							else
								ALUControl = 4'bx;
							
				4'b1010: if(Funct[0])
								ALUControl = 4'b0001;//Comparacion
							else
								ALUControl = 4'bx;
				default: ALUControl = 4'bx;	
			endcase
			
		FlagW[1] = Funct[0];
		FlagW[0] = Funct[0] & (ALUControl == 4'b0000 | ALUControl==4'b0001);
	end
	else begin
	ALUControl = 4'b0000;
	FlagW = 4'b0000;
	end
		
end
		


assign PCS = ((Rd=='b1111) & RegWrite)| Branch;		

endmodule 