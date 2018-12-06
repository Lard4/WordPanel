`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kevin Dixson
// Create Date: 11/29/2018 10:25:33 AM
// Module Name: ScrollFSM
// Description: 
//////////////////////////////////////////////////////////////////////////////////


module CounterFSM(
    input clk, sclk,
    output logic [6:0] start, stop
    );
    
    parameter [1:0] INIT = 2'b00, SCROLL = 2'b01, CHILL = 2'b10;
    
    logic [1:0] NS;
    logic [1:0] PS = INIT;
    
    always_ff @ (posedge clk)
    begin
        PS = NS;
    end

    always_comb
    begin
    case (PS)
        INIT: begin
            stop = 23;
            start = 0;
            if (sclk == 0) 
                NS = INIT;
            else 
                NS = SCROLL;
        end
        
        SCROLL: begin
            stop = stop + 1;
            start = stop - 23;
            if (stop > 47)
                NS = INIT;
            else
                NS = CHILL;
        end
        
        CHILL: begin
            start = stop - 23;
            if (sclk == 0)
                NS = CHILL;
            else
                NS = SCROLL;
        end
    endcase
    end
    
endmodule
