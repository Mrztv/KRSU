onerror {exit -code 1}
vlib work
vlog -work work lab3_3.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.pos_block_vlg_vec_tst -voptargs="+acc"
vcd file -direction lab3_3.msim.vcd
vcd add -internal pos_block_vlg_vec_tst/*
vcd add -internal pos_block_vlg_vec_tst/i1/*
run -all
quit -f
