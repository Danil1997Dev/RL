
transcript on
cd C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim
# reading modelsim.ini
vlib work
vlog  -sv +incdir+./ ./COUNT.sv
vsim -voptargs="acc" COUNT 
add wawe /COUNT/*
wawe zoom full