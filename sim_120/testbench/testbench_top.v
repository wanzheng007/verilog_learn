
`timescale 1ns/1ps

module testbench_top();

/*reg a = 0;
reg b = 0;
reg clk = 0;

initial begin
	#100;
	a = 1;
end

initial begin
	#50;
	b = 1;
	#100;
	$stop;
end

always begin
	#10;
	clk = ~clk;
end*/

initial begin
	#10;
	$display("%0dns",$time);
	$display("%0tps",$time);
	$display("%0fns",$realtime);
	$display("%0tps",$realtime);
	#5.481;
	$display("%0dns",$time);
	$display("%0tps",$time);
	$display("%0fns",$realtime);
	$display("%0tps",$realtime);
	#10.58289;
	$display("%0tps",$time);
	$display("%0tps",$time);
	$display("%0fns",$realtime);
	$display("%0tps",$realtime);
	$display("%0dns",$time);
	$stop;
end

endmodule






