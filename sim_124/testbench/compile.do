vlib work
vmap work work
vlog -work work glbl.v

#library
#vlog  -work work ../../library/artix7/*.v

#IP
vlog  -work work ../vivado_prj_124/at7/at7.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v

#SourceCode
vlog  -work work ../design/*.v

#Testbench
vlog  -work work testbench_top.v 

vsim -voptargs=+acc -L unisims_ver -L unisim -L work -Lf unisims_ver work.glbl work.testbench_top

#Add signal into wave window
do wave.do

#run -all
