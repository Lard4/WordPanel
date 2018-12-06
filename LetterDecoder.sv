`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kevin Dixson
// Create Date: 11/13/2018 11:56:58 AM
// Module Name: CharDecoder
// Description: Decodes input to respective 7x6 matrix of 1s and 0s. Active low.
//////////////////////////////////////////////////////////////////////////////////


module CharDecoder(
    input logic [8:0] c,
    output logic [6:0] col_0,
    output logic [6:0] col_1,
    output logic [6:0] col_2,
    output logic [6:0] col_3,
    output logic [6:0] col_4,
    output logic [6:0] col_5 = 7'b1111111  /* last column in every letter is a blank line */
    );
    
    always_comb
    begin
    case (c)
        "A" : begin
            col_0 = 7'b0000001;
            col_1 = 7'b1110110;
            col_2 = 7'b1110110;
            col_3 = 7'b1110110;
            col_4 = 7'b0000001;
        end
        
        "K" : begin
            col_0 = 7'b0000000;
            col_1 = 7'b1110111;
            col_2 = 7'b1101011;
            col_3 = 7'b1011101;
            col_4 = 7'b0111110;
        end
        
        "E" : begin
            col_0 = 7'b0000000;
            col_1 = 7'b0110110;
            col_2 = 7'b0110110;
            col_3 = 7'b0110110;
            col_4 = 7'b0111110;
        end
      
        "V" : begin
            col_0 = 7'b1100000;
            col_1 = 7'b1011111;
            col_2 = 7'b0111111;
            col_3 = 7'b1011111;
            col_4 = 7'b1100000;
        end
        
        "I" : begin
            col_0 = 7'b0111110;
            col_1 = 7'b0111110;
            col_2 = 7'b0000000;
            col_3 = 7'b0111110;
            col_4 = 7'b0111110;
        end
        
        "N" : begin
            col_0 = 7'b0000000;
            col_1 = 7'b1111011;
            col_2 = 7'b1110111;
            col_3 = 7'b1101111;
            col_4 = 7'b0000000;
        end
        
        "F" : begin
            col_0 = 7'b0000000;
            col_1 = 7'b1110110;
            col_2 = 7'b1110110;
            col_3 = 7'b1111110;
            col_4 = 7'b1111110;
        end
        
        "H" : begin
            col_0 = 7'b0000000;
            col_1 = 7'b1110111;
            col_2 = 7'b1110111;
            col_3 = 7'b1110111;
            col_4 = 7'b0000000;
        end
        
        "U" : begin
            col_0 = 7'b1000000;
            col_1 = 7'b0111111;
            col_2 = 7'b0111111;
            col_3 = 7'b0111111;
            col_4 = 7'b1000000;
        end
        
        "T" : begin
            col_0 = 7'b1111110;
            col_1 = 7'b1111110;
            col_2 = 7'b0000000;
            col_3 = 7'b1111110;
            col_4 = 7'b1111110;
        end

        "R" : begin
            col_0 = 7'b0000000;
            col_1 = 7'b1100110;
            col_2 = 7'b1010110;
            col_3 = 7'b0110110;
            col_4 = 7'b0111001;
        end

        "W" : begin
            col_0 = 7'b1000000;
            col_1 = 7'b0111111;
            col_2 = 7'b1011111;
            col_3 = 7'b0111111;
            col_4 = 7'b1000000;
        end
        
        "C" : begin
            col_0 = 7'b1000001;
            col_1 = 7'b0111110;
            col_2 = 7'b0111110;
            col_3 = 7'b0111110;
            col_4 = 7'b0111110;
        end
        
        "Y" : begin
            col_0 = 7'b1111110;
            col_1 = 7'b1111101;
            col_2 = 7'b0000011;
            col_3 = 7'b1111101;
            col_4 = 7'b1111110;
        end
        
        "O" : begin
            col_0 = 7'b1000001;
            col_1 = 7'b0111110;
            col_2 = 7'b0111110;
            col_3 = 7'b0111110;
            col_4 = 7'b1000001;
        end
             
        "P" : begin
            col_0 = 7'b0000000;
            col_1 = 7'b1110110;
            col_2 = 7'b1110110;
            col_3 = 7'b1110110;
            col_4 = 7'b1111001;
        end
        
        "S" : begin
            col_0 = 7'b0111001;
            col_1 = 7'b0110110;
            col_2 = 7'b0110110;
            col_3 = 7'b0110110;
            col_4 = 7'b1001110;
        end
        
        default : begin
            col_0 = 7'b1111111;
            col_1 = 7'b1111111;
            col_2 = 7'b1111111;
            col_3 = 7'b1111111;
            col_4 = 7'b1111111;
        end
    endcase
    end
    
endmodule
