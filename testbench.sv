

`timescale 1 ps / 1 ps
module testbench();

     
     
 
logic clk,rst, MemWrite;
logic [31:0] WriteData, DataAdr;

general DUT (clk, rst,WriteData,DataAdr,MemWrite);
   
int fd_w;      
 
initial begin
clk=1;
rst=1; 
 
#22
rst=0;


//fd_w = $fopen("./msg.txt","w");
//$fdisplay(fd_w,"%s","Codigo Decodificado:");
//$fclose(fd_w);  

end

   
 

always begin
	#5 clk = !clk;
	
//	if(MemWrite && !clk)begin
//	   fd_w = $fopen("./msg.txt","a");
//		$fdisplay(fd_w,"%s",WriteData[7:0]);
//		$fclose(fd_w);
//		end


	end
	
		

 
endmodule 





//vsim -L altera_mf_ver -L lpm_ver testbench
