module testbench();

//logic clk, WE3,rst;
//logic  [3:0] A1,A2,A3; 
//logic [31:0] WD3,R15;
//logic [31:0] RD1,RD2;
//bancoRegistros regFile(clk, rst,WE3,A1,A2,A3,WD3,R15,RD1,RD2);
//
//
//initial begin
//	rst=0;
//	clk=0;
//	WE3=0;
//	A1=4'b0001;
//	A2=4'b0011;
//	R15=8'h11111111;
//	#10
//	WE3=1;
//	A3=4'b0011;
//	WD3=8'h22222222;
//	#10
//	rst=1;
//	WE3=0;
//	A1=4'b1111;
//	#10
//	WE3=1;
//	rst=0;
//	A3=4'b0011;
//	R15=8'h10101010;
//	WD3=8'h11111111;
//end

//logic clk;

//logic [31:0] A,RD;
//MemoriaIntrucciones MEM_INST(A,RD);
//
//initial begin
//clk=0;
//A =32'b00000000000000000000000000000000;
//#10
//A =32'b00000000000000000000000000000001;
//end





//logic clk, WE3;
//logic [31:0] A,WD;
//logic [31:0] RD;
//
//MemoriaDatos MEM_DATA(clk, WE3,A,WD, RD);
//initial begin
//clk=1;
//WE3=1;
//A =32'b00000000000000000000000000000000;
//WD = 8'hFFFFFFF1;
//#10
//A =32'b00000000000000000000000000100000;
//WD = 8'hFFFFFFF0;
//end


//logic clk;
//logic [1:0] ImmSrc;
//logic [23:0] A;
//logic [31:0] B;
//
//Sign_Extend  sign_Extend(ImmSrc, A, B);
//
//initial begin
//clk=0;
//ImmSrc = 2'b00;
//A=8'b11001111;
//#10
//ImmSrc = 2'b01;
//A = 12'b000000000000;
//#10
//ImmSrc = 2'b10;
//A = 24'b110011001101110011001101;
//end
// 
// 
//always
//	#50 clk = !clk;
//
//endmodule 

//logic [31:0] A;
//logic[31:0] out;
//
//sumador sum(A,A,out);
//initial begin
//A=32'b00000000000000000000000000000011;
//end

//logic  selectCase,clk; 
//logic [3:0]	value0 ,value1;
//logic [3:0] out;
//mux_ mux1 (selectCase,value0,value1 ,out);
//
//initial begin
//clk=0;
//selectCase = 1'b0;
//value0 = 4'b1111;
//value1 = 4'b0000;
//#100
//selectCase = 1'b1;
//
//
//
//end

//logic clk,rst;
//logic [31:0] addressIn;
//logic [7:0] addressOut;
//programCounter pc(clk, rst, addressIn, addressOut);
//
//initial begin
//	rst=0;
//	clk=0;
//	addressIn=32'b11111111111111111111111111111100;
//	#100
//	rst=1; 
//	#100
//	rst=0;
//	addressIn=32'b11111111111111111111111111111111;
//	#100
//	addressIn = 8'h000000fb;
//
//end


//logic clk;
//logic [3:0] Cond;
//logic [1:0] Op;
//logic [5:0] Funct;
//logic [3:0] Rd;
//logic [3:0] Flags;
//logic [1:0] sh,
//logic PCSrc, MemToReg,MemWrite,ALUSrc,RegWrite;
//logic [3:0] ALUControl;
//logic [1:0] ImmSrc,RegSrc;
//
//
//unidadControl  unidad_Control(Cond,Op,Funct, Rd,Flags, sh,
//							 PCSrc, MemToReg,MemWrite,
//							ALUSrc,RegWrite,
//							ALUControl,
//							ImmSrc,RegSrc);
//initial begin
//
//
//end
//
//
//always
//	#50 clk = !clk;

endmodule



 