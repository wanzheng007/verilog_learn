// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan 24 13:58:55 2023
// Host        : AiSiJi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_18 U0
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
Ql1k/bqsL/haWKy0F4n1vN1anvkCZHOzVdQ7ymmAGsHO643lyzfaeY2fbbDNP7tosfiOBs6miRu2
PbrqcIWPbBTyqi3alXmDyfH0H3JH2IIwGvorEkN2i4zQG37A8WUiyEfDvGm9j1yR6M6/uMvXlevC
MQ6QjleTZwTNNzqzJKqHxHmVCpzVoPwEHzGstEbBz03b12+KNsiU+T04FEIzq6qUqaZbk40CzOmJ
8LdMDC74jwonW3/aSdSOKFhSYXUjWkA4bEvJbsuIR83RJw5t3/vwdR6l1mGAi619l+MfD87Qj9F+
Y95P2BnOo4i8O6zCkzMcBgn6Y8t/QmbNeh2hQQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NuVYaisAdYpA+L5uzLZQMMFJgrhH4yVO/Qbt5XyO2PShGw8cqHnnZ29/VwLs9pDt+/IdzZDc9SCA
OEp5dLBl2y1VBsXj3Rs01t1vc1IQrpz76EyLxm6O6Ai4yw/rf0q50V7WP0+L0+yYiJfFpycp9m7q
Y3QPXn2mbuZCj+U9O082ltaFkz/PTMPBA6MrDsoSjAvNS8NOLWGsuqA9MtYH1GOHBrYcAn82kYSB
UTHVFPX8I7Rs6DtkjN6MMdZlD0EEY/yHgrvnM0SAQ05p26X2s+umwk9NbDKHoQvnCJq77AVPZswh
pPE3KNNM08mheGf1ohFop8Zx9zVKLf5WlFmBig==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11136)
`pragma protect data_block
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
Lqk51eQATzt+rrzSxfXzdC5DXGLm
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
