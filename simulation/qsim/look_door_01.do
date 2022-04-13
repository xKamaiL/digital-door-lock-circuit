onerror {quit -f}
vlib work
vlog -work work look_door_01.vo
vlog -work work look_door_01.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.look_door_01_vlg_vec_tst
vcd file -direction look_door_01.msim.vcd
vcd add -internal look_door_01_vlg_vec_tst/*
vcd add -internal look_door_01_vlg_vec_tst/i1/*
add wave /*
run -all
