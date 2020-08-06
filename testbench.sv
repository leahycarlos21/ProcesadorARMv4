

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
    
 

always
	#5 clk = !clk;
 
endmodule 
//vsim -L altera_mf_ver -L lpm_ver testbench
//vsim -L altera_mf_ver -L lpm_ver testbench