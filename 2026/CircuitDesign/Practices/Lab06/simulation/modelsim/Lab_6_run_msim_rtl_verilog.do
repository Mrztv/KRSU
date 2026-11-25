transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/timur/Documents/KRSU/2026/CircuitDesign/Practices/Lab06 {C:/Users/timur/Documents/KRSU/2026/CircuitDesign/Practices/Lab06/lab06.v}
vlog -vlog01compat -work work +incdir+C:/Users/timur/Documents/KRSU/2026/CircuitDesign/Practices/Lab06 {C:/Users/timur/Documents/KRSU/2026/CircuitDesign/Practices/Lab06/bcd_converter.v}
vlog -vlog01compat -work work +incdir+C:/Users/timur/Documents/KRSU/2026/CircuitDesign/Practices/Lab06 {C:/Users/timur/Documents/KRSU/2026/CircuitDesign/Practices/Lab06/seven_seg_decoder.v}

