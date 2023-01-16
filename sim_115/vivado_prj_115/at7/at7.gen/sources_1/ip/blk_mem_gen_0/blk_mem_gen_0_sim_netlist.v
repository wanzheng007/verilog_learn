// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jan 15 21:36:18 2023
// Host        : AiSiJi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Laboratory/verilog_learn/sim_115/vivado_prj_115/at7/at7.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.3548 mW" *) 
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
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18032)
`pragma protect data_block
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
jSFw2LdYNYIhOwHPUvu1lxT8fIQ=
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
