module rom (input logic [7:0] a,
                output logic [7:0] rd);

    logic [7:0] ROM[255:0];

    initial 
        $readmemh("C:/arm/xor.txt", ROM);
        assign rd = ROM[a[7:0]];

endmodule 