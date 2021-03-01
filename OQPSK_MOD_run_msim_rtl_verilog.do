transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim{C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim/COUNT.sv}
vlog -sv -work work +incdir+C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim {C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim/OQPSK_MOD.sv}
vlog -sv -work work +incdir+C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim {C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim/PRD.sv}
vlog -sv -work work +incdir+C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim {C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim/SHIFT_Q.sv}
vlog -sv -work work +incdir+C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim {C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim/MEM_SIGNAL_ROM.sv}

vlog -vlog01compat -work work +incdir+C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim{C:\intelFPGA\18.1\VRL\OQPSK_MOD\simulation\modelsim/OQPSK_MOD.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  TOP

add wave *
view structure
view signals
run -all
