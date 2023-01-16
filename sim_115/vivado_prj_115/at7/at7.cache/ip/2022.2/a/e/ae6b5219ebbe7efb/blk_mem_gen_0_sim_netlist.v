// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jan 15 21:36:17 2023
// Host        : AiSiJi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18064)
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
