vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/2875/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/2c14/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/2875/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/2c14/hdl/verilog" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/2875/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/2c14/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/2875/hdl/verilog" "+incdir+../../../../GATES.srcs/sources_1/bd/design_1/ipshared/2c14/hdl/verilog" \
"../../../bd/design_1/ip/design_1_and_gate_0_0/sim/design_1_and_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_nand_gate_0_0/sim/design_1_nand_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_nor_gate_0_0/sim/design_1_nor_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_not_gate_0_0/sim/design_1_not_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_or_gate_0_0/sim/design_1_or_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_xor_gate_0_0/sim/design_1_xor_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

