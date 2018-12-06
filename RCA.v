`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Nithin Singani
// Description: n bit RCA
// Found from: https://www.testbench.in/verilog_basic_examples.html
//////////////////////////////////////////////////////////////////////////////////
module full_adder(
input a,b,cin,
output reg  sum,cout);

   always @(*) begin
       sum = a^b^cin;
       cout = (a&b)+(b&cin)+(cin&a);
   end

endmodule
 
module RCA (a,b,cin,cout,sum);
    
    parameter N=7;
    
    input   [N-1 :0] a,b;
    input   cin;
    output [N-1:0]sum;
    output cout;
    
    wire [N:0]carry;
    
    assign carry[0]=cin;
    
    //generate statement without using label is verilog-2005 feature. Generate statement is verilog-2001 feature.
    genvar i;
    generate for(i=0;i<N;i=i+1) begin
    full_adder FA (.a(a[i]),.b(b[i]),.cin(carry[i]),.sum(sum[i]),.cout(carry[i+1]));
    end
    
    endgenerate
    
    assign cout = carry[N];
    
endmodule