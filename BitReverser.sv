`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kevin Dixson
// Create Date: 11/29/2018 12:00:54 PM
// Module Name: BitReverser 
// Description: flip a bus
//////////////////////////////////////////////////////////////////////////////////


module BitReverser #(parameter WIDTH = 8) (
    input [WIDTH-1:0] D_IN,
    output logic [WIDTH-1:0] D_OUT
    );
    
    always_comb begin
        for (int i = 0; i < WIDTH; i++) begin
            D_OUT[(WIDTH-1) - i] <= D_IN[i];
        end
    end
    
endmodule
