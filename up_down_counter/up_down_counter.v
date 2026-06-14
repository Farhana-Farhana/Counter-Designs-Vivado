`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 01:31:42
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
    input clk,
    input reset,
    input up_down,
    output reg [3:0] count
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        count <= 4'b0000;
    else if(up_down)
        count <= count + 1;
    else
        count <= count - 1;
end

endmodule
