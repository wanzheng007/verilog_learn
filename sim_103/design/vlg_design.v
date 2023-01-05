
`timescale 1ns/1ps

module vlg_design(
	input clk,   //100MHz
	input rst_n,
	output reg[3:0] syscnt
    );

localparam DIVCNT_MAX = 5'd19;
reg [4:0] divcnt;
reg clk_en;

///////////////////////////////////////////////
//对输入时钟clk 100MHz做20分频的计数
always @(posedge clk) begin
	if (!rst_n)
		divcnt <= 'b0;
	else if (divcnt < DIVCNT_MAX)
		divcnt <= divcnt + 1'b1;
	else
		divcnt <= 'b0;
end

///////////////////////////////////////////////
//产生时钟使能信号，这个时钟使能信号每隔20个时钟周期有一个高脉冲
always @(posedge clk) begin
	if (!rst_n)
		clk_en <= 'b0;
	else if (divcnt == DIVCNT_MAX)
		clk_en <= 1'b1;
	else
		clk_en <= 1'b0;
end

///////////////////////////////////////////////
//使用时钟使能信号进行计数
always @(posedge clk) begin
	if (!rst_n)
		syscnt <= 'b0;
	else if (clk_en == 1'b1)
		syscnt <= syscnt + 1'b1;
	else
		syscnt <= syscnt;
end

endmodule

