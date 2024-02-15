#! /bin/bash

echo "number of arguments: $#"

# checks if arguments were provided
if [ $# -ne 1 ];
then
	# $1 source file to be compiled
	echo "Usage $0 SOURCE_FILE"
	exit 1
fi

echo "OS=$OSTYPE"

# mips-linux-gnu-gcc output file repeats source file name but changes extension to ".s"
gcc_out="${1%.*}.s"

echo "gcc output will be at file $gcc_out"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	# '2>' means redirect the standard ERROR output to file
	# '>' means redirect the standard output to file
	# mips-linux-gnu-gcc -O1 -fno-toplevel-reorder -S -o $gcc_out $1 -march=mips32 -mno-explicit-relocs  -fno-omit-frame-pointer -fno-stack-protector -msoft-float 2> mips_gcc.log
	flags="-fssa-phiopt -fssa-backprop -fsplit-wide-types -fshrink-wrap-separate -fshrink-wrap -fomit-frame-pointer -fmove-loop-invariants -fmerge-constants -fauto-inc-dec -fbranch-count-reg -fcombine-stack-adjustments -fcompare-elim -fcprop-registers -fdefer-pop -fdelayed-branch -fguess-branch-probability -finline-functions-called-once -fif-conversion2 -fif-conversion -funit-at-a-time -ftree-ter -ftree-sra -ftree-slsr -ftree-scev-cprop -ftree-pta -ftree-phiprop -ftree-fre -ftree-copy-prop -ftree-coalesce-vars -ftree-ch -ftree-ccp -ftree-bit-ccp -fipa-reference-addressable -fipa-reference -fipa-pure-const -fipa-profile -ftree-sink -ftree-dominator-opts -ftree-forwprop -ftree-dse -ftree-dce -fdse -fdce -freorder-blocks -fforward-propagate -fno-toplevel-reorder -march=mips32 -mno-explicit-relocs -fno-omit-frame-pointer -fno-stack-protector -msoft-float"
	mips-linux-gnu-gcc $flags -S -o $gcc_out $1 2> mips_gcc.log
elif [[ "$OSTYPE" == "msys" ]]; then
	echo "Unsupported OS"
	exit 5
else
	echo "Unsupported OS"
	exit 5
fi
	
gcc_ret=$?
echo "mips compiler exited with code: $gcc_ret"

if [ $gcc_ret -ne 0 ];
then
	exit 2
fi

./translate_mips2processor_demo.py $gcc_out  > translator.log

translation_ret=$?
echo "translation script exited with code: $translation_ret"

if [ $translation_ret -ne 0 ];
then
	exit 3
fi

# output of translate_mips2processor_demo.py will be at main.s
./assembler main.s > assembler.log
assembly_ret=$?

echo "assembler exited with code: $assembly_ret"

if [ $assembly_ret -ne 0 ];
then
	exit 4
fi

echo "Binary file generated!"

xxd -e -u executable.bin > executable.bin.txt

echo ""
echo "Successful compilation!"

exit 0


