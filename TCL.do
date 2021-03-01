vsim work.TOP 
Start time: 23:40:33 on Feb 21,2021
Loading sv_std.std
Loading work.TOP
Loading work.OQPSK_MOD
Loading work.MEM_SIGNAL_ROM
Loading work.COUNT
Loading work.SHIFT_Q
Loading work.PRD
mem load -i C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/IP.mem /TOP/mod/iq0/a
mem load -i C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/IN.mem /TOP/mod/iq0/b
mem load -i C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/QP.mem /TOP/mod/iq1/a
mem load -i C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/QN.mem /TOP/mod/iq1/b
mem load -i C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/S.mem /TOP/mod/sc0/a
mem load -i C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/S.mem /TOP/mod/sc1/a
mem load -i C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/C.mem /TOP/mod/sc1/b
mem load -i C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/C.mem /TOP/mod/sc0/b
add wave -position insertpoint  \
sim:/TOP/Clk \
sim:/TOP/Reset \
sim:/TOP/IQ \
sim:/TOP/S