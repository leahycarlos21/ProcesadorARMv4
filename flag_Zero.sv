module flag_Zero# (parameter size = 4)(input logic [size-1:0]result,
											output logic outFlag);
											
assign outFlag = (result == 0);
endmodule