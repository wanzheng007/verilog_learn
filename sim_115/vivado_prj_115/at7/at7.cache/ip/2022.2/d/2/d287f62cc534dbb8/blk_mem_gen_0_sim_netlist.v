// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jan 13 18:49:57 2023
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
