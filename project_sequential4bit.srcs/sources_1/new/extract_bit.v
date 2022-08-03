`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2022 09:25:49 PM
// Design Name: 
// Module Name: extract_bit
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


module extract_bit(
input [3:0] count,
input en,
output reg [3:0] out_extract_1,
output reg [3:0] out_extract_2
    );
always @(count)
if(!en)
begin
    out_extract_1 = 4'b0;
    out_extract_2 = 4'b0;
end
else
begin
case(count)
    4'b0000 : 
    begin
    out_extract_1 = 4'b0000;
    out_extract_2 = 4'b0000;
    end
    4'b0001 :  begin
    out_extract_1 = 4'b0000;
    out_extract_2 = 4'b0001;
    end
    4'b0010 :  begin
    out_extract_1 = 4'b0000;
    out_extract_2 = 4'b0010;
    end
    4'b0011 :  begin
    out_extract_1 = 4'b0000;
    out_extract_2 = 4'b0011;
    end
    4'b0100 :  begin
    out_extract_1 = 4'b0000;
    out_extract_2 = 4'b0100;
    end
    4'b0101 :  begin
    out_extract_1 = 4'b0000;
    out_extract_2 = 4'b0101;
    end
    4'b0110 :  begin
    out_extract_1 = 4'b0000;
    out_extract_2 = 4'b0110;
    end
    4'b0111 :  begin
    out_extract_1 = 4'b0000;
    out_extract_2 = 4'b0111;
    end
    4'b1000 :  begin
    out_extract_1 = 4'b0000;
    out_extract_2 = 4'b1000;
    end
    4'b1001 :  begin
    out_extract_1 = 4'b0000;
    out_extract_2 = 4'b1001;
    end
    4'b1010 :  begin
    out_extract_1 = 4'b0001;
    out_extract_2 = 4'b0000;
    end
    4'b1011 :  begin
    out_extract_1 = 4'b0001;
    out_extract_2 = 4'b0001;
    end
    4'b1100 :  begin
    out_extract_1 = 4'b0001;
    out_extract_2 = 4'b0010;
    end
    4'b1101 :  begin
    out_extract_1 = 4'b0001;
    out_extract_2 = 4'b0011;
    end
    4'b1110 :  begin
    out_extract_1 = 4'b0001;
    out_extract_2 = 4'b0100;
    end
    default :  begin
    out_extract_1 = 4'b0001;
    out_extract_2 = 4'b0101;
    end
endcase
end
endmodule
