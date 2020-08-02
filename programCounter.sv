module programCounter(  input clk, rst,
                        input logic[31:0] addressIn,
                        output logic [31:0] addressOut);
always_ff @(posedge clk)
begin
    if (rst)
        addressOut = 8'h00000000;
    else begin
				if(addressIn[7:0] == 8'b11111011)
					addressOut = 8'h00000000;
				else
					addressOut <= addressIn; 
			end
end

endmodule  