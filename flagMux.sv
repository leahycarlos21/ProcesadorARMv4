module flagMux(input logic [3:0]selectCase, 
											input logic	[3:0]flagValue,

											output logic [3:0] out);
		always_comb begin
		case(selectCase)
			4'b0000 :out = flagValue;
			4'b0001 :out = flagValue;
			default :out = 4'b0000;
		endcase 
	end

endmodule