
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		10		//时钟周期设置为10ns（100MHz）	

////////////////////////////////////////////////////////////
//接口申明
	
reg clk;
reg rst_n;
reg[3:0] i_data;
wire[3:0] o_sync_data;
wire[3:0] o_asyn_data;
wire[3:0] o_asyn_data2;

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
vlg_design uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_data(i_data),
	.o_asyn_data(o_asyn_data),
	.o_sync_data(o_sync_data),
	.o_asyn_data2(o_asyn_data2)
    );	
	
////////////////////////////////////////////////////////////
//复位和时钟产生

	//时钟和复位初始化、复位产生
initial begin
	clk <= 0;
	rst_n <= 0;
	#1000;
	rst_n <= 1;
	repeat(10) begin @(posedge clk); end
	#4;
	rst_n <= 0;
	repeat(10) begin @(posedge clk); end
	rst_n <= 1;
end
	
	//时钟产生
always #(`CLK_PERIORD/2) clk = ~clk;	

////////////////////////////////////////////////////////////
//测试激励产生

initial begin
	i_data <= 4'b1111;
	@(posedge rst_n);	//等待复位完成
	
	@(posedge clk);

	repeat(300000) begin
		@(posedge clk);
	end
	
	$stop;
end


endmodule






