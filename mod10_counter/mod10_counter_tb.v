`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 01:49:32
// Design Name: 
// Module Name: mod10_counter_tb
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

module mod10_counter_tb;

reg clk;
reg reset;

wire [3:0] count;

mod10_counter uut(
    .clk(clk),
    .reset(reset),
    .count(count)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #120;

    $finish;
end

endmodule
