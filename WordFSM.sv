module WordFSM(
    input clk, BTN,
    output logic [8:0] char_0, char_1, char_2, char_3, char_4, char_5, char_6, char_7
    );
    
    parameter [1:0] KEVIN = 2'b00, HI = 2'b01, IT_WORKS = 2'b10;
    
    logic [1:0] NS = HI;
    logic [1:0] PS = KEVIN;
    
    always_ff @(posedge clk) begin
        if (BTN)
            PS = NS;
        else
            PS = PS;
    end
    
    always_comb begin
        case (PS)
            KEVIN: begin
                char_0 = "K";
                char_1 = "E";
                char_2 = "V";
                char_3 = "I";
                char_4 = "N";
                char_5 = "";
                char_6 = "";
                char_7 = "";
                
                NS = HI;
                /*
                if (!BTN)
                    NS = HI;
                else
                    NS = KEVIN;*/
            end
            
            HI: begin
                char_0 = "H";
                char_1 = "I";
                char_2 = "";
                char_3 = "T";
                char_4 = "H";
                char_5 = "E";
                char_6 = "R";
                char_7 = "E";
                
                NS = IT_WORKS;
                /*
                if (!BTN)
                    NS = IT_WORKS;
                else
                    NS = HI;*/
            end
            
            IT_WORKS: begin
                char_0 = "I";
                char_1 = "T";
                char_2 = "";
                char_3 = "W";
                char_4 = "O";
                char_5 = "R";
                char_6 = "K";
                char_7 = "S";
                
                NS = KEVIN;
                /*
                if (!BTN)
                    NS = KEVIN;
                else
                    NS = IT_WORKS;*/
            end
            
            default: begin
                char_0 = "";
                char_1 = "";
                char_2 = "";
                char_3 = "";
                char_4 = "";
                char_5 = "";
                char_6 = "";
                char_7 = "";
                
                NS = KEVIN;
            end
        endcase
    end
    
endmodule