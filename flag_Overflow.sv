module flag_Overflow# (parameter size = 4)(input logic [size-1:0] a, b, result,
														input logic ALUSelect,
											output logic outFlag);
logic IsSumRest, signOpuesto2, verif3;

//Verificacion de operación de suma o resta
											
always_comb begin
		case(ALUSelect)
			4'b0000 :IsSumRest = 1;
			4'b0001 :IsSumRest = 1;
			default :IsSumRest = 0;
		endcase 
	end

// Verificacion el resultado y el operando A (sea cual sea) tienen signos opuestos

assign signOpuesto = a[size-1] ^ result[size-1];

//Verificacion A y B tienen el mismo signo, y la operación es una suma, o A y B tienen signos opuestos y la operación es una resta.
always_comb begin
		case(ALUSelect)
			4'b0000 :verif3 = a[size-1] == b[size-1];
			4'b0001 :verif3 = a[size-1] ^ b[size-1];
			default :verif3 = 0;
		endcase 
	end


assign outFlag = IsSumRest & signOpuesto & verif3;	

endmodule 