# microprocessor
small and simple MIPS processor, written in VHDL

![processor_demo_diagram](https://user-images.githubusercontent.com/19754679/198846429-f12997f6-c96a-46dd-a934-3f044b6e0c1c.svg)

* Single cycle datapath.

* It fetches instructions during rinsig edge of clock, accesses register file, perform operations and accesses a D-cache (mini_ram),
during the falling edge it will update the register file.

* It is based upon the slides used in EE375 - Computer Architecture w/ microcontrollers, which I took at West Point during my exchange in 2017. It is simple and meant to help the learning.

* For the second release, I added a FPU and some floating point instructions (fadd, fsub, fmul, fdiv).

* My project is built inside Quartus Prime Lite and I am using Modelsim for simulation.

* I am using Altera DE2-115 board for the tests. 

* For more information, go to the Wiki https://github.com/RenanPicoli/microprocessor/wiki
