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

//number of instructions to store
//256 = 0x100
#define N_INSTR 256

//maximum length of line in text files
#define MAX_STR_LENGTH 200

//for the opcode dictionary
typedef struct
{
	char name[11];//up to 10 chars and one null byte
	char binary_string[33];//string containing up to 6 chars in {'0','1'} and one null byte
}node;

//function to convert hex strings to unsigned int
unsigned int hex2uint(char* str);

//function to convert hex strings to binary string
char* hex2bin(char* str);


//function to convert bin strings to unsigned int
unsigned int bin2uint(char* str);

//function to convert unsigned int to bin strings
//L is the number of bits to use (does not include \0)
char* uint2bin(unsigned int n, unsigned int L);

//function to return index of string in dictionary names, or -1 if it fails
int find(node* dict, int dict_size, char* str);

//prints the dictionary
void print_dict(node* dict,unsigned int L);

int main(int argc,char *argv[]){
	printf("Started\n");
	FILE *fp;//file pointer for read
	FILE *fp_types;//file pointer for read, contains the opcodes and codes for registers
	FILE *of;//file pointer for outputfile

	if(argc != 2){
		printf("Uso: assembler FILE\n");
		return 1;
	}

	of=fopen("./executable.bin","wb");//NOTE THE 'b' in "wb" mode: opens a BINARY file for write, otherwise, will line ending chars
	if(of==NULL){
		printf("Erro ao criar o arquivo de saída!\n");
		return 1;
	}
	
	node* dictionary=NULL;
	char* tmp_str=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store lines read from files
	char* instruction_str=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store instructions read from files
	char* data_str=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store data (constants) read from files
	char* comment_str=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store single line comment read from files
	unsigned int *ptr=malloc(1*sizeof(unsigned int));//temporary pointer to store instruction generated from a single line of fp

	char ** R_type_mnemonics=calloc(64,sizeof(char*));
	char ** I_type_mnemonics=calloc(64,sizeof(char*));
	char ** J_type_mnemonics=calloc(64,sizeof(char*));
	char ** O_type_mnemonics=calloc(64,sizeof(char*));
	char ** P_type_mnemonics=calloc(64,sizeof(char*));
	char ** M_type_mnemonics=calloc(64,sizeof(char*));
	char ** L_type_mnemonics=calloc(64,sizeof(char*));
	char ** S_type_mnemonics=calloc(64,sizeof(char*));

	for(int k=0;k<64;k++){
		R_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		I_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		J_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		O_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		P_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		M_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		L_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		S_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
	}

	char **s=calloc(4,sizeof(char*));
	s[0]=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store lines read from files
	s[1]=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store lines read from files
	s[2]=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store lines read from files
	s[3]=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store lines read from files
	unsigned int instruction=0;//binary encoded
	if(ptr==NULL){
		printf("Erro ao alocar a memória para o ponteiro ptr\n");
		return 5;
	}
	if(tmp_str==NULL||instruction_str==NULL||data_str==NULL||comment_str==NULL){
		printf("Erro ao alocar a memória para o ponteiro tmp_str ou instruction_str ou data_str ou comment_str\n");
		return 6;
	}
	fp=fopen(argv[1],"r");//instructions will only be read
	fp_types=fopen("./assembly_syntax.txt","r");//instructions will only be read
	if(fp==NULL){
		printf("Erro ao ler o arquivo %s\n",argv[1]);
		return 2;
	}
	if(fp_types==NULL){
		printf("Erro ao ler o arquivo assembly_syntax.txt\n");
		return 3;
	}
	int sscanf_retval=0;//to store sscanf return value to check if it was successful
	int fwrite_retval=0;//to store fwrite return value to check if it was successful
	int sscanf_retval_bin=0;
	int sscanf_retval_hex=0;

	printf("Parsing assembly_syntax.txt\n");
	int j=0;
	while (!feof(fp_types)){
		fgets((char*)tmp_str,MAX_STR_LENGTH,fp_types);//reads a single line of fp_types, terminated with '\n', expects at most 199 chars

		//printf("tmp_str=%s\n",tmp_str);
		sscanf_retval=sscanf(tmp_str,"R_type_mnemonics := {%[a-zA-Z,_]};",s[0]);
		if(sscanf_retval==1){
			//printf("s[0]=%s\n",s[0]);
			//n: index of chars in s[0] (list)
			//k: index of word in R_type_mnemonics
			int m=0;int n=0;int k=0;
			for(;k<64 && (s[0][n]!='\0' && s[0][n]!='\n');n++){
				if(s[0][n]!=',' && s[0][n]!='\0' && s[0][n]!='\n'){
					R_type_mnemonics[k][m]=s[0][n];
					m++;
				}else{
					R_type_mnemonics[k][m]='\0';
					//printf("R_type_mnemonics[k]=%s\n",R_type_mnemonics[k]);
					k++;
					m=0;
				}
			}
		}else{
			sscanf_retval=sscanf(tmp_str,"%[a-zA-Z0-9&\"_ ] := \"%[01]\" ;",s[0],s[1]);
			if(sscanf_retval>1){
				//printf("Opcode j=%d: %s := %s\n",j,s[0],s[1]);
				dictionary = realloc(dictionary,(j+1)*sizeof(node));
				//TODO: convert s0, s1 to lower case
				strncpy(dictionary[j].name,s[0],11);
				strncpy(dictionary[j].binary_string,s[1],7);
				printf("Opcode j=%d: %s := %s\n",j,dictionary[j].name,dictionary[j].binary_string);
				j++;
			}
	
		}

		fgetc(fp_types);//reads and discards the newline
	}
	printf("R_type instructions:\n");
	for(int k=0;k<64;k++){
		printf("\t%s\n",R_type_mnemonics[k]);
	}
	printf("assembly_syntax.txt parsed!\n");
	int base_dict_size=j;//base dictionary size (only language and registers)
	//print_dict(dictionary,j);

	printf("Parsing %s\n",argv[1]);
	int i=0;
	char binary_string[33];//string containing 32 chars in {'0','1'} and one null byte
	char termination_char;
	//processes initial comments (OPTIONAL section)
	while (!feof(fp)){
		fgets((char*)tmp_str,MAX_STR_LENGTH,fp);//reads a single line of fp, terminated with '\n', expects at most 199 chars
		sscanf_retval=sscanf(tmp_str,"; %s",comment_str);//reads a single line comment
		//TODO: convert instruction_str to lower case
		if(sscanf_retval==0){//fails to match
			break;
		}
	}
	
	printf("%s\n",tmp_str);
	//parses the instruction or data declaration
	sscanf_retval=sscanf(tmp_str,"%s %s",s[0],s[1]);
	if(strcmp(s[0],".section")==0){
		if(strcmp(s[1],"data")==0){
			printf("Found data section!\n");
			//loop for processing constant declarations
			//adds the constants to the dictionary
			while (!feof(fp)){
				fgets((char*)tmp_str,MAX_STR_LENGTH,fp);//reads a single line of fp, terminated with '\n', expects at most 199 chars
				sscanf_retval=sscanf(tmp_str,"%s %s; %*s",s[0],s[1]);
				//checks for beginning of instruction section
				if(strcmp(s[0],".section")==0){
					if(strcmp(s[1],"code")==0){
						printf("Found code section!\n");
						break;//breaks the loop, goes to print_dict
					}else{
						printf("Invalid section: %s\n",tmp_str);
						return -1;
					}
				}else{//expects constant declaration
					sscanf_retval=sscanf(tmp_str,"%s %[a-fA-F0-9xX+-]; %*s",s[0],s[1]);//parses the constant declaration
					printf("%s\ns[0]=%s\ns[1]=%s\n",tmp_str,s[0],s[1]);
					dictionary = realloc(dictionary,(j+1)*sizeof(node));
					//TODO: convert s0, s1 to lower case
					strncpy(dictionary[j].name,s[0],11);
					//converts s[1] to a binary string

					unsigned int tmp;
					//decimal number
					if(s[1][0]!='x'){
						tmp=strtod(s[1],NULL);
						strncpy(dictionary[j].binary_string,uint2bin(tmp,32),32);
					}else{//hex number
						strncpy(dictionary[j].binary_string,hex2bin(&(s[1][1])),32);
					}
					printf("Opcode j=%d: %s := %s\n",j,dictionary[j].name,dictionary[j].binary_string);
					j++;
				}
			}
		}
	}
	print_dict(dictionary,j);
	//return	0;

	//processes instructions ONLY
	printf("\nProcessing instructions\n");
	while (!feof(fp)){
		fgets((char*)tmp_str,MAX_STR_LENGTH,fp);//reads a single line of fp, terminated with '\n', expects at most 199 chars
		sscanf_retval=sscanf(tmp_str,"%[]a-zA-Z0-9.+_[ -] %1[:;] %*s",instruction_str,&termination_char);//reads a single line of fp, with no spaces, terminated with '\n'
		strncat(instruction_str,&termination_char,1);//inserts back the termination_char
		printf("\ninstruction_str=%s\n",instruction_str);
		//TODO: convert instruction_str to lower case
		if(sscanf_retval>1){
			sscanf_retval=sscanf(instruction_str,"%s %s %s %s",s[0],s[1],s[2],s[3]);//parses the instruction
			binary_string[0]='\0';
			printf("Instrução i=%d: ",i);

			printf("%s ",s[0]);
			int pos=find(dictionary,j,s[0]);
			if(pos!=-1){
				strcat(binary_string,dictionary[pos].binary_string);//concatenates opcode, unless it is of R_type

				//TODO: test for load/store

				//normal instructions arguments (addi,subi,ori,push,pop,ret,ldrv,ldfp,etc)
				for(int k=1;k<sscanf_retval;k++){
					//remove the termination char
					if(k==sscanf_retval-1){
						if(termination_char==';'){
						sscanf(s[k],"%[a-zA-Z0-9_];",s[k]);//removes the punctuation
						}else{
							printf("line %d: Expected ; instead of %c\n",i,termination_char);
							return -1;
						}
					}

					pos=find(dictionary,j,s[k]);
					if(pos!=-1){
						if(pos >= base_dict_size){//it is a constant in data section or label
							//must adjust the size to fit in instruction
							int lsb_to_use= strlen(dictionary[pos].binary_string)-(32 - strlen(binary_string));//how many bits of constant will be used
							printf("\nbinary_string=%s\n",binary_string);
							printf("\nlsb_to_use=%d\n",lsb_to_use);
							strcat(binary_string,(dictionary[pos].binary_string)+(strlen(dictionary[pos].binary_string)-lsb_to_use)*sizeof(char));
						}else{//base dictionary word
							strcat(binary_string,dictionary[pos].binary_string);
						}
					}else{
						//test for hex constant
						sscanf_retval_hex = sscanf(s[k],"x\"%[0-9a-fA-F]\"",s[k]);
						if(sscanf_retval_hex!=0){//is hex constant
							strcat(binary_string,hex2bin(s[k]));
						}else{
							sscanf_retval_bin = sscanf(s[k],"\"%[01]\"",s[k]);
							if(sscanf_retval_bin!=0){//is bin constant
								strcat(binary_string,s[k]);
							}else{
								printf("\nConstante inválida: %s\n",s[k]);
								return -1;
							}
						}
					}
				}
				//after parsing normal instruction arguments,
				//there might be unused bits, those should be filled with zeros
				int tmp_instr_size=strlen(binary_string);
				for (int k=0;k<32-tmp_instr_size;k++){
					strcat(binary_string,"0");
				}
			}else{
				//test for R_type instruction
				int m=0;
				for(;m<64;m++){
					if(strcmp(s[0],R_type_mnemonics[m])==0)
						break;
				}
				//printf("Found %s in R_type_mnemonics at position %d\n",s[0],m);
				if(m<64){//s[0] is of R_type
					printf("R_type found in dictionary at position %d",find(dictionary,j,"R_type"));
					strcat(binary_string,dictionary[find(dictionary,j,"R_type")].binary_string);
					printf("opcode: %s",binary_string);
					for(int i=1;i<sscanf_retval;i++){
						//printf("%s ",s[i]);
						//remove the termination char
						if(i==sscanf_retval-1){
							if(termination_char==';'){
							sscanf(s[i],"%[a-zA-Z0-9_];",s[i]);//removes the punctuation
							}else{
								printf("line %d: Expected ; instead of %c\n",i,termination_char);
								return -1;
							}
						}
						pos=find(dictionary,j,s[i]);
						if(pos==-1){
							printf("Invalid argument %s\n",s[i]);
							return -1;
						}
						strcat(binary_string,dictionary[pos].binary_string);
					}
					strcat(binary_string,"00000");//shift_amount field (not used)
					strcat(binary_string,dictionary[find(dictionary,j,strcat(s[0],"_funct"))].binary_string);
				}else{
					//INVALID OPCODE
					printf("Unknow opcode: %s\n",s[0]);
					return -1;
				}
			}

			printf(" --> %s\n",binary_string);
			if(strlen(binary_string)!=32){
				printf("Erro de conversão, instrução não tem 32 bits! (%s possui %ld bits)\n",binary_string,strlen(binary_string));
				return -2;
			}
			instruction = bin2uint(binary_string);
			fwrite_retval=fwrite(&instruction,sizeof(unsigned int),1,of);//writes the 32bit unsigned int
			if(fwrite_retval!=1){
				printf("Erro de fwrite!\n");
				return 8;
			}
		}
		fgetc(fp);//reads and discards the newline
		i++;
	}
	printf("%s parsed!\n",argv[1]);
	fclose(fp);//closes code file
	fclose(fp_types);//closes my_types.vhd

	//close output file
	fclose(of);
	printf("Arquivo \"executable\" gerado com sucesso!\n");
	free(dictionary);
	free(tmp_str);
	free(instruction_str);
	free(comment_str);
	free(ptr);
	free(s[0]);
	free(s[1]);
	free(s[2]);
	free(s[3]);
	free(s);
	return 0;
}

//function to return index of  string in dictionary names, or -1 if fails
int find(node* dict, int dict_size, char* str){
	for(int i=0;i<dict_size;i++){
		if(strcmp(str,dict[i].name)==0)
			return i;
	}
	return -1;
}

//function to convert hex strings to binary string
char* hex2bin(char* str){
	int L=strlen(str);//string length, does not count the '\0'
	char* bin_str=calloc(4*L+1,sizeof(char));
	unsigned int numeric = hex2uint(str);
	printf("hex2bin: conversão: %s => %d\n",str,numeric);
	
	for(int i=0;i <= 4*L-1;i++){//goes from most significant digit to least significant (left to right)
		if(numeric & (1<<(4*L-1-i))){
			bin_str[i] = '1';
		}else{
			bin_str[i] = '0';
		}
	}
	return bin_str;
}

//function to convert hex strings to unsigned int
unsigned int hex2uint(char* str){
	unsigned int retval=0;
	int L=strlen(str);//string length, does not count the '\0'
	
	for(int i=0;i <= L-1;i++){//goes from most significant digit to least significant (left to right)
		//printf("hex2uint: i: %d L:%d char: %c\n",i,L,str[i]);
		if(str[i] >= '0' && str[i] <= '9'){//detects numeric char
			retval = 16*retval + (str[i]-'0');
		}else if(str[i] >= 'A' && str[i] <= 'F'){//detects alfabetic char (upper case)
			retval = 16*retval + (str[i]-'A'+10);
		}else if(str[i] >= 'a' && str[i] <= 'f'){//detects alfabetic char (lower case)
			retval = 16*retval + (str[i]-'a'+10);
		}else{//invalid char detected
			retval = UINT_MAX;
			return retval;
		}
	}
	printf("hex2uint returns: %X\n",retval);
	return retval;
}

//function to convert bin strings to unsigned int
unsigned int bin2uint(char* str){
	unsigned int retval=0;
	int L=strlen(str);//string length, does not count the '\0'
	
	for(int i=0;i <= L-1;i++){//goes from most significant digit to least significant (left to right)
		if(str[i] == '1'){//detects '1'
			retval = 2*retval + 1;
		}else{//'0' detected
			retval = 2*retval;
		}
	}
	return retval;
}

//function to convert unsigned int to bin strings
//L is the number of bits to use (does not include \0)
char* uint2bin(unsigned int n, unsigned int L){
	char* bin_str=calloc(L+1,sizeof(char));// +1 for the \0
	
	for(int i=0;i <= L-1;i++){//goes from most significant digit to least significant (left to right)
		if(n & (1<<(L-1-i))){
			bin_str[i] = '1';
		}else{
			bin_str[i] = '0';
		}
	}
	return bin_str;
}

//prints the dictionary
void print_dict(node* dict,unsigned int L){
	//unsigned int L=sizeof(dict)/sizeof(node);
	printf("Dictionary's size: %d\n",L);
	for(int i=0;i<L;i++){
		printf("{%s,%s}\n",dict[i].name,dict[i].binary_string);
	}
	return;
}
