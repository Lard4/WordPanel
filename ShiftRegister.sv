`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Bridget Benson 
// Create Date: 10/26/2018 01:04:29 PM
// Description: n bit shift register 
// SEL: 0 - HOLD
//      1 - LOAD
//      2 - LEFT SHIFT
//      3 - RIGHT SHIFT
//////////////////////////////////////////////////////////////////////////////////


module ShiftRegister #(parameter n = 8) (
    input clk, CLR, scroll,
    input [n-1:0] D,
    input [1:0] SEL,
    output logic [n-1:0] Q = 1
    );
    
    always_ff @ (posedge clk)
    begin
        //if (scroll == 0) begin  // if we want to do a scroll, don't shift. that way our data will move but the active column wont.
            if (CLR)
                Q <= 0;
            else
                case (SEL)
                    1: Q <= D;
                    2: Q <= {Q[n-2:0] , 1'b0};
                    3: Q <= {1'b0, Q[n-1:1]};
                    //option zero means hold               
                 endcase    
         //end
     end
endmodule