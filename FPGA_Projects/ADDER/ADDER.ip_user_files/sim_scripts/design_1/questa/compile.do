vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/2875/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/2c14/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/2875/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/2c14/hdl/verilog" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/2875/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/2c14/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/2875/hdl/verilog" "+incdir+../../../../ADDER.srcs/sources_1/bd/design_1/ipshared/2c14/hdl/verilog" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ip/design_1_half_adder_0_0/sim/design_1_half_adder_0_0.v" \
"../../../bd/design_1/ip/design_1_full_adder_0_0/sim/design_1_full_adder_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

