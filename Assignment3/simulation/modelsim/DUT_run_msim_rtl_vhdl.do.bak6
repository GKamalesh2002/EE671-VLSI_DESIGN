transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Sem-7/VLSI_Design/Assignment3/Gates.vhdl}
vcom -93 -work work {D:/Sem-7/VLSI_Design/Assignment3/brentkung_adder.vhdl}
vcom -93 -work work {D:/Sem-7/VLSI_Design/Assignment3/DUT.vhdl}

vcom -93 -work work {D:/Sem-7/VLSI_Design/Assignment3/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
