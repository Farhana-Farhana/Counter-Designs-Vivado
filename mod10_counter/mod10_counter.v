`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 01:49:12
// Design Name: 
// Module Name: mod10_counter
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


module mod10_counter(
    input clk,
    input reset,
    output reg [3:0] count
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        count <= 4'b0000;
    else if(count == 4'd9)
        count <= 4'b0000;
    else
        count <= count + 1;
end

endmodule
