vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../at7.gen/sources_1/ip/debug_vio/hdl/verilog" "+incdir+../../../../at7.gen/sources_1/ip/debug_vio/hdl" \
"../../../../at7.gen/sources_1/ip/debug_vio/sim/debug_vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

