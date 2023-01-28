set_property PACKAGE_PIN N11 [get_ports i_clk]
set_property IOSTANDARD LVTTL [get_ports i_clk]
set_property PACKAGE_PIN T2 [get_ports i_rst_n]
set_property IOSTANDARD LVTTL [get_ports i_rst_n]
set_property PACKAGE_PIN E6 [get_ports o_pwm]
set_property IOSTANDARD LVTTL [get_ports o_pwm]
set_property PACKAGE_PIN P10 [get_ports i_uart_rx]
set_property IOSTANDARD LVTTL [get_ports i_uart_rx]


set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets i_clk_IBUF_BUFG]
