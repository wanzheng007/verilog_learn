
`timescale 1ns/1ps

module vlg_en #(
	parameter P_CLK_PERIORD = 20	//i_clk的时钟周期为20ns
)
(
	input i_clk,
	input i_rst_n,
	output reg o_clk_en
    );
	
localparam P_DIVCLK_MAX = 1000/P_CLK_PERIORD - 1;	//分频计数的最大值
reg[7:0] r_divcnt;

//////////////////////////////////////////////////
//对输入时钟i_clk做分频计数，产生1us的时钟使能信号
always @(posedge i_clk) begin
	if (!i_rst_n)
		r_divcnt <= 'b0;
	else if (r_divcnt < P_DIVCLK_MAX)
		r_divcnt <= r_divcnt + 1;
	else
		r_divcnt <= 'b0;
end

//////////////////////////////////////////////////
//产生时钟使能信号
always @(posedge i_clk) begin
	if (r_divcnt == P_DIVCLK_MAX)
		o_clk_en <= 1'b1;
	else
		o_clk_en <= 'b0;
end

endmodule

