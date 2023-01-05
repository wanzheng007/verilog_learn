
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		10		//时钟周期设置为10ns（100MHz）	

////////////////////////////////////////////////////////////
//接口申明
	
reg clk;
reg rst_n;
reg a,b;
wire z1,z2;


////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
vlg_design1 uut_vlg_design1(
	.a(a),
	.b(b),
	.z(z1)
);

vlg_design2 uut_vlg_design2(
	.clk(clk),
	.rst_n(rst_n),
	.a(a),
	.b(b),
	.z(z2)
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
	a <= 0;
	b <= 0;

	@ (posedge rst_n);	//等待复位完成
	repeat (10) begin
		@ (posedge clk);
	end

	//a和b同步变化
	@ (posedge clk)
	#2;
    a <= 1;
    b <= 0;
    @(posedge clk);
    #2;
    a <= 0;
    b <= 1;
    @(posedge clk);
    #2;
    a <= 0;
    b <= 0;
	@ (posedge clk);

	//a和b变化有延时
    @(posedge clk);
    #2;
    a <= 1;
    #1;
    b <= 0;
    @(posedge clk);
    #2;
    a <= 0;
    #1;
    b <= 1;
    @(posedge clk);
    #2;
    a <= 0;
    #1;
    b <= 0;
	
	repeat(10) begin
		@(posedge clk);
	end
	
	$stop;
end


endmodule






