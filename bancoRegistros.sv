module bancoRegistros(input clk,rst, WE3,
							input logic  [3:0] A1,A2,A3, 
							input  logic [31:0] WD3,R15,
							output logic [31:0] RD1,RD2);
							
							
logic [31:0] regFile [14:0];

 
integer 	 i;

always_ff @(posedge clk) 
begin
	if(rst)begin
		for (i = 0; i < 15; i = i + 1) begin
	    regFile[i] <= 0;
	 end
	end
	else begin
		//regFile[4'b1111] = R15;
		if(WE3)
			regFile[A3] <= WD3;
			end
		
	
end
	
assign RD1 =  (A1==4'b1111)? R15: regFile[A1];
assign RD2 =  (A2==4'b1111)? R15: regFile[A2];
endmodule  