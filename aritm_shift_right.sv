module aritm_shift_right#	(parameter size=4)
									(input logic signed [size-1:0] num,
									 input logic signed [size-1:0]nBits,
									 output logic signed [size-1:0] out);
assign out = signed'(num) >>> nBits;

endmodule 