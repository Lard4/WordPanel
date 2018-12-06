`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kevin Dixson
// Create Date: 12/03/2018 04:53:19 PM
// Module Name: CountFromTo
// Description: n bit counter; counts on domain [0, TO)
//////////////////////////////////////////////////////////////////////////////////


module CountFromTo #(parameter WIDTH=8) (
    input clk, reset,
    input [WIDTH-1:0] TO,
    output logic [WIDTH-1:0] COUNT
    );
    
    logic t1, t2;
    
    always_comb begin
        t2 = reset | t1;
    end
    
    Counter #7 counter ( .clk(clk), .clr(t2), .up(1'b1), .ld(1'b0), .D(1'b0), .count(COUNT));
    Comparator #7 comparator ( .a(TO), .b(COUNT), .eq(t1));

endmodule
