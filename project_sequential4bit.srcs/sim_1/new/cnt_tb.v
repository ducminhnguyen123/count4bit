`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2022 10:07:10 AM
// Design Name: 
// Module Name: cnt_tb
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


module cnt_tb(

    );
reg clk;
reg rstn;
reg en;
reg [3:0] set_num;
wire [3:0] out;

counter cnt_bit(.clk(clk), .resetn(rstn), .en(en), .set_num(set_num), .count(out));
initial
begin
    clk = 0;
end
initial
begin
    en = 0;
    #10
    en = 1;
    set_num <= 4'b1111;
    rstn = 0;
    #100
    rstn = 1;
end

always #1 clk = !clk;
endmodule
