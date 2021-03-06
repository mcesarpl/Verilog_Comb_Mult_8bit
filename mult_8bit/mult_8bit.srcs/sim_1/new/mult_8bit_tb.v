`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2019 10:42:16
// Design Name: 
// Module Name: mult_8bit_tb
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


module mult_8bit_tb;

reg [7:0] a,b;
wire [15:0] out;

mult_8bit mult_1(
.a(a),
.b(b),
.out(out)
);

initial
begin

a = 8'h00;
b = 8'h04;
#200;

a = 8'h01;
b = 8'h04;
#200;

a = 8'h02;
b = 8'h05;
#200;

a = 8'h03;
b = 8'h05;
#200;

a = 8'h04;
b = 8'h06;
#200;

a = 8'h05;
b = 8'h06;
#200;

a = 8'h06;
b = 8'h07;
#200;

a = 8'h07;
b = 8'h07;
#200;

a = 8'h08;
b = 8'h08;
#200;

a = 8'h09;
b = 8'h08;
#200;

a = 8'h0A;
b = 8'h09;
#200;

a = 8'h00;
b = 8'h09;
#200;

a = 8'h01;
b = 8'h0a;
#200;

a = 8'h02;
b = 8'h0a;
#200;

a = 8'h03;
b = 8'h0b;
#200;

a = 8'h04;
b = 8'h0b;
#200;

a = 8'h05;
b = 8'h0c;
#200;

a = 8'h06;
b = 8'h0c;
#200;

a = 8'h07;
b = 8'h0d;
#200;

a = 8'h08;
b = 8'h0d;
#200;

a = 8'h09;
b = 8'h0f;
#200;

a = 8'h0A;
b = 8'h0f;
#200;

end
endmodule