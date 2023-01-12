
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//��������

`define CLK_PERIORD		10		//ʱ����������Ϊ10ns��100MHz��	

////////////////////////////////////////////////////////////
//�ӿ�����
	
reg clk;
reg rst_n;
reg[3:0] i_data;
wire[3:0] o_gray;


////////////////////////////////////////////////////////////	
//�Ա����Ե���ƽ�������
	
vlg_design uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_data(i_data),
	.o_gray(o_gray)
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
integer i;

initial begin
	i_data <= 4'b0000;
	@(posedge rst_n);	//�ȴ���λ���
	
	@(posedge clk);

	for (i = 0; i < 16; i = i + 1) begin
		i_data <= i_data + 1;
		@(posedge clk);
	end

	repeat(1_000) begin
		@(posedge clk);
	end
	
	$stop;
end


endmodule






