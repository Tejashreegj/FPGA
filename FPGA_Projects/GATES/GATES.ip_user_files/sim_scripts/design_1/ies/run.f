-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

