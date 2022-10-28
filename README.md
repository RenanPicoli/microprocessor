# microprocessor
small and simple MIPS processor, written in VHDL

![processor_demo_diagram](https://user-images.githubusercontent.com/19754679/198656644-863de509-2e4f-4a0a-afcc-c0e799dcba09.svg)

* Single cycle datapath.

* It fetches instructions during rinsig edge of clock, accesses register file, perform operations and accesses a D-cache (mini_ram),
during the falling edge it will update the register file.

* It is based upon the slides used in EE375 - Computer Architecture w/ microcontrollers, which I took at West Point during my exchange in 2017. It is simple and meant to help the learning.

* For the second release, I added a FPU and some floating point instructions (fadd, fsub, fmul, fdiv).

* My project is built inside Quartus Prime Lite and I am using Modelsim for simulation.

* I am using Altera DE2-115 board for the tests. 

* For more information, go to the Wiki https://github.com/RenanPicoli/microprocessor/wiki
