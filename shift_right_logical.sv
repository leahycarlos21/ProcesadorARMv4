module shift_right_logical#	(parameter size=4)(input logic [size-1:0] num,
									 input logic [size-1:0]nBits,
									 output logic [size-1:0] out);
assign out = num >> nBits;

endmodule 