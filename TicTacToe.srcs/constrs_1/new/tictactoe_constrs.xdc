## This file is a general .xdc for the ZYBO Rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used signals according to the project

##Pmod Header JA (XADC)
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_8_tri_io}]; #IO_L24P_T3_AD15P_35 Sch=JA3_R_P
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_tri_io[0]}]; #IO_L20P_T3_AD6P_35 Sch=JA4_R_P
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_tri_io[1]}]; #IO_L20N_T3_AD6N_35 Sch=JA4_R_N

##Pmod Header JB
set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_7_tri_io[0]}]; #IO_L15P_T2_DQS_34 Sch=JB1_p
set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_6_tri_io[0]}]; #IO_L15N_T2_DQS_34 Sch=JB1_N
set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_5_tri_io[0]}]; #IO_L16P_T2_34 Sch=JB2_P
set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_4_tri_io[0]}]; #IO_L16N_T2_34 Sch=JB2_N
set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_7_tri_io[1]}]; #IO_L17P_T2_34 Sch=JB3_P
set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_6_tri_io[1]}]; #IO_L17N_T2_34 Sch=JB3_N
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_5_tri_io[1]}]; #IO_L22P_T3_34 Sch=JB4_P
set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_4_tri_io[1]}]; #IO_L22N_T3_34 Sch=JB4_N

##Pmod Header JC
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_3_tri_io[0]}]; #IO_L10P_T1_34 Sch=JC1_P
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_2_tri_io[0]}]; #IO_L10N_T1_34 Sch=JC1_N
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_1_tri_io[0]}]; #IO_L1P_T0_34 Sch=JC2_P
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_0_tri_io[0]}]; #IO_L1N_T0_34 Sch=JC2_N
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_3_tri_io[1]}]; #IO_L8P_T1_34 Sch=JC3_P
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_2_tri_io[1]}]; #IO_L8N_T1_34 Sch=JC3_N
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_1_tri_io[1]}]; #IO_L2P_T0_34 Sch=JC4_P
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_0_tri_io[1]}]; #IO_L2N_T0_34 Sch=JC4_N

##Pmod Header JD
##set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_tri_io[0]}]; #IO_L5P_T0_34 Sch=JD1_P
##set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports {gpio_rtl_tri_io[1]}]; #IO_L11P_T1_SRCC_34 Sch=JD3_P