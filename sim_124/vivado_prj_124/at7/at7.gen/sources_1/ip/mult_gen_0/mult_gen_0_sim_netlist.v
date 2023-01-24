// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan 24 13:58:56 2023
// Host        : AiSiJi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Laboratory/verilog_learn/sim_124/vivado_prj_124/at7/at7.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [9:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [25:0]P;

  wire [9:0]A;
  wire [15:0]B;
  wire CLK;
  wire [25:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "10" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "25" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_gen_0_mult_gen_v12_0_18 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C/5Mh/YfQK+xvzcE2CGtETuPBeLiyJko5tNa9mMrxf8GTM/0mqqMZ+vYDutRWwlkGLoBJ0ubJ2JM
hSYnF9uwe22zt9N5LFdSRZxMoN1o6c2PdIJyFX9QiG+G0k5olg9eEzsigfNpc9kE5brQ+zVlZ0BV
klXrD05hnhWq+ZJys/w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nhu9PWmxjSOqIMDTXJV+4qo0FPiBJCygcWuN/bfQzqY2oUKKM8378Fb2UT55vg8n4G10m17vIBgN
+Wy6buZC7GhxULhm+9qKdG61k/7yfhvEyQUBzudlOBUaIUk7ZAeE6SGH26C8h1WgBFSBJBshielG
kmSnefelvtJmMqQynpqanYQE+2/nM45zHVEXMtgEl8NM+ittmjnbmsjMG+VmkcpjTiitr8v+SSgM
RUwmbOuITmj1SaUWkm+IJTDW4bnipSqF0iXScNDVurlEpJm4oLvKdM1ottYIIcXR6+Fa5dGLRubI
LjYe8sQ49kCgXyYdFk4JbJANd3OdYx/U0839pw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oLOGB6O+5m7WVYa3aB6L+szJIkfErI3K6c0Z4Xd6Cc9YLnPbUoTR/E3N7bfACANo1RtCR1KrgOT9
QRzSpMaWuUNpHkoBWkpOvvqpujGg7n+KNjtsXpeAJDMZq0hpkCFMyTIbglQJfVL4ds7LBIztVpT+
XPSPp0rHN6MvUs/o0sQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b3H7uIeGCIVDgn3FEC671rtMncRXCjR9RBfw6OuWzlyF5wFk4ElX2tB2gwrWUb2Com7mmOGUcT8m
dWBnb4fgFyaI4CcP0cDJZ1RBfKHzHsnVnUtydmh17jwFjOhuG4oqUfxDBVOziYixuf8xqsPD1kIx
AAGgp8eCh/3TTWsXe8MqUHFhWLAFBHiM+g9tiFtJxHBAyX5v+8avU7rSRQOteILiCl/aE/ZTg1U1
TZRYZm9xCtpTek8kcIXycf8cf1vmkeYfjYqsPcKnLXjswHKcSvCTgJBvdf6/NU1hADbYz5krZkN6
cP43YF8Es6pXZ5MZxRyvAulHMEmC1vBKEV4L2Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hNojWTRiv5xJXFjSuajQtOI6VJWjSVIasMceSy/iOADWwlykMyPQqJwBZv9vgyG2lsbPzupIZZOt
sY4+VQKC49eSzzBiqlXJuuRgTh4eG5Sj78MJPFi8Z4JHdANbBDjcsfEyFcFinPG8C+6ObqSWv3sT
fh66lPvK05YKvRong1DaI4yDI+LeF0XCXF9jXawejRWPqZyQQRofEUn3P6/HL3rOQ9WrwtOgLOh4
eld6oolD6hKjdN6z7BtfypoG1+c9GyXB8peQYSYy2mC/UhPM2He7IScIeEh8FKNZOETke8ShtPdd
8KijcT3YF0mZbR+JEAYmPRwljDtmkR1nmLPJ5g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vNoNhNOiLgedrjzCipcIWa66MfCSJrQLJjludHrumavTx1oA+4ROcs5sx9EIY16AxVabVb6PSj/B
6g7QMmhWOHO5XWCGsLGngpWlMaz7FPJIrMDMH0FqHULVZgn+ytshKF3OiHU9DKUfGAkx2o6xKR8J
v2jv+NfcjYrjtp1y5L007VCIwcNtkKJJXaDQjJxbYYOB0uzxwQIXRo+SEib+esXDvZD6Ikc55nl4
wE0bh+voYoBpOgDoGMiOgpg8YJnYWFS+aCT4aHJqb0+12fK4HJHyN34p2V9mna/PBHxQttZEjbwL
t5GBDgl9IiQOzvoyMMwa3D9yJPGWNEJTOJaUbw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UWO1yL0EL8CXhMsuZN3v7pq9vqI3Hx8I4AdpxQRWS35PlhqAcAjYeBVG9msiPa5PzWiULLQfpvtc
jErP46XJGtGsEiYBMIv0Sy4sw0m1buhgPQC3ebkJgAk3bspWMUEsvYaN1IfFXabxN+RYANz3tJ2Y
oHgpnvvpm8OrlQUsgkwwn7FgVUGvBHoaj3vopWTMROl61+OL1aj+VLKQvwlZuA30e5yG7JAT159Y
e+xbMUxDz+W4RK0kPzZxnlU6X2HGieEEqGVzuAHvbaqUsRHZF294LqHX4u2WuTM74rvH69Kh5wL6
jYEYgCU9ma4gBAA98slrAnjNqn4bY2f9DG+now==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iXm1XonW4ervg3D4DUJphNzJ6vN12GMfC70OgzuNrZ2kX9fFpWbL5IBPnCTMNnNWQy0GGe6hvPmb
j7EpeR3MIhJR5BcSdHMR4BVvSo0AEM+UmieNsuTc7dTw++8EucnKuLvloLldJo1b29DO+LZfqkGP
M9z2zkXfSVOqQRNGzxLR5gGJLHNfjxGz8MOIJ3HaDDAbO1eEgkWN9ZeesYwJrgERNSubcEhjLzl8
dVi5A1iTEa6WcsQ7XpUZkZTrHlM+/ZUnuZelrt2eHwx7m5XAZzHXbVz6YPrxLVx80IcJzqkykiEp
dMotGjzHWB0+tNy/gRFTUB5rpFt3LtF2+O9mZEf4nNluB9zmYqmvU9T4zeiID3NuEe4WOZjruJ0Q
gBPt5imaHECnAFxZ7QWVRp1rGkX8eS8I5qjfVJm8+pKqvjc1MGkAv2Vh4RG+n36yShUI44QIDYIY
zqj5fbexc27+CEmjJEFy/Cwik0yDg15IXyQYIkVLbBBdXfuQsGR6lI0A

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e2TCE/IVroj0BoMutEWWgUoHdqmqHN4Vq1aGvl8tHLqPMgKPyusaF/EU/+MvsIWjDyZip1MmWOcx
jQu5Oy8IWt51LTRIQJ0x+kU2WDMNmZRHSdVAR8ORyzaV+63xJ+1FR21OuVBTsdN0zc5+xPOZn251
Ih7Dkw8u+guep7Yr4t3jgw+4crsiBVVM+5WJvUb5HgZZLCirWswHL2EOSwrlxmh1UfYzXoib6RPE
Ra/hqZSom0279kPBw6Fx+riPQZSw7jyFJal9sJMpp1RQHG0wo0DgA0V8Ot4NHxUc9Fwq4+hnCyfi
r2lvbn1yjpQbLFKBIZrlQAud1cQVbPc9abtdFA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b+rM/0jlZI/aS5QsWcG+1Uq395sW75WOCbg+yGStk0at1cmNHEJXEBUOQ7F8tS2/NP7hqeM/b+TF
3s3gwup5Zl0saYKwCrUCgV9Y1sf6TkEJDNnW/oMVyrwAatd7puk3BUTOL16zttemtvKHV6ojZ1f7
ODNn7sij6MV0b+jjsjJgX67qUCfQaBUi24tQz8iNRauMrRZkCCkSOnhy+p0N804ErFJ30VdqwWO9
vuQOGYmQiqclDMOhxaMZ/gQNeqtwczyg2F3ZTHmUok/E/Kvv/4KDnfgiyYjzj/yD6G+owjaS7lF2
5rkwfvyWBZ8CDbATfjOX2pfKUIj9gKrUE7ydww==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hq35QYKQr6u3zgjcoJ+YV9x98dzPLXytvj1hCAn9tEl2MVhlWW3f3wBkr0phHy4MazEs2YafiUHK
nVHYkDTcofeweIlFcVURZe0YmWGeAzgDuG5DkNV8Xg6q9CMRMknd/m6p8DeTPzjKpO+WA1wH3N3f
W9SqSLGdSH4/rth72HKubwVjHl1qvhNUPID0DuUzjFIggJ5WmrXx+6cdvur+tBxY6eMjExvlyLUb
W6wWmcLLhFBspQlu2Yn9KxIc0DPmc8hz74CFxTl9/fnbPlimxbLmzvxggeC5GHn5mko1iEVTPKxs
DEosXvod37/79+5Oharqi23LprarcqETXYY8Aw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11104)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
