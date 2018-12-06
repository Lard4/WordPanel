`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kevin Dixson
// Create Date: 11/29/2018 10:42:37 AM
// Module Name: ScrollFSM_sim
// Description: 
//////////////////////////////////////////////////////////////////////////////////


module ScrollFSM_sim( );

    logic clk;
    logic sclk;
    logic BTN = 0;
    logic clk_out;
    
    always
    begin
        clk = 0;
        #10;
        clk = 1;
        #10;
    end
    
    ScrollFSM sfsm (.clk(clk), .sclk(sclk), .BTN(BTN), .clk_out(clk_out));
    LDClockDivider #(12) cd (.clk(clk), .sclk(sclk));
    
    initial
    begin
        #500;
        BTN = 1;
        #100;
        BTN = 0;
    end
endmodule
