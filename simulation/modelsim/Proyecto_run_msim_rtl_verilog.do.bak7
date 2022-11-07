transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/XorN.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/Suma.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/RightShift.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/Resta.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/Overflow.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/OrN.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/Mux.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/Multiplicacion.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/Modulo.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/LeftShift.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/flag_detector.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/Division.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/Calcu.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/AndN.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/ALU.sv}

vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales {C:/Users/yraul/OneDrive/Documentos/GitHub/Proyecto_TallerDigitales/testCalcu.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testCalcu

add wave *
view structure
view signals
run -all
