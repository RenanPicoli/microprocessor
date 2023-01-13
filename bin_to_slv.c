/*
	Generates binary files from assembly code (extension .s) for SRAM programming
	Generates a single file with 512Kx16bit data refering to data_in (input_vectors.txt) and 512Kx16 bit refering to desired values (desired_vectors.txt)
	Values are 32 bit wide, but LSB are stored in address 2n, and MSB are stored in addr 2n+1
	Example: data_in = 0x368F75BF
	addr[0]= 0x75BF
	addr[1]= 0x368F
	This file will fill completely DE2-115 SRAM as I move the assembly to that memory
	It will be downloaded using DE2 Control Panel
*/
//for printf, fopen, fgets, fwrite, etc.
#include <stdio.h>

//for malloc, strtod
#include <stdlib.h>

//for UINT_MAX
#include <limits.h>

//for strlen, strcpy, strncpy
#include <string.h>

//tolower, toupper
#include <ctype.h>

// include bool type
#include <stdbool.h>

//number of instructions to store
//256 = 0x100
#define N_INSTR 256

//maximum length of line in text files
#define MAX_STR_LENGTH 200

int main(int argc,char ** argv){
	printf("Started\n");
	FILE *fp;//file pointer for read
	FILE *of;//file pointer for outputfile

	if(argc != 2){
		printf("Uso: %s FILE\n",argv[0]);
		return 1;
	}

	fp=fopen(argv[1],"rb");//NOTE THE 'b' in "rb" mode: opens a BINARY file for read, otherwise, will line ending chars
	if(fp==NULL){
		printf("Erro ao criar o arquivo de saída!\n");
		return 1;
	}
	
	of=fopen("./instruction.vhd","w");
	if(of==NULL){
		printf("Erro ao criar o arquivo de saída!\n");
		return 2;
	}
	int buffer;
	printf("Parsing %s\n",argv[1]);
	int i=0;
	while (!feof(fp)){
		fread(&buffer,sizeof(int),1,fp);
		fprintf(of,"%d=> x\"%08X\",\n",i,buffer);
		i++;
	}
	buffer=0;
	fprintf(of,"others=> x\"%08X\"\n",buffer);
	
	fclose(fp);
	fclose(of);
	return 0;
}
