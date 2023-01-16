// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jan 13 17:10:11 2023
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19936)
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
