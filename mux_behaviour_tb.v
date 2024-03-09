`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 20:32:55
// Design Name: 
// Module Name: mux_behaviour_tb
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


module mux_behaviour_tb();
reg [3:0]i;
reg [1:0]s;
 wire y;
mux_behaviour dut(.i(i),.s(s),.y(y));
task initialize;
begin
{i,s}=0;
#10;
end
endtask

 task inputs(input [3:0]j,input [1:0]k);
begin
 i=j;
s=k;
 end endtask
 initial
 begin
initialize;
inputs(4'd5,2'd2);
#10;
inputs(4'd15,2'd3);
#10;
inputs(4'd6,2'd1);
#10; end
 initial $monitor("inputs i=%d s=%b output y=%d",i,s,y);
initial 
#100 $finish; 
endmodule
