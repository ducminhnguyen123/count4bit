`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2022 09:44:49 AM
// Design Name: 
// Module Name: 4bit_count
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


module counter(
input wire clk,
input wire en,
input wire [3:0] set_num,
input wire resetn,
output reg [3:0] count
    );
always @(posedge clk or negedge resetn)
begin
    if(!resetn)
    begin
        count <= 0;
    end
    else
    begin   
        if(!en)
        begin
            count <= 4'b0;
        end
        else
        begin
            if(count == set_num)
            begin
                count <= 4'b0;
            end
            else
            begin
                count <= count + 1;
            end
        end
    end
end
endmodule
