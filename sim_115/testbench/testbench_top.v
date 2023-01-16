
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		20		//时钟周期设置为20ns（50MHz）	

////////////////////////////////////////////////////////////
//接口申明
	
reg clk;
reg rst_n;
reg i_en;
reg[9:0] i_data;
wire o_vld;
wire[15:0] o_sin;


////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
vlg_design uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_en(i_en),
	.i_data(i_data),
	.o_vld(o_vld),
	.o_sin(o_sin)
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
	i_en <= 'b0;
	i_data <= 'b0;
	@(posedge rst_n);	//等待复位完成

	@(posedge clk);
	i_en <= 'b1;
	i_data <= 'b0;

	@(posedge clk);
	repeat(1023) begin
	  	i_data <= i_data + 1;
		@(posedge clk);
	end

	i_en <= 'b0;
	i_data <= 'b0;

	#1000;
	$stop;
end

always @(posedge clk) begin
	if (o_vld)
		$display ("%d",o_sin);
	else ;
end

endmodule






