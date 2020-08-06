module  logic_Condicion(input logic clk, rst,
                                    input logic [3:0] Cond,
                                    input logic [3:0] ALU_Flags,
												input logic [1:0] FlagW,
                                    input logic PCS, RegW,MemW,
                                    output PCSrc, RegWrite, MemWrite);

logic [1:0] FlagWrite;
logic [3:0] Flags;
logic CondEx; 

registro #(2)reg1(clk, rst, FlagWrite[1], ALU_Flags[3:2], Flags[3:2]);

registro #(2)reg0(clk, rst, FlagWrite[0], ALU_Flags[1:0], Flags[1:0]);

condcheck cc(Cond,Flags, CondEx);

    assign FlagWrite = FlagW & {2{CondEx}};
    assign RegWrite = RegW & (CondEx|(Cond == 4'hE));
    assign MemWrite = MemW & (CondEx|(Cond == 4'hE));
    assign PCSrc = PCS & (CondEx|(Cond == 4'hE));
endmodule
