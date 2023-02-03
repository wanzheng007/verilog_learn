
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		10		//时钟周期设置为10ns（100MHz）	

////////////////////////////////////////////////////////////
//接口申明
	
reg clk;
reg rst_n;
wire [3:0] syscnt;

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
vlg_design uut_vlg_design(
	.clk(clk),
	.rst_n(rst_n),
	.syscnt(syscnt)
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

initial begin

	@(posedge rst_n);	//等待复位完成
	
	@(posedge clk);

	repeat(20*16*2) begin
		@(posedge clk);
	end
	
	$stop;
end

initial begin
	$dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
	$dumpvars(0, testbench_top );  // 指定层次数为0，则testbench_top 模块及其下面各层次的所有信号将被记录
end

endmodule






