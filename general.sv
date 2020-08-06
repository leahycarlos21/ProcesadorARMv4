module general(input logic clk, rst,
					output logic[31:0] WriteData,DataAdr,
					output logic MemWrite);
//logic [31:0] PC, Instr,ReadData;
//
//armv4 arm(clk, rst, PC, Instr, MemWrite,DataAdr, WriteData,ReadData);
//
//MEM_INST memInstr(PC[7:0],clk,Instr);
//  
//MEM_DATA memData(DataAdr[7:0],~clk,WriteData,MemWrite,ReadData);
 
logic [31:0] PC, Instr,ReadData, adressROM,adressRAM;
logic carryROM,carryRAM;
logic WERA,WET;
logic [1:0]muxSelect;
logic [31:0]dataRAM,dataTimer;
logic [7:0]dataROM;



restador#(32)restaROM( DataAdr, 'h800, adressROM);
restador#(32)restaRAM( DataAdr, 'h0, adressRAM);



MEM_INST memInstr(PC[7:0],clk,Instr);

chipSet #(32) chipset( DataAdr, MemWrite, WERA,WET,muxSelect);


rom ROM_SMS(adressROM[7:0], dataROM);


MEM_DATA RAM(adressRAM[7:0],~clk,WriteData,WERA,dataRAM); 



registro #(32) timer(clk,rst,WET,WriteData,dataTimer);

mux3_1# (32) mux3_1(muxSelect,dataTimer,dataRAM,{24'b0,dataROM},ReadData);

armv4 arm(clk, rst, PC, Instr, MemWrite,DataAdr, WriteData,ReadData);


endmodule 