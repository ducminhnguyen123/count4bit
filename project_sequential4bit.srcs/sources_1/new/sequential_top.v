`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2022 05:02:15 PM
// Design Name: 
// Module Name: sequential_top
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


module sequential_top(
clk, en, set_num, rstn, cnt_1, cnt_2
    );
input clk;
input en;
input [3:0] set_num;
input rstn;
output wire [6:0] cnt_1;
output wire [6:0] cnt_2;
wire [3:0] out_4bit;
wire [3:0] extract_1;
wire [3:0] extract_2;
counter cnt7t(.clk(clk), .en(en), .set_num(set_num), .resetn(rstn), .count(out_4bit));
extract_bit extr(.en(en), .count(out_4bit), .out_extract_1(extract_1), .out_extract_2(extract_2));
demux4to7 l7t1(.en(en), .out_extract(extract_1), .count_out(cnt_1));
demux4to7 l7t2(.en(en), .out_extract(extract_2), .count_out(cnt_2)); 
endmodule
