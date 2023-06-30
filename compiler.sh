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
	mips-linux-gnu-gcc -S -o $gcc_out $1 -mno-explicit-relocs -fno-stack-protector -msoft-float 2> mips_gcc.log
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


