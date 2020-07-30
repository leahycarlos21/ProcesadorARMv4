module  logic_Condicion(input logic clk, rst,
                                    input logic [3:0] Cond,
                                    input logic [3:0] ALU_Flags,
                                    input logic PCS, RegW,MemW,
                                    output PCSrc, RegWrite, MemWrite);

logic [1:0] FlagWrite;
logic [3:0] Flags;
logic CondEx;

registro reg1(clk,rst,FlagWrite[1],ALU_Flags[3:2], Flags[3:2]);

registro reg0(clk,rst,FlagWrite[0],ALU_Flags[1:0], Flags[1:0]);

logic negF, zeroF, carryF, overflowF,ge;

assign {negF, zeroF, carryF, overflowF} = Flags;
assign ge = (negF==overflowF);

always_comb
    case(Cond)
        4'b0000: CondEx = zeroF;
        4'b0001: CondEx = ~zeroF;
        4'b0010: CondEx = carryF;
        4'b0011: CondEx = ~carryF;
        4'b0100: CondEx = negF;
        4'b0101: CondEx = ~negF;
        4'b0110: CondEx = overflowF;
        4'b0111: CondEx = ~overflowF;
        4'b1000: CondEx = carryF & ~zeroF;
        4'b1001: CondEx = ~(carryF & ~zeroF);
        4'b1010: CondEx = ge;
        4'b1011: CondEx = ~ge;
        4'b1100: CondEx = ~zeroF & ge;
        4'b1101: CondEx = ~(~zeroF & ge);
        4'b1110: CondEx = 1'b1;
        default: CondEx = 1'bx;
    endcase

assign FlagWrite = {2{CondEx}};
assign RegWrite = RegW & CondEx;
assign MemWrite = MemW & CondEx;
assign PCSrc = PCS & CondEx;

endmodule
