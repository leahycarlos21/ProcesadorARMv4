module unidadControl(input logic cllk, rst,
							input  logic [31:12] Instr,
							input logic [1:0] sh,
							input logic [3:0] ALUFlags,
							output logic [1:0] RegSrc,
							output logic RegWrite,
							output logic [1:0] ImmSrc,
							output logic ALUSrc,
							output logic [3:0] ALUControl,
							output logic MemWrite, MemToReg,
							output logic PCSrc);
logic PCS, RegW, MemW;
logic [1:0] FlagW;
decoALU deco(Instr[27:26],Instr[25:20], Instr[15:12],FlagW,sh,
				PCS,RegW, MemW,MemToReg,ALUSrc,ImmSrc,RegSrc,ALUControl);
				
logic_Condicion logCond(clk,rst, Instr[31:28], ALUFlags,FlagW, PCS, RegW, MemW, PCSrc, RegWrite,MemWrite);				

							

endmodule 

