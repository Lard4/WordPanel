`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Bridget Benson 
// Create Date: 10/01/2018 10:22:13 AM
// Description: Generic Clock Divider.  Divides the input clock by MAXCOUNT*2
//////////////////////////////////////////////////////////////////////////////////


module ClockDivider #(parameter MAXCOUNT = 1)(
    input clk, 
    output logic sclk = 0
    );     
   
    logic [29:0] count = 0;    
    
    always_ff @ (posedge clk)
    begin
        count = count + 1;
        if (count == MAXCOUNT)
        begin
            count = 0;
            sclk = ~sclk;
        end
             
    end
    
endmodule