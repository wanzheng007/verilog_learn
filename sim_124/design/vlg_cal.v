
`timescale 1ns/1ps

module vlg_cal (
	input i_clk,
	input i_rst_n,
	input[15:0] i_t_us,
	output[13:0] o_s_mm
    );
	
/*
todo s = 0.173*t
* s*4096 = 0.173*t*4096 = 709*t
* s = 709*t / 4096 = 709*t >>12
* 乘法器进行运算
* 累加 709 = 512 + 128 + 64  + 4   + 1 
* 	   	   = 2^9 + 2^7 + 2^6 + 2^2 + 2^0
*/

wire[25:0] w_mult_result;

//////////////////////////////////////////////////
//乘法器IP例化
mult_gen_0 uut_mult_gen_0 (
  .CLK(i_clk),  // input wire CLK
  .A(10'd709),      // input wire [9 : 0] A
  .B(i_t_us),      // input wire [15 : 0] B
  .P(w_mult_result)      // output wire [25 : 0] P
);

assign o_s_mm = w_mult_result[25:12];

endmodule

