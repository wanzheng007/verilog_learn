
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		20		//时钟周期设置为20ns（50MHz）	

////////////////////////////////////////////////////////////
//接口申明
	
reg clk;
reg rst_n;
reg i_en;				//使能
reg[31:0] i_periord;	//周期，单位：20ns
reg[31:0] i_high;		//高电平事件，单位：20ns
reg[15:0] i_times;		//次数
wire o_pwm;				//PWM信号

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
vlg_design uut_vlg_design(
	.i_clk		(clk),
	.i_rst_n	(rst_n),
	.i_en		(i_en),
	.i_periord	(i_periord),
	.i_high		(i_high),
	.i_times	(i_times),
	.o_pwm		(o_pwm)
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
	i_en		<= 1'b0;
	i_periord 	<= 32'd0;	//周期，单位：20ns
	i_high 		<= 32'd0;	//高电平事件，单位：20ns
	i_times 	<= 32'd0;	//次数
	@(posedge rst_n);	//等待复位完成
	#1_000;

	@(posedge clk);
	task_pwm_setting(2500,250,3);	///调用task封装

	#100_000;
	task_pwm_setting(1000,500,5);

	#10_000;	
	$stop;
end

task task_pwm_setting;	//用task封装
	input[31:0] pwm_periord;
	input[31:0] pwm_high;
	input[15:0] pwm_times;
	begin
		@(posedge clk);
		i_en 		<= 1'b1;
		i_periord 	<= pwm_periord;
		i_high 		<= pwm_high;
		i_times 	<= pwm_times;
		#(pwm_periord*pwm_times*`CLK_PERIORD);
		
		@(posedge clk);
		i_en <= 1'b0;
	end
endtask

endmodule
