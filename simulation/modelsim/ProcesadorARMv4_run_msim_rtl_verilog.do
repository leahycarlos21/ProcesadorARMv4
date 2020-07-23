transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/testbench.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/programCounter.sv}

