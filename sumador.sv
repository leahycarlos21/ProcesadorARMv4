module sumador#(parameter size=32)(input logic [size-1:0] A,B,
					output logic [size-1:0] C);
assign C = A + B;
			
endmodule 