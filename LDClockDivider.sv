`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Bridget Benson, modified by Kevin Dixson
// Create Date: 10/01/2018 10:22:13 AM
// Description: Divides clock by MAXCOUNT * 2 but only goes high for 2 clk edges.
//////////////////////////////////////////////////////////////////////////////////


module LDClockDivider #(parameter MAXCOUNT = 1)(
    input clk, 
    output logic sclk = 0
    );
   
    logic [29:0] count = 0;    
    
    always_ff @ (posedge clk)
    begin
        count = count + 1;
        if ((sclk == 1) && (count == 1))
            sclk = 0;
        else begin
            if (count == MAXCOUNT) begin
                count = 0;
                sclk = 1;
            end
        end          
    end
    
endmodule