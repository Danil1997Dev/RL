vsim work.TOP
# vsim work.TOP 
# Start time: 15:28:09 on Feb 23,2021
# Loading sv_std.std
# Loading work.TOP
# Loading work.OQPSK_MOD
# Loading work.MEM_SIGNAL_ROM
# Loading work.COUNT
# Loading work.SHIFT_Q
# Loading work.PRD
# ** Warning: (vsim-2685) [TFMPC] - Too few port connections for 'inst4'.  Expected 6, found 5.
#    Time: 0 ns  Iteration: 0  Instance: /TOP/mod/inst4 File: C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/OQPSK_MOD.sv Line: 33
# ** Warning: (vsim-3015) [PCDPC] - Port size (10) does not match connection size (1) for port 'LP'. The port definition is at: C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/SHIFT_Q.sv(8).
#    Time: 0 ns  Iteration: 0  Instance: /TOP/mod/inst4 File: C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/OQPSK_MOD.sv Line: 33
# ** Warning: (vsim-3722) C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/OQPSK_MOD.sv(33): [TFMPC] - Missing connection for port 'n'.
# ** Warning: (vsim-3015) [PCDPC] - Port size (14) does not match connection size (1) for port 'CNST'. The port definition is at: C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/PRD.sv(4).
#    Time: 0 ns  Iteration: 0  Instance: /TOP/mod/inst5 File: C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/OQPSK_MOD.sv Line: 34
# ** Warning: (vsim-3015) [PCDPC] - Port size (14) does not match connection size (1) for port 'IC'. The port definition is at: C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/PRD.sv(4).
#    Time: 0 ns  Iteration: 0  Instance: /TOP/mod/inst5 File: C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/OQPSK_MOD.sv Line: 34
# ** Warning: (vsim-3015) [PCDPC] - Port size (14) does not match connection size (1) for port 'QS'. The port definition is at: C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/PRD.sv(4).
#    Time: 0 ns  Iteration: 0  Instance: /TOP/mod/inst5 File: C:/intelFPGA/18.1/VRL/OQPSK_MOD/simulation/modelsim/OQPSK_MOD.sv Line: 34
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
