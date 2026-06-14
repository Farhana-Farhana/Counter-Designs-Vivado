`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 01:32:05
// Design Name: 
// Module Name: up_down_counter_tb
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


`timescale 1ns / 1ps

module up_down_counter_tb;

reg clk;
reg reset;
reg up_down;

wire [3:0] count;

up_down_counter uut(
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .count(count)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    up_down = 1;

    #10;
    reset = 0;

    // Count Up
    #80;

    // Count Down
    up_down = 0;

    #80;

    $finish;
end

endmodule
