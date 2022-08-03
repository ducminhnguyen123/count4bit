`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2022 05:13:10 PM
// Design Name: 
// Module Name: tb_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_top(

    );
reg clk;
reg rstn;
reg en;
reg [3:0] set_num;
wire [6:0] out_1;
wire [6:0] out_2;
sequential_top sq_top(.clk(clk), .rstn(rstn), .en(en), .set_num(set_num), .cnt_1(out_1), .cnt_2(out_2));
initial
begin
    clk = 0;
end
initial
begin
    rstn = 0;
    en = 0;
    #10
    en = 1;
    set_num <= 4'b1111;
    #100
    rstn = 1;
end

always #1 clk = !clk;
endmodule
