`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kevin Dixson
// Create Date: 12/03/2018 06:28:46 AM
// Module Name: FinalProj_sim
// Description: 
//////////////////////////////////////////////////////////////////////////////////


module FinalProj_sim();

    logic clk, BTN;
    logic [6:0] col_data;
    logic [23:0] col_activate;
    
    always begin
        clk = 0;
        #1;
        clk = 1;
        #1;
    end
    
    AFinalProject afp ( .* );

    initial begin
        BTN = 0;
        #1000;
        BTN = 1;
        #5000;
        BTN = 0;
        #50000;
        BTN = 1;
        #5000;
        BTN = 0;
        #50000;
        BTN = 1;
        #5000;
        BTN = 0;
        #50000;    
        BTN = 1;
        #5000;
        BTN = 0;
        #50000;
    end
endmodule
