module general(input logic clk, rst,
					output logic[31:0] WriteData,DataAdr,
					output logic MemWrite);
logic [31:0] PC, Instr,ReadData;

armv4 arm(clk, rst, PC, Instr, MemWrite,DataAdr, WriteData,ReadData);

MEM_INST memInstr(PC[7:0],clk,Instr);

MEM_DATA memData(DataAdr[7:0],~clk,WriteData,MemWrite,ReadData);

endmodule 