
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		10		//时钟周期设置为10ns（100MHz）	

////////////////////////////////////////////////////////////
//接口申明
	
reg clk;
reg rst_n;
reg i_1yuan;
reg i_2yuan;
reg i_5yuan;
wire o_done;

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
vlg_design uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_1yuan(i_1yuan),
	.i_2yuan(i_2yuan),
	.i_5yuan(i_5yuan),
	.o_done(o_done)
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
	i_1yuan = 0;
	i_2yuan = 0;
	i_5yuan = 0;
	@(posedge rst_n);	//等待复位完成
	
	@(posedge clk);

	for (i = 0;i < 20;i = i+1) begin
		task_random_pay();
	end

	#5000;
	
	$stop;
end

integer random_data;

task task_random_pay;
	begin
		#1000;
		random_data = {$random}%3;
		@(posedge clk);
		if (random_data == 0)
			i_1yuan <= 1'b1;
		else if (random_data == 1)
			i_2yuan <= 1'b1;
		else if (random_data == 2)
			i_5yuan <= 1'b1;
		else ;
		@(posedge clk);
		i_1yuan <= 0;
		i_2yuan <= 0;
		i_5yuan <= 0;
	end
endtask

always @(posedge clk) begin
	if (i_1yuan)
		$display("Pay 1 yuan.");
	else if (i_2yuan)
		$display("Pay 2 yuan.");
	else if (i_5yuan)
		$display("Pay 5 yuan.");
	else if (o_done)
		$display("Got you want.");
	else ;
end

endmodule






