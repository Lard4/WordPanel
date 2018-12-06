`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kevin Dixson
// Create Date: 11/29/2018 10:25:33 AM
// Module Name: ScrollFSM
// Description: 
//////////////////////////////////////////////////////////////////////////////////


module ScrollFSM(
    input clk, sclk, BTN,
    output logic clk_out,
    output logic err
    );
    
    parameter [1:0] INIT = 2'b00, RUN = 2'b01, ROLL = 2'b10;
    
    logic [1:0] NS;
    logic [1:0] PS = INIT;
    
    always_ff @ (posedge clk)
    begin
        PS = NS;
    end

    always_comb
    begin
    clk_out = clk;
    case (PS)
        INIT: begin
            clk_out = clk;
            if (BTN == 1)
                NS = RUN;
            else
                NS = INIT;
        end
        
        RUN: begin
            clk_out = clk;
            if (sclk == 1)
                NS = ROLL;
            else
                NS = RUN;
            //if (BTN == 1)
            //    NS = INIT;
        end
        
        ROLL: begin
            clk_out = 0;
            if (sclk == 0)
                NS = RUN;
            else
                NS = ROLL;
            
            //if (BTN == 1)
            //    NS = INIT;
        end
        
        default: begin
            err = 1;
        end
    endcase
    end
    
endmodule
