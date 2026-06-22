`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 02:07:40
// Design Name: 
// Module Name: population_counter
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


module population_counter(
    input  [7:0] data,
    output reg [3:0] count
);

always @(*)
begin
    count = data[0] +
            data[1] +
            data[2] +
            data[3] +
            data[4] +
            data[5] +
            data[6] +
            data[7];
end

endmodule
