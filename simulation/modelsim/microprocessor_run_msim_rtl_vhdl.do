transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/multiplier.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/full_adder.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/my_types.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/mini_ram.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/d_flip_flop.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/control_unit.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/mux.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/ALU.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/microprocessor.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/reg_file.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/demux.vhd}
vcom -2008 -work work {D:/Users/renan/Documents/FPGA projects/microprocessor/mini_rom.vhd}

