module MemoriaDatos #(parameter N=256)(input clk, WE3, 
									input logic [31:0] A,WD,
									output logic [31:0] RD);

logic [31:0] mem [0:N-1];
									
parameter Data = "RAM.txt";

parameter Data1 = "ROM.txt";

	initial begin
			$readmemh(Data1,mem);
			end
			assign RD = mem[A];								
									
always_ff @(posedge clk) 
begin
	if(WE3 & !clk) 
		begin
			$writememh(Data,mem);
			//$writememh(Data,WD,A,A + 8'h00000020);
		end
	
	
end

									

endmodule 