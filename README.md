# microprocessor
small and simple MIPS processor, written in VHDL

![processor_demo_diagram](https://user-images.githubusercontent.com/19754679/198846429-f12997f6-c96a-46dd-a934-3f044b6e0c1c.svg)

![processor_demo_timing](https://user-images.githubusercontent.com/19754679/198850892-ba2ec52a-6975-4611-bc4e-1ac79194e33d.svg)

* Single cycle datapath (branch  reference-single-cycle) or 2-stage pipeline (default branch main-pipeline).

* Instructions are retrieved from a synchronous RAM memory (mini_rom or i-cache). Instruction appear on the bus after instruction address is sampled by the rising edge of CLK_rom (if there is no i-cache miss). 

* It is based upon the slides used in EE375 - Computer Architecture w/ microcontrollers, which I took at West Point during my exchange in 2017. It is simple and meant to help the learning.

* I added a FPU and some floating point instructions (fadd, fsub, fmul, fdiv).

* This project is built inside Quartus Prime Lite and I am using Modelsim for simulation.

* I am using Altera DE2-115 board for the tests.

* This repo provides some C code examples, a bash scritp called compile.sh. This "compiler" uses mips-linux-gnu-gcc to compile for MIPS assembly, then python script translate_mips2processor_demo.py converts to the custom assembly. Then a executable called "assembler" (written in C) generates the binary executable.

* For more information, specially regarding the custom assembly language, refer to the Wiki https://github.com/RenanPicoli/microprocessor/wiki

## branches
* main-pipeline: default branch.
  * 2-stage pipeline
  * First stage: Decode-Execute (DE). It fetches instructions during rising edge of clock, reads register file, perform operations (FPU or ALU).
  * Second stage: Memory-Writeback (MW). It accesses the memory or D-cache and writes the result of ALU/FPU operation or memory read to register file (data will be written to register during the next clock edge after instruction passes through MW stage).
* reference-single-cycle:
  * It fetches instructions during rising edge of clock, accesses register file, perform operations and accesses the memory or D-cache and writes the result of ALU/FPU operation or memory read to register file, in the next rising edge it will update the register file.
