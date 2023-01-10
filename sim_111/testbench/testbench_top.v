
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		10		//时钟周期设置为10ns（100MHz）	

////////////////////////////////////////////////////////////
//接口申明
	
reg clk;
reg rst_n;
reg i_pulse;
reg i_en;
wire o_vld;
wire[15:0] o_pulse_cnt;

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
vlg_design uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_pulse(i_pulse),
	.i_en(i_en),
	.o_vld(o_vld),
	.o_pulse_cnt(o_pulse_cnt)
    );	
	
////////////////////////////////////////////////////////////
//复位和时钟产生

	//时钟和复位初始化、复位产生
initial begin
	clk <= 0;
	rst_n <= 0;
	#1000;
	rst_n <= 1;
end
	
	//时钟产生
always #(`CLK_PERIORD/2) clk = ~clk;	

////////////////////////////////////////////////////////////
//测试激励产生
integer i;

initial begin
	i_pulse <= 1'b0;
	i_en <= 1'b0;
	@(posedge rst_n);	//等待复位完成
	
	@(posedge clk);

	repeat(10) begin @(posedge clk); end
	#4;

	i_en <= 1'b1;
	for (i = 0;i < 50;i = i + 1) begin
		#1000;
		i_pulse <= 1'b1;
		#1000;
		i_pulse <= 1'b0;
	end
	i_en <= 1'b0;
	#10_000;

	i_en <= 1'b1;
	for (i = 0;i < 69;i = i + 1) begin
		#5000;
		i_pulse <= 1'b1;
		#5000;
		i_pulse <= 1'b0;
	end
	i_en <= 1'b0;
	#10_000;

	i_en <= 1'b0;
	for (i = 0;i < 15;i = i + 1) begin
		#500;
		i_pulse <= 1'b1;
		#300;
		i_pulse <= 1'b0;
	end
	i_en <= 1'b0;
	#10_000;

	repeat(1000) begin @(posedge clk); end
	
	$stop;
end


endmodule






