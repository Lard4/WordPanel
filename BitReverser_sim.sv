`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: 
// Create Date: 11/29/2018 12:08:45 PM
// Module Name: BitReverser_sim
// Description: 
//////////////////////////////////////////////////////////////////////////////////


module BitReverser_sim();

    logic [3:0] in;
    logic [3:0] out;
    
    BitReverser #(4) br (.D_IN(in), .D_OUT(out));
    
    initial begin
        in = 4'b0001;
        # 5;
        in = 4'b1111;
        # 5;
        in = 4'b0000;
        #5;
        in = 4'b0101;
    end
endmodule
