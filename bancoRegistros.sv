module bancoRegistros(input clk,rst, WE3,
							input logic  [3:0] A1,A2,A3, 
							input  logic [31:0] WD3,R15,
							output logic [31:0] RD1,RD2);
							
							
logic [31:0] regFile [0:15];

assign RD1 =  regFile[A1];
assign RD2 =  regFile[A2];
integer 	 i;

always_ff @(negedge clk) 
begin
	if(rst)begin
		for (i = 0; i < 16; i = i + 1) begin
	    regFile[i] <= 0;
	 end
	end
	else begin
		regFile[4'b1111] = R15;
		if(WE3)
			regFile[A3] = WD3;
			end
		
	
end
		
endmodule  