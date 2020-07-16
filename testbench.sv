module testbench();

logic clk, WE3;
logic  [3:0] A1,A2,A3; 
logic [31:0] WD3,R15;
logic [31:0] RD1,RD2;
bancoRegistros regFile(clk, WE3,A1,A2,A3,WD3,R15,RD1,RD2);


initial begin
	clk=0;
	WE3=0;
	A1=4'b0001;
	A2=4'b0011;
	R15=8'h11111111;
	#10
	WE3=1;
	A3=4'b0011;
	WD3=8'h22222222;
	#10
	WE3=0;
	A1=4'b1111;


end


always
	#50 clk = !clk;

endmodule 

 