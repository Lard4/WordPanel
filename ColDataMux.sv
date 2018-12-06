`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kevin Dixson
// Create Date: 11/29/2018 09:39:07 AM
// Module Name: ColDataMux
// Description: Demultiplexer to choose from up to 2^8 inputs and send 1 output.
//              We want to choose 0x7F for first 24 inputs so we start our scroll
//              on the right edge of the panel.
//////////////////////////////////////////////////////////////////////////////////

module ColDataMux(
    input [6:0] SEL,
    output logic [6:0] D_OUT,
    input [6:0] col_0,
    input [6:0] col_1,
    input [6:0] col_2,
    input [6:0] col_3,
    input [6:0] col_4,
    input [6:0] col_5,
    input [6:0] col_6,
    input [6:0] col_7,
    input [6:0] col_8,
    input [6:0] col_9,
    input [6:0] col_10,
    input [6:0] col_11,
    input [6:0] col_12,
    input [6:0] col_13,
    input [6:0] col_14,
    input [6:0] col_15,
    input [6:0] col_16,
    input [6:0] col_17,
    input [6:0] col_18,
    input [6:0] col_19,
    input [6:0] col_20,
    input [6:0] col_21,
    input [6:0] col_22,
    input [6:0] col_23,
    input [6:0] col_24,
    input [6:0] col_25,
    input [6:0] col_26,
    input [6:0] col_27,
    input [6:0] col_28,
    input [6:0] col_29,
    input [6:0] col_30,
    input [6:0] col_31,
    input [6:0] col_32,
    input [6:0] col_33,
    input [6:0] col_34,
    input [6:0] col_35,
    input [6:0] col_36,
    input [6:0] col_37,
    input [6:0] col_38,
    input [6:0] col_39,
    input [6:0] col_40,
    input [6:0] col_41,
    input [6:0] col_42,
    input [6:0] col_43,
    input [6:0] col_44,
    input [6:0] col_45,
    input [6:0] col_46,
    input [6:0] col_47
    );
    
    always_comb
    begin
    case (SEL)
        0 : begin  // load up with 24 0x7f's so we start on the right side of array
            D_OUT = 7'h7f;
        end
    
        1 : begin
            D_OUT = 7'h7f;
        end
    
        2 : begin
            D_OUT = 7'h7f;
        end
    
        3 : begin
            D_OUT = 7'h7f;
        end
    
        4 : begin
            D_OUT = 7'h7f;
        end
    
        5 : begin
            D_OUT = 7'h7f;
        end
    
        6 : begin
            D_OUT = 7'h7f;
        end
    
        7 : begin
            D_OUT = 7'h7f;
        end
    
        8 : begin
            D_OUT = 7'h7f;
        end
    
        9 : begin
            D_OUT = 7'h7f;
        end
    
        10 : begin
            D_OUT = 7'h7f;
        end
    
        11 : begin
            D_OUT = 7'h7f;
        end
    
        12 : begin
            D_OUT = 7'h7f;
        end
    
        13 : begin
            D_OUT = 7'h7f;
        end
    
        14 : begin
            D_OUT = 7'h7f;
        end
    
        15 : begin
            D_OUT = 7'h7f;
        end
    
        16 : begin
            D_OUT = 7'h7f;
        end
    
        17 : begin
            D_OUT = 7'h7f;
        end
    
        18 : begin
            D_OUT = 7'h7f;
        end
    
        19 : begin
            D_OUT = 7'h7f;
        end
    
        20 : begin
            D_OUT = 7'h7f;
        end
    
        21 : begin
            D_OUT = 7'h7f;
        end
    
        22 : begin
            D_OUT = 7'h7f;
        end
    
        23 : begin
            D_OUT = 7'h7f;
        end
        
        24 : begin
            D_OUT = col_0;
        end
         
        25 : begin
            D_OUT = col_1;
        end
         
        26 : begin
            D_OUT = col_2;
        end
         
        27 : begin
            D_OUT = col_3;
        end
         
        28 : begin
            D_OUT = col_4;
        end
         
        29 : begin
            D_OUT = col_5;
        end
         
        30 : begin
            D_OUT = col_6;
        end
         
        31 : begin
            D_OUT = col_7;
        end
         
        32 : begin
            D_OUT = col_8;
        end
         
        33 : begin
            D_OUT = col_9;
        end
         
        34 : begin
            D_OUT = col_10;
        end
         
        35 : begin
            D_OUT = col_11;
        end
         
        36 : begin
            D_OUT = col_12;
        end
         
        37 : begin
            D_OUT = col_13;
        end
         
        38 : begin
            D_OUT = col_14;
        end
         
        39 : begin
            D_OUT = col_15;
        end
         
        40 : begin
            D_OUT = col_16;
        end
         
        41 : begin
            D_OUT = col_17;
        end
         
        42 : begin
            D_OUT = col_18;
        end
         
        43 : begin
            D_OUT = col_19;
        end
         
        44 : begin
            D_OUT = col_20;
        end
         
        45 : begin
            D_OUT = col_21;
        end
         
        46 : begin
            D_OUT = col_22;
        end
         
        47 : begin
            D_OUT = col_23;
        end
         
        48 : begin
            D_OUT = col_24;
        end
         
        49 : begin
            D_OUT = col_25;
        end
         
        50 : begin
            D_OUT = col_26;
        end
         
        51 : begin
            D_OUT = col_27;
        end
         
        52 : begin
            D_OUT = col_28;
        end
         
        53 : begin
            D_OUT = col_29;
        end
         
        54 : begin
            D_OUT = col_30;
        end
         
        55 : begin
            D_OUT = col_31;
        end
         
        56 : begin
            D_OUT = col_32;
        end
         
        57 : begin
            D_OUT = col_33;
        end
         
        58 : begin
            D_OUT = col_34;
        end
         
        59 : begin
            D_OUT = col_35;
        end
         
        60 : begin
            D_OUT = col_36;
        end
         
        61 : begin
            D_OUT = col_37;
        end
         
        62 : begin
            D_OUT = col_38;
        end
         
        63 : begin
            D_OUT = col_39;
        end
         
        64 : begin
            D_OUT = col_40;
        end
         
        65 : begin
            D_OUT = col_41;
        end
         
        66 : begin
            D_OUT = col_42;
        end
         
        67 : begin
            D_OUT = col_43;
        end
         
        68 : begin
            D_OUT = col_44;
        end
         
        69 : begin
            D_OUT = col_45;
        end
         
        70 : begin
            D_OUT = col_46;
        end
         
        71 : begin
            D_OUT = col_47;
        end
        
        default: begin
            D_OUT = 7'b1111111;
        end
    endcase
    end
endmodule
