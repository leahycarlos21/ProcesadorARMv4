module programCounter(  input clk, rst,
                        input logic[31:0] d,
                        output logic [31:0] q);
always_ff @(posedge clk)
begin
    if (rst)
        q = 8'h00000000;
    else begin
				if(d[7:0] == 8'b11111011)
					q = 8'h00000000;
				else
					q <= d; 
			end
end

endmodule  