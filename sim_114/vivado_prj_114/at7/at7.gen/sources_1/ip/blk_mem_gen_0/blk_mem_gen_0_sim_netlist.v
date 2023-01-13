// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jan 13 18:49:58 2023
// Host        : AiSiJi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Laboratory/verilog_learn/sim_114/vivado_prj_114/at7/at7.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19904)
`pragma protect data_block
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
VqL07/b6HEzv3Zs=
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
