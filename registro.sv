module registro #(parameter size = 2)(input logic clk, rst, enable,
													input logic [size-1:0] in,
													output logic [size-1:0] out);
always_ff@(posedge clk, posedge rst)
	if(rst) 
		out<=0;
	else if(enable)
		out<=in;
endmodule  