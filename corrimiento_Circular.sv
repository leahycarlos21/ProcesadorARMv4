module corrimiento_Circular(input logic [31:0] a,input logic [3:0] b,output logic [31:0] out);
always_comb begin
	case (b)
		  0 	: out=a;
		  1 	: out={a[1:0],a[31:2]};
		  2 	: out={a[3:0],a[31:4]};
		  3 	: out={a[5:0],a[31:6]};
		  4 	: out={a[7:0],a[31:8]};
		  5 	: out={a[9:0],a[31:10]};
		  6 	: out={a[11:0],a[31:12]};
		  7 	: out={a[13:0],a[31:14]};
		  8 	: out={a[15:0],a[31:16]};
		  9 	: out={a[17:0],a[31:18]};
		  10 	: out={a[19:0],a[31:20]};
		  11 	: out={a[21:0],a[31:22]};
		  12 	: out={a[23:0],a[31:24]};
		  13 	: out={a[25:0],a[31:26]};
		  14 	: out={a[27:0],a[31:28]};
		  15 	: out={a[29:0],a[31:30]};
		 default out = 'bx;
	endcase
end
endmodule 