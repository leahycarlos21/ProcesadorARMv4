module corrimiento_Circular#(parameter N = 32) (input logic [N-1:0] a,
																 input logic [3:0] b,
																 output logic [N-1:0] z);
	always_comb begin
		case (b)
		  0 : z=a;
		  1 : z={a[0:0],a[7:1]};
		  2 : z={a[1:0],a[7:2]};
		  3 : z={a[2:0],a[7:3]};
		  4 : z={a[3:0],a[7:4]};
		  5 : z={a[4:0],a[7:5]};
		  6 : z={a[5:0],a[7:6]};
		  7 : z={a[6:0],a[7]};
		  default z = a;
		endcase
	end
	
endmodule