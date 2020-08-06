module mux_# (parameter size=4)(input logic  selectCase, 
											input logic [size-1:0] 
											value0 ,
											value1 ,
											output logic [size-1:0] out);
always_comb 
	begin
		case(selectCase)
			1'b0 :out = value0;
			1'b1 :out = value1;
			default :out = value0;
		endcase 
	end

endmodule 