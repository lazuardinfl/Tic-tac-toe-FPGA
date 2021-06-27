--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Wed May 22 19:29:38 2019
--Host        : Ardi running 64-bit major release  (build 9200)
--Command     : generate_target design_tictactoe_wrapper.bd
--Design      : design_tictactoe_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_tictactoe_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    gpio_rtl_0_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_1_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_2_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_3_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_4_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_5_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_6_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_7_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_8_tri_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_rtl_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    pmodjd_pin10_io : inout STD_LOGIC;
    pmodjd_pin1_io : inout STD_LOGIC;
    pmodjd_pin2_io : inout STD_LOGIC;
    pmodjd_pin3_io : inout STD_LOGIC;
    pmodjd_pin4_io : inout STD_LOGIC;
    pmodjd_pin7_io : inout STD_LOGIC;
    pmodjd_pin8_io : inout STD_LOGIC;
    pmodjd_pin9_io : inout STD_LOGIC
  );
end design_tictactoe_wrapper;

architecture STRUCTURE of design_tictactoe_wrapper is
  component design_tictactoe is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    gpio_rtl_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_0_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_0_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_1_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_1_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_1_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_2_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_2_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_2_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_3_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_3_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_3_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_4_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_4_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_4_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_5_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_5_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_5_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_6_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_6_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_6_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_7_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_7_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rtl_7_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pmodJD_pin1_o : out STD_LOGIC;
    pmodJD_pin7_i : in STD_LOGIC;
    pmodJD_pin2_o : out STD_LOGIC;
    pmodJD_pin8_i : in STD_LOGIC;
    pmodJD_pin3_o : out STD_LOGIC;
    pmodJD_pin9_i : in STD_LOGIC;
    pmodJD_pin10_o : out STD_LOGIC;
    pmodJD_pin4_o : out STD_LOGIC;
    pmodJD_pin3_i : in STD_LOGIC;
    pmodJD_pin4_i : in STD_LOGIC;
    pmodJD_pin1_i : in STD_LOGIC;
    pmodJD_pin2_i : in STD_LOGIC;
    pmodJD_pin10_t : out STD_LOGIC;
    pmodJD_pin8_t : out STD_LOGIC;
    pmodJD_pin9_t : out STD_LOGIC;
    pmodJD_pin4_t : out STD_LOGIC;
    pmodJD_pin9_o : out STD_LOGIC;
    pmodJD_pin10_i : in STD_LOGIC;
    pmodJD_pin7_t : out STD_LOGIC;
    pmodJD_pin1_t : out STD_LOGIC;
    pmodJD_pin2_t : out STD_LOGIC;
    pmodJD_pin7_o : out STD_LOGIC;
    pmodJD_pin3_t : out STD_LOGIC;
    pmodJD_pin8_o : out STD_LOGIC;
    gpio_rtl_8_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_rtl_8_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_rtl_8_tri_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_tictactoe;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal gpio_rtl_0_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_0_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_0_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_0_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_0_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_0_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_0_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_0_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_1_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_1_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_1_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_1_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_1_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_1_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_1_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_1_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_2_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_2_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_2_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_2_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_2_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_2_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_2_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_2_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_3_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_3_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_3_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_3_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_3_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_3_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_3_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_3_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_4_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_4_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_4_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_4_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_4_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_4_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_4_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_4_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_5_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_5_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_5_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_5_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_5_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_5_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_5_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_5_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_6_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_6_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_6_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_6_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_6_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_6_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_6_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_6_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_7_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_7_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_7_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_7_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_7_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_7_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_7_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_7_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_8_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_8_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_8_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_8_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmodjd_pin10_i : STD_LOGIC;
  signal pmodjd_pin10_o : STD_LOGIC;
  signal pmodjd_pin10_t : STD_LOGIC;
  signal pmodjd_pin1_i : STD_LOGIC;
  signal pmodjd_pin1_o : STD_LOGIC;
  signal pmodjd_pin1_t : STD_LOGIC;
  signal pmodjd_pin2_i : STD_LOGIC;
  signal pmodjd_pin2_o : STD_LOGIC;
  signal pmodjd_pin2_t : STD_LOGIC;
  signal pmodjd_pin3_i : STD_LOGIC;
  signal pmodjd_pin3_o : STD_LOGIC;
  signal pmodjd_pin3_t : STD_LOGIC;
  signal pmodjd_pin4_i : STD_LOGIC;
  signal pmodjd_pin4_o : STD_LOGIC;
  signal pmodjd_pin4_t : STD_LOGIC;
  signal pmodjd_pin7_i : STD_LOGIC;
  signal pmodjd_pin7_o : STD_LOGIC;
  signal pmodjd_pin7_t : STD_LOGIC;
  signal pmodjd_pin8_i : STD_LOGIC;
  signal pmodjd_pin8_o : STD_LOGIC;
  signal pmodjd_pin8_t : STD_LOGIC;
  signal pmodjd_pin9_i : STD_LOGIC;
  signal pmodjd_pin9_o : STD_LOGIC;
  signal pmodjd_pin9_t : STD_LOGIC;
begin
design_tictactoe_i: component design_tictactoe
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      gpio_rtl_0_tri_i(1) => gpio_rtl_0_tri_i_1(1),
      gpio_rtl_0_tri_i(0) => gpio_rtl_0_tri_i_0(0),
      gpio_rtl_0_tri_o(1) => gpio_rtl_0_tri_o_1(1),
      gpio_rtl_0_tri_o(0) => gpio_rtl_0_tri_o_0(0),
      gpio_rtl_0_tri_t(1) => gpio_rtl_0_tri_t_1(1),
      gpio_rtl_0_tri_t(0) => gpio_rtl_0_tri_t_0(0),
      gpio_rtl_1_tri_i(1) => gpio_rtl_1_tri_i_1(1),
      gpio_rtl_1_tri_i(0) => gpio_rtl_1_tri_i_0(0),
      gpio_rtl_1_tri_o(1) => gpio_rtl_1_tri_o_1(1),
      gpio_rtl_1_tri_o(0) => gpio_rtl_1_tri_o_0(0),
      gpio_rtl_1_tri_t(1) => gpio_rtl_1_tri_t_1(1),
      gpio_rtl_1_tri_t(0) => gpio_rtl_1_tri_t_0(0),
      gpio_rtl_2_tri_i(1) => gpio_rtl_2_tri_i_1(1),
      gpio_rtl_2_tri_i(0) => gpio_rtl_2_tri_i_0(0),
      gpio_rtl_2_tri_o(1) => gpio_rtl_2_tri_o_1(1),
      gpio_rtl_2_tri_o(0) => gpio_rtl_2_tri_o_0(0),
      gpio_rtl_2_tri_t(1) => gpio_rtl_2_tri_t_1(1),
      gpio_rtl_2_tri_t(0) => gpio_rtl_2_tri_t_0(0),
      gpio_rtl_3_tri_i(1) => gpio_rtl_3_tri_i_1(1),
      gpio_rtl_3_tri_i(0) => gpio_rtl_3_tri_i_0(0),
      gpio_rtl_3_tri_o(1) => gpio_rtl_3_tri_o_1(1),
      gpio_rtl_3_tri_o(0) => gpio_rtl_3_tri_o_0(0),
      gpio_rtl_3_tri_t(1) => gpio_rtl_3_tri_t_1(1),
      gpio_rtl_3_tri_t(0) => gpio_rtl_3_tri_t_0(0),
      gpio_rtl_4_tri_i(1) => gpio_rtl_4_tri_i_1(1),
      gpio_rtl_4_tri_i(0) => gpio_rtl_4_tri_i_0(0),
      gpio_rtl_4_tri_o(1) => gpio_rtl_4_tri_o_1(1),
      gpio_rtl_4_tri_o(0) => gpio_rtl_4_tri_o_0(0),
      gpio_rtl_4_tri_t(1) => gpio_rtl_4_tri_t_1(1),
      gpio_rtl_4_tri_t(0) => gpio_rtl_4_tri_t_0(0),
      gpio_rtl_5_tri_i(1) => gpio_rtl_5_tri_i_1(1),
      gpio_rtl_5_tri_i(0) => gpio_rtl_5_tri_i_0(0),
      gpio_rtl_5_tri_o(1) => gpio_rtl_5_tri_o_1(1),
      gpio_rtl_5_tri_o(0) => gpio_rtl_5_tri_o_0(0),
      gpio_rtl_5_tri_t(1) => gpio_rtl_5_tri_t_1(1),
      gpio_rtl_5_tri_t(0) => gpio_rtl_5_tri_t_0(0),
      gpio_rtl_6_tri_i(1) => gpio_rtl_6_tri_i_1(1),
      gpio_rtl_6_tri_i(0) => gpio_rtl_6_tri_i_0(0),
      gpio_rtl_6_tri_o(1) => gpio_rtl_6_tri_o_1(1),
      gpio_rtl_6_tri_o(0) => gpio_rtl_6_tri_o_0(0),
      gpio_rtl_6_tri_t(1) => gpio_rtl_6_tri_t_1(1),
      gpio_rtl_6_tri_t(0) => gpio_rtl_6_tri_t_0(0),
      gpio_rtl_7_tri_i(1) => gpio_rtl_7_tri_i_1(1),
      gpio_rtl_7_tri_i(0) => gpio_rtl_7_tri_i_0(0),
      gpio_rtl_7_tri_o(1) => gpio_rtl_7_tri_o_1(1),
      gpio_rtl_7_tri_o(0) => gpio_rtl_7_tri_o_0(0),
      gpio_rtl_7_tri_t(1) => gpio_rtl_7_tri_t_1(1),
      gpio_rtl_7_tri_t(0) => gpio_rtl_7_tri_t_0(0),
      gpio_rtl_8_tri_i(0) => gpio_rtl_8_tri_i_0(0),
      gpio_rtl_8_tri_o(0) => gpio_rtl_8_tri_o_0(0),
      gpio_rtl_8_tri_t(0) => gpio_rtl_8_tri_t_0(0),
      gpio_rtl_tri_i(1) => gpio_rtl_tri_i_1(1),
      gpio_rtl_tri_i(0) => gpio_rtl_tri_i_0(0),
      gpio_rtl_tri_o(1) => gpio_rtl_tri_o_1(1),
      gpio_rtl_tri_o(0) => gpio_rtl_tri_o_0(0),
      gpio_rtl_tri_t(1) => gpio_rtl_tri_t_1(1),
      gpio_rtl_tri_t(0) => gpio_rtl_tri_t_0(0),
      pmodJD_pin10_i => pmodjd_pin10_i,
      pmodJD_pin10_o => pmodjd_pin10_o,
      pmodJD_pin10_t => pmodjd_pin10_t,
      pmodJD_pin1_i => pmodjd_pin1_i,
      pmodJD_pin1_o => pmodjd_pin1_o,
      pmodJD_pin1_t => pmodjd_pin1_t,
      pmodJD_pin2_i => pmodjd_pin2_i,
      pmodJD_pin2_o => pmodjd_pin2_o,
      pmodJD_pin2_t => pmodjd_pin2_t,
      pmodJD_pin3_i => pmodjd_pin3_i,
      pmodJD_pin3_o => pmodjd_pin3_o,
      pmodJD_pin3_t => pmodjd_pin3_t,
      pmodJD_pin4_i => pmodjd_pin4_i,
      pmodJD_pin4_o => pmodjd_pin4_o,
      pmodJD_pin4_t => pmodjd_pin4_t,
      pmodJD_pin7_i => pmodjd_pin7_i,
      pmodJD_pin7_o => pmodjd_pin7_o,
      pmodJD_pin7_t => pmodjd_pin7_t,
      pmodJD_pin8_i => pmodjd_pin8_i,
      pmodJD_pin8_o => pmodjd_pin8_o,
      pmodJD_pin8_t => pmodjd_pin8_t,
      pmodJD_pin9_i => pmodjd_pin9_i,
      pmodJD_pin9_o => pmodjd_pin9_o,
      pmodJD_pin9_t => pmodjd_pin9_t
    );
gpio_rtl_0_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_0_tri_o_0(0),
      IO => gpio_rtl_0_tri_io(0),
      O => gpio_rtl_0_tri_i_0(0),
      T => gpio_rtl_0_tri_t_0(0)
    );
gpio_rtl_0_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_0_tri_o_1(1),
      IO => gpio_rtl_0_tri_io(1),
      O => gpio_rtl_0_tri_i_1(1),
      T => gpio_rtl_0_tri_t_1(1)
    );
gpio_rtl_1_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_1_tri_o_0(0),
      IO => gpio_rtl_1_tri_io(0),
      O => gpio_rtl_1_tri_i_0(0),
      T => gpio_rtl_1_tri_t_0(0)
    );
gpio_rtl_1_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_1_tri_o_1(1),
      IO => gpio_rtl_1_tri_io(1),
      O => gpio_rtl_1_tri_i_1(1),
      T => gpio_rtl_1_tri_t_1(1)
    );
gpio_rtl_2_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_2_tri_o_0(0),
      IO => gpio_rtl_2_tri_io(0),
      O => gpio_rtl_2_tri_i_0(0),
      T => gpio_rtl_2_tri_t_0(0)
    );
gpio_rtl_2_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_2_tri_o_1(1),
      IO => gpio_rtl_2_tri_io(1),
      O => gpio_rtl_2_tri_i_1(1),
      T => gpio_rtl_2_tri_t_1(1)
    );
gpio_rtl_3_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_3_tri_o_0(0),
      IO => gpio_rtl_3_tri_io(0),
      O => gpio_rtl_3_tri_i_0(0),
      T => gpio_rtl_3_tri_t_0(0)
    );
gpio_rtl_3_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_3_tri_o_1(1),
      IO => gpio_rtl_3_tri_io(1),
      O => gpio_rtl_3_tri_i_1(1),
      T => gpio_rtl_3_tri_t_1(1)
    );
gpio_rtl_4_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_4_tri_o_0(0),
      IO => gpio_rtl_4_tri_io(0),
      O => gpio_rtl_4_tri_i_0(0),
      T => gpio_rtl_4_tri_t_0(0)
    );
gpio_rtl_4_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_4_tri_o_1(1),
      IO => gpio_rtl_4_tri_io(1),
      O => gpio_rtl_4_tri_i_1(1),
      T => gpio_rtl_4_tri_t_1(1)
    );
gpio_rtl_5_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_5_tri_o_0(0),
      IO => gpio_rtl_5_tri_io(0),
      O => gpio_rtl_5_tri_i_0(0),
      T => gpio_rtl_5_tri_t_0(0)
    );
gpio_rtl_5_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_5_tri_o_1(1),
      IO => gpio_rtl_5_tri_io(1),
      O => gpio_rtl_5_tri_i_1(1),
      T => gpio_rtl_5_tri_t_1(1)
    );
gpio_rtl_6_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_6_tri_o_0(0),
      IO => gpio_rtl_6_tri_io(0),
      O => gpio_rtl_6_tri_i_0(0),
      T => gpio_rtl_6_tri_t_0(0)
    );
gpio_rtl_6_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_6_tri_o_1(1),
      IO => gpio_rtl_6_tri_io(1),
      O => gpio_rtl_6_tri_i_1(1),
      T => gpio_rtl_6_tri_t_1(1)
    );
gpio_rtl_7_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_7_tri_o_0(0),
      IO => gpio_rtl_7_tri_io(0),
      O => gpio_rtl_7_tri_i_0(0),
      T => gpio_rtl_7_tri_t_0(0)
    );
gpio_rtl_7_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_7_tri_o_1(1),
      IO => gpio_rtl_7_tri_io(1),
      O => gpio_rtl_7_tri_i_1(1),
      T => gpio_rtl_7_tri_t_1(1)
    );
gpio_rtl_8_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_8_tri_o_0(0),
      IO => gpio_rtl_8_tri_io(0),
      O => gpio_rtl_8_tri_i_0(0),
      T => gpio_rtl_8_tri_t_0(0)
    );
gpio_rtl_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_tri_o_0(0),
      IO => gpio_rtl_tri_io(0),
      O => gpio_rtl_tri_i_0(0),
      T => gpio_rtl_tri_t_0(0)
    );
gpio_rtl_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_tri_o_1(1),
      IO => gpio_rtl_tri_io(1),
      O => gpio_rtl_tri_i_1(1),
      T => gpio_rtl_tri_t_1(1)
    );
pmodjd_pin10_iobuf: component IOBUF
     port map (
      I => pmodjd_pin10_o,
      IO => pmodjd_pin10_io,
      O => pmodjd_pin10_i,
      T => pmodjd_pin10_t
    );
pmodjd_pin1_iobuf: component IOBUF
     port map (
      I => pmodjd_pin1_o,
      IO => pmodjd_pin1_io,
      O => pmodjd_pin1_i,
      T => pmodjd_pin1_t
    );
pmodjd_pin2_iobuf: component IOBUF
     port map (
      I => pmodjd_pin2_o,
      IO => pmodjd_pin2_io,
      O => pmodjd_pin2_i,
      T => pmodjd_pin2_t
    );
pmodjd_pin3_iobuf: component IOBUF
     port map (
      I => pmodjd_pin3_o,
      IO => pmodjd_pin3_io,
      O => pmodjd_pin3_i,
      T => pmodjd_pin3_t
    );
pmodjd_pin4_iobuf: component IOBUF
     port map (
      I => pmodjd_pin4_o,
      IO => pmodjd_pin4_io,
      O => pmodjd_pin4_i,
      T => pmodjd_pin4_t
    );
pmodjd_pin7_iobuf: component IOBUF
     port map (
      I => pmodjd_pin7_o,
      IO => pmodjd_pin7_io,
      O => pmodjd_pin7_i,
      T => pmodjd_pin7_t
    );
pmodjd_pin8_iobuf: component IOBUF
     port map (
      I => pmodjd_pin8_o,
      IO => pmodjd_pin8_io,
      O => pmodjd_pin8_i,
      T => pmodjd_pin8_t
    );
pmodjd_pin9_iobuf: component IOBUF
     port map (
      I => pmodjd_pin9_o,
      IO => pmodjd_pin9_io,
      O => pmodjd_pin9_i,
      T => pmodjd_pin9_t
    );
end STRUCTURE;
