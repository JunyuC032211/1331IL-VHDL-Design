transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Slim/Documents/VHDL/Lab2/CPU_Package.vhd}
vcom -93 -work work {C:/Users/Slim/Documents/VHDL/Lab2/RW_MEMORY.vhd}

vcom -93 -work work {C:/Users/Slim/Documents/VHDL/Lab2/RegisterFile_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  RegisterFile_tb

add wave *
view structure
view signals
run 100 ns
