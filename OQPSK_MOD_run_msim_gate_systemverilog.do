transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {OQPSK_MOD.svo}

vlog -vlog01compat -work work +incdir+C:/intelFPGA/18.1/VRL/OQPSK_MOD {C:/intelFPGA/18.1/VRL/OQPSK_MOD/OQPSK_MOD.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L cyclonev_ver -L lpm_ver -L sgate_ver -L cyclonev_hssi_ver -L altera_mf_ver -L cyclonev_pcie_hip_ver -L gate_work -L work -voptargs="+acc"  TOP

add wave *
view structure
view signals
run -all
