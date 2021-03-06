onerror {exit -code 1}
vlib work
vlog -work work tes_013.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.tes_013_vlg_vec_tst -voptargs="+acc"
vcd file -direction tes_013.msim.vcd
vcd add -internal tes_013_vlg_vec_tst/*
vcd add -internal tes_013_vlg_vec_tst/i1/*
run -all
quit -f
