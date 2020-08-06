module chipSet #(parameter size = 32)(input logic [size-1:0] DataAddr,
													input logic MemWrite,
													output logic WERA,WET,
			 			 							output logic [1:0] muxSelect);
													
													
always_comb
	case(MemWrite)     
		1'b0: begin
		
					if((DataAddr >= 'h0) && (DataAddr <= 'h7FF)) begin
						WET = 1'b0;
						WERA = 1'b0;
						muxSelect = 2'b01;//01
					end
					else if((DataAddr >= 'h800) && (DataAddr <= 'hFFF)) begin
						WET = 1'b0;
						WERA = 1'b0;
						muxSelect = 2'b10;
					end
					else if(DataAddr >= 'h1000) begin
						WET = 1'bx;
						WERA = 1'bx;
						muxSelect = 2'b00;//00
					end
					
					else begin
						WET = 1'bx;
						WERA = 1'bx;
						muxSelect = 2'bx;
					end
				
				
				end
		1'b1: begin
					if(DataAddr >= 8'h00000000 && DataAddr <= 8'h000007FF) begin
						WET = 1'b0;
						WERA = 1'b1;
						muxSelect = 2'b11;
					end
					else if(DataAddr >= 8'h00000800 && DataAddr <= 8'h00000FFF) begin
						WET = 1'b0;
						WERA = 1'b0;
						muxSelect = 2'b11;
					end
					
					else if(DataAddr >= 8'h00001000 ) begin
						WET = 1'b1;
						WERA = 1'b0;
						muxSelect = 2'b11;
					end
					
					else begin
						WET = 1'bx;
						WERA = 1'bx;
						muxSelect = 2'bx;
					end
				end
		endcase
endmodule
			