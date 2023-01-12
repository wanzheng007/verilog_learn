
`timescale 1ns/1ps

module vlg_design(
	input i_clk,
	input i_rst_n,
	input[3:0] i_data,
	output[3:0] o_gray
    );

reg[3:0] r_gray;

////////////////////////////////////////////////////////
//使用if条件语句实现译码
always @(posedge i_clk) begin
	if (!i_rst_n) r_gray <= 4'b0;
	else if (i_data <= 4'b0000) r_gray <= 4'b0000;  //0
	else if (i_data <= 4'b0001) r_gray <= 4'b0001;  //1
	else if (i_data <= 4'b0010) r_gray <= 4'b0011;  //2
	else if (i_data <= 4'b0011) r_gray <= 4'b0010;  //3
	else if (i_data <= 4'b0100) r_gray <= 4'b0110;  //4
	else if (i_data <= 4'b0101) r_gray <= 4'b0111;  //5
	else if (i_data <= 4'b0110) r_gray <= 4'b0101;  //6
	else if (i_data <= 4'b0111) r_gray <= 4'b0100;  //7
	else if (i_data <= 4'b1000) r_gray <= 4'b1100;  //8
	else if (i_data <= 4'b1001) r_gray <= 4'b1101;  //9
	else if (i_data <= 4'b1010) r_gray <= 4'b1111;  //10
	else if (i_data <= 4'b1011) r_gray <= 4'b1110;  //11
	else if (i_data <= 4'b1100) r_gray <= 4'b1010;  //12
	else if (i_data <= 4'b1101) r_gray <= 4'b1011;  //13
	else if (i_data <= 4'b1110) r_gray <= 4'b1001;  //14
	else if (i_data <= 4'b1111) r_gray <= 4'b1000;  //15
	else ;
end

////////////////////////////////////////////////////////
//使用case分支语句实现译码
/*always @(posedge i_clk) begin
	if (!i_rst_n) r_gray <= 4'b0;
	else begin
		case (i_data)
			4'b0000: r_gray <= 4'b0000;  //0
			4'b0001: r_gray <= 4'b0001;  //1
			4'b0010: r_gray <= 4'b0011;  //2
			4'b0011: r_gray <= 4'b0010;  //3
			4'b0100: r_gray <= 4'b0110;  //4
			4'b0101: r_gray <= 4'b0111;  //5
			4'b0110: r_gray <= 4'b0101;  //6
			4'b0111: r_gray <= 4'b0100;  //7
			4'b1000: r_gray <= 4'b1100;  //8
			4'b1001: r_gray <= 4'b1101;  //9
			4'b1010: r_gray <= 4'b1111;  //10
			4'b1011: r_gray <= 4'b1110;  //11
			4'b1100: r_gray <= 4'b1010;  //12
			4'b1101: r_gray <= 4'b1011;  //13
			4'b1110: r_gray <= 4'b1001;  //14
			4'b1111: r_gray <= 4'b1000;  //15
			default ;
		endcase
	end
end*/
	

assign o_gray = r_gray;

endmodule

