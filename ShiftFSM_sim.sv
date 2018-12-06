`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: 
// Create Date: 11/29/2018 11:21:23 AM
// Module Name: ShiftFSM_sim
// Description: 
//////////////////////////////////////////////////////////////////////////////////


module ShiftFSM_sim( );

    logic clk;
    logic [23:0] active_col;
    logic [1:0] sel;
    
    /*input clk, CLR ,
        input [n-1:0] D,
        input [1:0] SEL,
        output logic [n-1:0] Q = 0*/
    
    ShiftFSM sfsm (.clk(clk), .active_col(active_col), .SEL(sel));
    ShiftRegister #(24) sr (.clk(clk), .CLR(0), .D(24'b1), .SEL(sel), .Q(active_col));
    
    always
    begin
        clk = 0;
        #5;
        clk = 1;
        #5;
    end
    
endmodule
