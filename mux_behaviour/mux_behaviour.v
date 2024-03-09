`timescale 1ns / 1ps


module mux_behaviour(i,s,y );
 input [3:0]i;
input [1:0]s;
output reg y;
always@(i,s)
begin
case(s)
 2'd0:y=i[0];
 2'd1:y=i[1];
 2'd2:y=i[2];
2'd3:y=i[3];
default :y=1'b0;
endcase end
endmodule 
