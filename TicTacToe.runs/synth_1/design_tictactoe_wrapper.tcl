# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.cache/wt [current_project]
set_property parent.project_path C:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_repo_paths c:/Xilinx/Vivado/vivado-library-master [current_project]
set_property ip_output_repo c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/hdl/design_tictactoe_wrapper.vhd
add_files C:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/design_tictactoe.bd
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_processing_system7_0_0/design_tictactoe_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_PmodGPIO_0_0/src/PmodGPIO_pmod_bridge_0_0/PmodGPIO_pmod_bridge_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_PmodGPIO_0_0/src/PmodGPIO_pmod_bridge_0_0/src/pmod_concat_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_PmodGPIO_0_0/src/PmodGPIO_axi_gpio_0_0/PmodGPIO_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_PmodGPIO_0_0/src/PmodGPIO_axi_gpio_0_0/PmodGPIO_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_PmodGPIO_0_0/src/PmodGPIO_axi_gpio_0_0/PmodGPIO_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_PmodGPIO_0_0/design_tictactoe_PmodGPIO_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_PmodGPIO_0_0/src/PmodGPIO_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_0/design_tictactoe_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_0/design_tictactoe_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_0/design_tictactoe_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_1/design_tictactoe_axi_gpio_0_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_1/design_tictactoe_axi_gpio_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_1/design_tictactoe_axi_gpio_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_2/design_tictactoe_axi_gpio_0_2_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_2/design_tictactoe_axi_gpio_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_2/design_tictactoe_axi_gpio_0_2.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_3/design_tictactoe_axi_gpio_0_3_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_3/design_tictactoe_axi_gpio_0_3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_3/design_tictactoe_axi_gpio_0_3.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_4/design_tictactoe_axi_gpio_0_4_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_4/design_tictactoe_axi_gpio_0_4_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_4/design_tictactoe_axi_gpio_0_4.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_5/design_tictactoe_axi_gpio_0_5_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_5/design_tictactoe_axi_gpio_0_5_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_5/design_tictactoe_axi_gpio_0_5.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_6/design_tictactoe_axi_gpio_0_6_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_6/design_tictactoe_axi_gpio_0_6_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_6/design_tictactoe_axi_gpio_0_6.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_7/design_tictactoe_axi_gpio_0_7_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_7/design_tictactoe_axi_gpio_0_7_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_7/design_tictactoe_axi_gpio_0_7.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_8/design_tictactoe_axi_gpio_0_8_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_8/design_tictactoe_axi_gpio_0_8_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_0_8/design_tictactoe_axi_gpio_0_8.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_rst_ps7_0_100M_0/design_tictactoe_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_rst_ps7_0_100M_0/design_tictactoe_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_rst_ps7_0_100M_0/design_tictactoe_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_xbar_0/design_tictactoe_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_9_0/design_tictactoe_axi_gpio_9_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_9_0/design_tictactoe_axi_gpio_9_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_axi_gpio_9_0/design_tictactoe_axi_gpio_9_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/ip/design_tictactoe_auto_pc_0/design_tictactoe_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/design_tictactoe_ooc.xdc]
set_property is_locked true [get_files C:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/sources_1/bd/design_tictactoe/design_tictactoe.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/constrs_1/new/tictactoe_constrs.xdc
set_property used_in_implementation false [get_files C:/Users/Ardi/Vivado/Project/TicTacToe/TicTacToe.srcs/constrs_1/new/tictactoe_constrs.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_tictactoe_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef design_tictactoe_wrapper.dcp

catch { report_utilization -file design_tictactoe_wrapper_utilization_synth.rpt -pb design_tictactoe_wrapper_utilization_synth.pb }
