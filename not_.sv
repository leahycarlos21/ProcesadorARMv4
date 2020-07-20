module not_# (parameter size = 4)(input logic [size-1:0] a,
				output logic [size-1:0] c);
				
assign c = ~a;
endmodule 