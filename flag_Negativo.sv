module flag_Negativo# (parameter size = 4)(input logic [size-1:0] result,
											output logic outFlag);
											
assign outFlag = result[size-1];
endmodule