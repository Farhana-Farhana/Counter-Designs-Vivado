`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 02:08:01
// Design Name: 
// Module Name: population_counter_tb
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


`timescale 1ns/1ps

module population_counter_tb;

reg  [7:0] data;
wire [3:0] count;

population_counter DUT (
    .data(data),
    .count(count)
);

initial
begin

    $monitor("Time=%0t Data=%b Count=%d",
              $time, data, count);

    data = 8'b00000000;   //0 ones
    #10;

    data = 8'b00000001;   //1 one
    #10;

    data = 8'b00000011;   //2 ones
    #10;

    data = 8'b00000111;   //3 ones
    #10;

    data = 8'b00001111;   //4 ones
    #10;

    data = 8'b00011111;   //5 ones
    #10;

    data = 8'b00111111;   //6 ones
    #10;

    data = 8'b01111111;   //7 ones
    #10;

    data = 8'b11111111;   //8 ones
    #10;

    data = 8'b10110110;   //5 ones
    #10;

    data = 8'b11001001;   //4 ones
    #10;

    $finish;

end

endmodule
