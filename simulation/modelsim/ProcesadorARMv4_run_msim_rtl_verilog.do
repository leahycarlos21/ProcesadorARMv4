transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/MEM_INST.v}
vlog -vlog01compat -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/MEM_DATA.v}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/bancoRegistros.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/testbench.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/Sign_Extend.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/sum_rest.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/and_.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/or_.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/xor_.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/not_.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/shift_left_logical.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/shift_right_logical.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/aritm_shift_right.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/flag_Zero.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/flag_Negativo.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/flag_Overflow.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/flagMux.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/mux_ALU.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/ALU.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/sumador.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/mux_.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/programCounter.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/unidadControl.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/decoALU.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/registro.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/logic_Condicion.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/armv4.sv}
vlog -sv -work work +incdir+D:/leahycarlos21/Documents/TEC/I\ SEM\ 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4 {D:/leahycarlos21/Documents/TEC/I SEM 2020/TallerDisenoLogico/ProyectoFinal/ProcesadorARMv4/general.sv}

