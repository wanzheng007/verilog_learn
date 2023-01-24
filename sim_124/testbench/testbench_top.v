
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		20		//时钟周期设置为20ns（50MHz）	

////////////////////////////////////////////////////////////
//接口申明
	
reg clk;
reg rst_n;
reg i_echo;
wire o_trig;
wire[13:0] o_s_mm;

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
vlg_design uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_echo(i_echo),
	.o_trig(o_trig),
	.o_s_mm(o_s_mm)
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
	i_echo = 0;
	@(posedge rst_n);	//等待复位完成
	
	@(posedge clk);

	#400_000_000;
	
	$stop;
end

integer tricnt = 0;
integer dly_time;

always @(posedge o_trig) begin
	tricnt = tricnt + 1;
	#5_000;
	i_echo = 1;
	dly_time = 11 + {$random}%26000;	//11 < t < 26011	
	$display("TEST %0d:\ndistance of testbench = %0dmm",tricnt,function_t2s(dly_time));
	#(dly_time * 1000);
	i_echo = 0;
end

initial begin
	#1;
	$monitor("o_s_mm = %0dmm",o_s_mm);
end

//todo 函数实现运算 s=0.173*t
function real function_t2s;
	input real t;
	begin
		function_t2s = 0.173*t;
	end
endfunction


endmodule

