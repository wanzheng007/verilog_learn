
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//��������

`define CLK_PERIORD		10		//ʱ����������Ϊ10ns��100MHz��	

////////////////////////////////////////////////////////////
//�ӿ�����
	
reg clk;
reg rst_n;
reg a,b;
wire z1,z2;


////////////////////////////////////////////////////////////	
//�Ա����Ե���ƽ�������
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
//��λ��ʱ�Ӳ���

	//ʱ�Ӻ͸�λ��ʼ������λ����
initial begin
	clk <= 0;
	rst_n <= 0;
	#1000;
	rst_n <= 1;
end
	
	//ʱ�Ӳ���
always #(`CLK_PERIORD/2) clk = ~clk;	

////////////////////////////////////////////////////////////
//���Լ�������

initial begin
	a <= 0;
	b <= 0;

	@ (posedge rst_n);	//�ȴ���λ���
	repeat (10) begin
		@ (posedge clk);
	end

	//a��bͬ���仯
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

	//a��b�仯����ʱ
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






