`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kevin Dixson
// Create Date: 12/02/2018 10:26:46 PM
// Module Name: AFinalProject
// Description: Final project for CPE 133 CPSLO
//////////////////////////////////////////////////////////////////////////////////


module AFinalProject(
    input clk, BTN,
    output [6:0] col_data,
    output [23:0] col_activate
    );
    
    logic [1:0] t1;
    logic [6:0] t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18,
                t19, t20, t21, t22, t23, t24, t25, t26, t27, t28, t29, t30, t31, t32, t33,
                t34, t35, t36, t37, t38, t39, t40, t41, t42, t43, t44, t45, t46, t47, t48, t49, t50,
                t99, t100;
    logic [6:0] char_col;
    logic [23:0] t0;
    logic do_scroll_clk,
          f_clk,
          t2,
          DB_BTN;
          
    logic [8:0] reg_0,
                reg_1,
                reg_2,
                reg_3,
                reg_4,
                reg_5,
                reg_6,
                reg_7;
              
    ClockDivider #1000 clkdiv (.clk(clk), .sclk(f_clk));
    Debouncer dbos ( .CLK(f_clk), .BTN(BTN), .DB_BTN(DB_BTN));
    LDClockDivider #24000 ldcd ( .clk(f_clk), .sclk(do_scroll_clk));
    ShiftFSM shiftfsm ( .clk(f_clk), .scroll(do_scroll_clk), .active_col(col_activate), .SEL(t1));
    ShiftRegister #24 sr ( .clk(f_clk), .scroll(do_scroll_clk), .D(24'd1), .SEL(t1), .Q(col_activate));
    CountFromTo #7 cft1 ( .clk(f_clk), .TO(7'd24), .COUNT(t99));
    CountFromTo #7 cft2 ( .clk(do_scroll_clk), .TO(7'd73), .COUNT(t100));
    RCA #7 rca ( .a(t99), .b(t100), .cin(0), .sum(char_col));
    
    WordFSM wordfsm ( .clk(f_clk), .BTN(DB_BTN),
                      .char_0(reg_0), .char_1(reg_1), .char_2(reg_2), .char_3(reg_3), 
                      .char_4(reg_4), .char_5(reg_5), .char_6(reg_6), .char_7(reg_7));
    CharDecoder cd0 ( .c(reg_0), .col_0(t3), .col_1(t4), .col_2(t5), .col_3(t6), .col_4(t7), .col_5(t8));
    CharDecoder cd1 ( .c(reg_1), .col_0(t9), .col_1(t10), .col_2(t11), .col_3(t12), .col_4(t13), .col_5(t14));
    CharDecoder cd2 ( .c(reg_2), .col_0(t15), .col_1(t16), .col_2(t17), .col_3(t18), .col_4(t19), .col_5(t20));
    CharDecoder cd3 ( .c(reg_3), .col_0(t21), .col_1(t22), .col_2(t23), .col_3(t24), .col_4(t25), .col_5(t26));
    CharDecoder cd4 ( .c(reg_4), .col_0(t27), .col_1(t28), .col_2(t29), .col_3(t30), .col_4(t31), .col_5(t32));
    CharDecoder cd5 ( .c(reg_5), .col_0(t33), .col_1(t34), .col_2(t35), .col_3(t36), .col_4(t37), .col_5(t38));
    CharDecoder cd6 ( .c(reg_6), .col_0(t39), .col_1(t40), .col_2(t41), .col_3(t42), .col_4(t43), .col_5(t44));
    CharDecoder cd7 ( .c(reg_7), .col_0(t45), .col_1(t46), .col_2(t47), .col_3(t48), .col_4(t49), .col_5(t50));
    ColDataMux cdm ( .col_0(t3), .col_1(t4), .col_2(t5), .col_3(t6), .col_4(t7), .col_5(t8), .col_6(t9), .col_7(t10),
                     .col_8(t11), .col_9(t12), .col_10(t13), .col_11(t14), .col_12(t15), .col_13(t16), .col_14(t17), .col_15(t18),
                     .col_16(t19), .col_17(t20), .col_18(t21), .col_19(t22), .col_20(t23), .col_21(t24), .col_22(t25), .col_23(t26),
                     .col_24(t27), .col_25(t28), .col_26(t29), .col_27(t30), .col_28(t31), .col_29(t32), .col_30(t33), .col_31(t34),
                     .col_32(t35), .col_33(t36), .col_34(t37), .col_35(t38), .col_36(t39), .col_37(t40), .col_38(t41), .col_39(t42),
                     .col_40(t43), .col_41(t44), .col_42(t45), .col_43(t46), .col_44(t47), .col_45(t48), .col_46(t49), .col_47(t50),
                     .D_OUT(col_data),
                     .SEL(char_col));
                     
endmodule
