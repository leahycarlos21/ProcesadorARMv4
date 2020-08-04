module sum_rest# (parameter size = 4)(input logic [size-1:0] a, b, 
											input logic ALUSelect,
											output logic [size-1:0] result,
											output logic cout);
											
logic [size-1:0]bAux;
											
always_comb begin
		case(ALUSelect)
			4'b0000 :bAux = b;
			default :bAux = ~b;
		endcase 
	end										
											
assign {cout,result} =  a +  bAux + ALUSelect;




endmodule 