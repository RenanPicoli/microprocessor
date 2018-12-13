# microprocessor
small and simple MIPS processor, written in VHDL

* It fetches instructions during rinsig edge of clock, accesses register file, perform operations and accesses a D-cache (mini_ram),
during the falling edge it will update the register file.

* It is based upon the slides used in EE375 - Computer Architecture w/ microcontrollers, wich I took at West Point during my exchange in 2017. It is simple and meant to help the learning.

* My project is built inside Quartus Prime Lite and I am using Modelsim for simulation (although I did not get the processor to work in simulation).
