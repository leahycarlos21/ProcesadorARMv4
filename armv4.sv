module armv4(input logic clk, rst,
				output logic [31:0] PC,
				input logic [31:0] Instr,
				output logic MemWrite,
				output logic [31:0] ALUResult, WriteData,
				input logic [31:0] ReadData);
				
logic [3:0] ALUFlags;
logic RegWrite, ALUSrc, MemToReg, PCSrc;
logic [1:0] RegSrc, ImmSrc;
logic [3:0] ALUControl;


logic [31:0] PCNext, PCPlus4, PCPlus8, ExtImm, SrcA, SrcB,Result;
logic [3:0] RA1,RA2;

unidadControl unitControl(clk, rst,
							Instr[31:12],
							Instr[6:5],
							ALUFlags,
							RegSrc,
							RegWrite,
							ImmSrc,
							ALUSrc,
							ALUControl,
							 MemWrite,
							 MemToReg,
							PCSrc);
							
							
//PC logica
mux_ #(32) pcMux (PCSrc,PCPlus4,Result,PCNext);
programCounter program_Counter(clk, rst,PCNext,PC);
sumador#(32) AdderPlus4(PC,32'b100,PCPlus4);	
sumador#(32) AdderPlus8(PCPlus4,32'b100,PCPlus8);

				
//Memoria de registros logica
mux_ #(4) MemRegMux1 (RegSrc[0],Instr[19:16],4'b1111,RA1);
mux_ #(4) MemRegMux2 (RegSrc[1],Instr[3:0],Instr[15:12],RA2);

bancoRegistros regFile(clk,rst, RegWrite,
							RA1,RA2,Instr[15:12], 
							Result,PCPlus8,
							SrcA,WriteData);
mux_ #(32) outMemDataMux (MemToReg,ALUResult,ReadData,Result);


Sign_Extend  extend( ImmSrc,Instr[23:0],ExtImm);

//ALU logica

mux_ #(32) muxInputALU (ALUSrc,WriteData,ExtImm,SrcB);


ALU#(32) alu(ALUControl, SrcA,SrcB,ALUResult, ALUFlags);



							


	
				
endmodule 