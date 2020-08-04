

`timescale 1 ps / 1 ps
module testbench();

  
    
 
logic clk,rst, MemWrite;
logic [31:0] WriteData, DataAdr;

general DUT (clk, rst,WriteData,DataAdr,MemWrite);
   
     
 
initial begin
clk=1;
rst=1;
#22
rst=0;
end
    

//logic 	[7:0]  address;
//logic 	  clk;
//logic	[31:0]  data;
//logic 	  wren;
//logic [31:0]  q;
//	    
// 
//MEM_DATA  memData(
//	address,
//	~clk, 
//	data,
//	wren,
//	q);
//    
// 
//initial begin
//clk=0;
//address=8'b00000001;
//data=8'h0000000f;
//wren=1'b1;
//#10
//wren=1'b0;
//#100
//address=8'b00000000;
//data=8'h00000AAA;
//wren=1'b1;
//#100
//wren=1'b0;
//address=8'b00000001;
//
//end	
//	 
always
	#5 clk = !clk;
 
endmodule 
//vsim -L altera_mf_ver -L lpm_ver testbench