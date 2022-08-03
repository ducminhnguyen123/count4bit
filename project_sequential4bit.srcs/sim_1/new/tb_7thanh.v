`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2022 04:58:27 PM
// Design Name: 
// Module Name: tb_7thanh
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


module tb_7thanh(
    );
reg [4:0] in;
wire [6:0] out;

demux5to7 to7(.sig_led_in(in), .sig_led_out(out));
initial
begin
    in = 5'd3;
    #100
    in = 5'd2;
    #100
    in = 5'd9;
    #100
    in = 5'd8;
end
endmodule
