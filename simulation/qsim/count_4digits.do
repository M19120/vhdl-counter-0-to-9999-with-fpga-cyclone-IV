onerror {quit -f}
vlib work
vlog -work work count_4digits.vo
vlog -work work count_4digits.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.count_4digits_vlg_vec_tst
vcd file -direction count_4digits.msim.vcd
vcd add -internal count_4digits_vlg_vec_tst/*
vcd add -internal count_4digits_vlg_vec_tst/i1/*
add wave /*
run -all
