
`timescale 1ns/1ps

//* 测试模块
module testbench_top();
	
////////////////////////////////////////////////////////////
//* 参数定义

`define CLK_PERIORD		10		//时钟周期设置为10ns（100MHz）	

////////////////////////////////////////////////////////////
//* 接口申明
	
reg clk;
reg rst_n;
reg[15:0] i_pulse;
reg i_en;
wire[15:0] o_pulse_cnt0;
wire[15:0] o_pulse_cnt1;
wire[15:0] o_pulse_cnt2;
wire[15:0] o_pulse_cnt3;
wire[15:0] o_pulse_cnt4;
wire[15:0] o_pulse_cnt5;
wire[15:0] o_pulse_cnt6;
wire[15:0] o_pulse_cnt7;
wire[15:0] o_pulse_cnt8;
wire[15:0] o_pulse_cnt9;
wire[15:0] o_pulse_cnta;
wire[15:0] o_pulse_cntb;
wire[15:0] o_pulse_cntc;
wire[15:0] o_pulse_cntd;
wire[15:0] o_pulse_cnte;
wire[15:0] o_pulse_cntf;

////////////////////////////////////////////////////////////	
//* 对被测试的设计进行例化
	
vlg_design uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_pulse(i_pulse),
	.i_en(i_en),
	.o_pulse_cnt0(o_pulse_cnt0),
	.o_pulse_cnt1(o_pulse_cnt1),
	.o_pulse_cnt2(o_pulse_cnt2),
	.o_pulse_cnt3(o_pulse_cnt3),
	.o_pulse_cnt4(o_pulse_cnt4),
	.o_pulse_cnt5(o_pulse_cnt5),
	.o_pulse_cnt6(o_pulse_cnt6),
	.o_pulse_cnt7(o_pulse_cnt7),
	.o_pulse_cnt8(o_pulse_cnt8),
	.o_pulse_cnt9(o_pulse_cnt9),
	.o_pulse_cnta(o_pulse_cnta),
	.o_pulse_cntb(o_pulse_cntb),
	.o_pulse_cntc(o_pulse_cntc),
	.o_pulse_cntd(o_pulse_cntd),
	.o_pulse_cnte(o_pulse_cnte),
	.o_pulse_cntf(o_pulse_cntf)
    );	
	
////////////////////////////////////////////////////////////
//* 复位和时钟产生

	//时钟和复位初始化、复位产生
initial begin  //顺序执行
	clk <= 0;
	rst_n <= 0;
	#1000;
	rst_n <= 1;
end
	
	//时钟产生
always #(`CLK_PERIORD/2) clk = ~clk;	

////////////////////////////////////////////////////////////
//* 测试激励产生
integer i;  //定义变量

initial begin  //顺序执行
	i_pulse <= 'b0;
	i_en <= 1'b0;
	@(posedge rst_n);	//等待复位完成
	
	@(posedge clk);

	repeat(10) begin @(posedge clk); end
	#4;

//第一次测试
	i_en <= 1'b1;  //使能信号拉高，计数
	//50次循环
	for (i = 0;i < 50;i = i + 1) begin
		#500;  //i_pulse <= 'b0保持500ns
		i_pulse <= {$random} % 65535;  //* 采用随机数
		#300;  //i_pulse <= {$random} % 65535保持300ns
		i_pulse <= 'b0;  //十六位全拉低
	end
	i_en <= 1'b0;  //使能信号拉低
	#10_000;  //间隔10us

//第二次测试
	i_en <= 1'b1;  //使能信号拉高，计数
	//69次循环
	for (i = 0;i < 69;i = i + 1) begin
		#500;
		i_pulse <= {$random} % 65535;  //* 采用随机数
		#300;
		i_pulse <= 'b0;  //十六位全拉低
	end
	i_en <= 1'b0;  //使能信号拉低
	#10_000;  //间隔10us

//第三次测试
	i_en <= 1'b0;  //使能信号拉低，不计数
	//15次循环
	for (i = 0;i < 15;i = i + 1) begin
		#500;
		i_pulse <= {$random} % 65535;  //* 采用随机数
		#300;
		i_pulse <= 'b0;  //十六位全低
	end
	i_en <= 1'b0;
	#10_000;  //间隔10us

	//测试结束后再保持1000ns
	repeat(1000) begin @(posedge clk); end
	
	$stop;  //测试结束
end


endmodule