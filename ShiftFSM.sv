`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kevin Dixson
// Create Date: 11/29/2018 11:16:40 AM
// Module Name: ShiftFSM
// Description: helps count 1, 2, 4, 8, 16, ... 2^24, 1, 2, 4, ...
//////////////////////////////////////////////////////////////////////////////////


module ShiftFSM(
    input [23:0] active_col,
    input clk, scroll, reset,
    output logic [1:0] SEL,
    output logic err
    );
    
    parameter [1:0] CHILL = 2'b00, RESET = 2'b01;
        
    logic [1:0] NS;
    logic [1:0] PS = CHILL;
    
    always_ff @ (posedge clk, posedge reset)
    begin
        if ((reset) && PS != RESET)
            PS = RESET;
        else
            PS = NS;
    end

    always_comb
    begin
        //if (scroll == 0)  // Don't change anything when we are trying to scroll.
        case (PS)
            CHILL : begin
                SEL = 2;
                if (active_col == 24'b010000000000000000000000) begin
                    NS = RESET;
                end
                else
                    NS = CHILL;
            end
            
            RESET : begin
                SEL = 1;
                NS = CHILL;
            end
            
            default : begin
                err = 1;
            end
        endcase
    end
endmodule
