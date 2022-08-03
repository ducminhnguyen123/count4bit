`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2022 10:17:58 AM
// Design Name: 
// Module Name: led7thanh
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


module demux4to7(
input wire [3:0] out_extract,
input wire en,
output reg [6:0] count_out
    );
always @(out_extract)
if(!en)
begin
    count_out = 7'b0000000;
end
else
begin
case(out_extract)
    4'b0000 : count_out = 7'b1111110;
    4'b0001 : count_out = 7'b0110000;
    4'b0010 : count_out = 7'b1101101;
    4'b0011 : count_out = 7'b1111001;
    4'b0100 : count_out = 7'b0110011;
    4'b0101 : count_out = 7'b1011011;
    4'b0110 : count_out = 7'b1011111;
    4'b0111 : count_out = 7'b1110000;
    4'b1000 : count_out = 7'b1111111;
    default : count_out = 7'b1111011;
endcase
end
endmodule
