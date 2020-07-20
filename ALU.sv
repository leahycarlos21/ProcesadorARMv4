module ALU# (parameter size=16)(input logic [3:0] selectCase, 
											input [size-1:0] a,b
											,output logic [size-1:0] outALU, output logic [3:0]outFlag);
											
logic [size-1:0] andOut, orOut, xorOut, notOut, sllOut, srlOut, asrOut, resultOut;
logic coutResult, flagNegativoOut,flagZeroOut, flagOverflowOut;
logic [3:0] flagALUAux;

sum_rest#(size) srALU(a,b,selectCase,resultOut, coutResult);

and_#(size)  andALU(a,b,andOut);
or_#(size)  orALU(a,b,orOut);
xor_#(size)  xorALU(a,b,xorOut);
not_#(size)  notALU(a,notOut);

shift_left_logical#(size) sll(a,b,sllOut);
shift_right_logical#(size) srl(a,b,srlOut);
aritm_shift_right#(size) asr(a,b,asrOut);



flag_Zero#(size) flagZ(resultOut,flagZeroOut);
flag_Negativo#(size) flagN(resultOut, flagNegativoOut);
flag_Overflow#(size) flagO(a,b,resultOut,selectCase,flagOverflowOut);
//Flag Carry es el coutResult ya que es el acarreo de la suma

assign flagALUAux = {flagOverflowOut,coutResult,flagNegativoOut,flagZeroOut};

flagMux isFlagMux(selectCase,flagALUAux,outFlag);


mux_ALU#(size) mux_NALU(selectCase,
								resultOut,
								resultOut,
								andOut,
								orOut,
								xorOut,
								notOut,
								sllOut,
								srlOut,
								asrOut,
								outALU);
											
endmodule	