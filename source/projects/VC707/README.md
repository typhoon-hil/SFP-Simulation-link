# Documentation
* Technical details

# Documentation
* Technical details

  When you connect two boards together, according to vc707 documentation, J6 must be connected in order for SFP to work. By default it is not.

  To recreate project, navigate to source/projects/VC707/hssl_ctrl_test_loopback/ and open hssl_ctrl_test_loopback.xpr with Vivado 2019.1. Generate bitstream and boot it on the vc707 board. After bitstream is ready, there is an option to put it into flash memory(mt28gu01gaax1e-bpi-x16) of vc707 if desired.
  Run following tcl command in your current vc707 Project's Tcl Console to create .mcs and .prm files:

    write_cfgmem  -format mcs -size 128 -interface BPIx16 -loadbit {up 0x00000000 "[location_of_your_bit_file]" } -file "[directory_where_you_want_your_mcs_be_created]"

  Hardware Manager -> Add Configuration Memory Device -> Program Configuration Memory Device. Your flash should take about 2 minutes to set and you are ready to go. Don't forget to remove jtag cable if you want to boot from flash memory!

  * Description

  <b>hssl_ctrl_test_1l_loopback: </b> In case of loopback, transmission(RX -> TX) starts when last data in stream is received. Received data is also written to the local RAM. 

  <b>hssl_ctrl_test_1l: </b> It generates transaction every ONE_SEC_TC counted. Data is sent to every device and value is simply increased over every transaction.

  ![](https://github.com/typhoon-hil/SFP-Simulation-link)