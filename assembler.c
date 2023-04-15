/*
	Generates binary files from assembly code (extension .s) for SRAM programming
	Values are 32 bit wide, but LSB are stored in address 2n, and MSB are stored in addr 2n+1
	Example: data_in = 0x368F75BF
	addr[0]= 0x75BF
	addr[1]= 0x368F
	This file will be downloaded to DE2-115 SRAM
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

//for the opcode dictionary
typedef struct
{
	char name[100];//up to 10 chars and one null byte
	char binary_string[33];//string containing up to 6 chars in {'0','1'} and one null byte
}node;

//for the insertion of unresolved instructions
typedef struct
{
	int line_number;//up to 10 chars and one null byte
	char * instruction_str;//string containing up to 6 chars in {'0','1'} and one null byte
}code_line;

//function to convert hex strings to unsigned int
unsigned int hex2uint(char* str);

// tests if it is a string of N hexadecimal digits
bool is_hex(char* str,int N);

//function to convert hex strings to binary string
char* hex2bin(char* str);

//function to convert bin strings to unsigned int
unsigned int bin2uint(char* str);

//function to convert unsigned int to bin strings
//L is the number of bits to use (does not include \0)
char* uint2bin(unsigned int n, unsigned int L);

//function to return index of string in dictionary names, or -1 if it fails
int find(node* dict, int dict_size, char* str);

//checks if a string is opcode
bool is_opcode(char* str);

//prints the dictionary
void print_dict(node* dict,unsigned int L);

//mounts the binary string for a R_type instruction
void R_type_parse(char *binary_string,char *instruction_str);

//mounts the binary string for a I_type instruction
void I_type_parse(char *binary_string,char *instruction_str,unsigned int base_dict_size);

//mounts the binary string for a B_type instruction
void B_type_parse(char *binary_string,char *instruction_str,unsigned int base_dict_size);

//mounts the binary string for a J_type instruction
void J_type_parse(char *binary_string,char *instruction_str,unsigned int base_dict_size,unsigned int line_number);

//mounts the binary string for a O_type instruction
void O_type_parse(char *binary_string,char *instruction_str);

//mounts the binary string for a P_type instruction
void P_type_parse(char *binary_string,char *instruction_str);

//mounts the binary string for a M_type instruction
void M_type_parse(char *binary_string,char *instruction_str);

//mounts the binary string for a L_type instruction
void L_type_parse(char *binary_string,char *instruction_str,unsigned int base_dict_size);

//mounts the binary string for a S_type instruction
void S_type_parse(char *binary_string,char *instruction_str,unsigned int base_dict_size);

//searches for a given mnemonic in a vector of mnemonics
int find_mnemonic_in_vector(char *opcode, char ** mnemonics_vector);

//extracts mnemonics in string of assembly_syntax and store then in a vector of char*
int extract_mnemonics_to_vector(char *list_of_opcodes,const char *string_type, char ** mnemonics_vector);

//global variables
char **s;
node* dictionary=NULL;
unsigned int dictionary_size=0;
code_line* unresolved_instructions=NULL;//vector of the instructions marked for later LABEL resolution 
unsigned int unresolved_instructions_size=0;
char **binary_string=NULL;

char ** R_type_mnemonics;
char ** I_type_mnemonics;
char ** B_type_mnemonics;
char ** J_type_mnemonics;
char ** O_type_mnemonics;
char ** P_type_mnemonics;
char ** M_type_mnemonics;
char ** L_type_mnemonics;
char ** S_type_mnemonics;

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
	
	char* tmp_str=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store lines read from files
	char* instruction_str=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store instructions read from files
	char* tmp_instruction_str=NULL;
	const char* beginning_of_allocated_str = instruction_str;
	char* data_str=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store data (constants) read from files
	char* comment_str=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store single line comment read from files
	unsigned int *ptr=malloc(1*sizeof(unsigned int));//temporary pointer to store instruction generated from a single line of fp

	R_type_mnemonics=calloc(64,sizeof(char*));
	I_type_mnemonics=calloc(64,sizeof(char*));
	B_type_mnemonics=calloc(64,sizeof(char*));
	J_type_mnemonics=calloc(64,sizeof(char*));
	O_type_mnemonics=calloc(64,sizeof(char*));
	P_type_mnemonics=calloc(64,sizeof(char*));
	M_type_mnemonics=calloc(64,sizeof(char*));
	L_type_mnemonics=calloc(64,sizeof(char*));
	S_type_mnemonics=calloc(64,sizeof(char*));

	for(int k=0;k<64;k++){
		R_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		I_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		B_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		J_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		O_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		P_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		M_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		L_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
		S_type_mnemonics[k]=calloc(6,sizeof(char));//5 chars of mnemonics + '\0'
	}

	s=calloc(4,sizeof(char*));
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
	while (!feof(fp_types)){
		fgets((char*)tmp_str,MAX_STR_LENGTH,fp_types);//reads a single line of fp_types, terminated with '\n', expects at most 199 chars

		//printf("tmp_str=%s\n",tmp_str);
		extract_mnemonics_to_vector(tmp_str,(const char *)"R_type",R_type_mnemonics);
		extract_mnemonics_to_vector(tmp_str,(const char *)"I_type",I_type_mnemonics);
		extract_mnemonics_to_vector(tmp_str,(const char *)"B_type",B_type_mnemonics);
		extract_mnemonics_to_vector(tmp_str,(const char *)"J_type",J_type_mnemonics);
		extract_mnemonics_to_vector(tmp_str,(const char *)"O_type",O_type_mnemonics);
		extract_mnemonics_to_vector(tmp_str,(const char *)"P_type",P_type_mnemonics);
		extract_mnemonics_to_vector(tmp_str,(const char *)"M_type",M_type_mnemonics);
		extract_mnemonics_to_vector(tmp_str,(const char *)"L_type",L_type_mnemonics);
		extract_mnemonics_to_vector(tmp_str,(const char *)"S_type",S_type_mnemonics);

		sscanf_retval=sscanf(tmp_str,"%s := \"%[01]\" ;",s[0],s[1]);
		if(sscanf_retval>1){
			//printf("Opcode j=%d: %s := %s\n",dictionary_size,s[0],s[1]);
			dictionary = realloc(dictionary,(dictionary_size+1)*sizeof(node));
			//TODO: convert s0, s1 to lower case
			strncpy(dictionary[dictionary_size].name,s[0],11);
			strncpy(dictionary[dictionary_size].binary_string,s[1],7);
			printf("Opcode j=%d: %s := %s\n",dictionary_size,dictionary[dictionary_size].name,dictionary[dictionary_size].binary_string);
			dictionary_size++;
		}

	}
	printf("assembly_syntax.txt parsed!\n");
	int base_dict_size=dictionary_size;//base dictionary size (only language and registers)
	//print_dict(dictionary,dictionary_size);
	/*printf("R_type_mnemonics[0]=%s\n",R_type_mnemonics[0]);
	printf("R_type_mnemonics[1]=%s\n",R_type_mnemonics[1]);
	printf("R_type_mnemonics[2]=%s\n",R_type_mnemonics[2]);
	printf("R_type_mnemonics[3]=%s\n",R_type_mnemonics[3]);
	printf("R_type_mnemonics[4]=%s\n",R_type_mnemonics[4]);*/

	printf("Parsing %s\n",argv[1]);
	int i=0;
	//char binary_string[33];//string containing 32 chars in {'0','1'} and one null byte
	char termination_char;
	//processes initial comments (OPTIONAL section)
	while (!feof(fp)){
		fgets((char*)tmp_str,MAX_STR_LENGTH,fp);//reads a single line of fp, terminated with '\n', expects at most 199 chars

		if(tmp_str[0]==';'||tmp_str[0]=='\n'||tmp_str[0]=='\r'||tmp_str[0]=='\0'){//comment line or empty line, must be ignored
			continue;
		}else{
			break;
		}
	}
	
	printf("%s\n",tmp_str);
	//parses the instruction or data declaration
	sscanf_retval=sscanf(tmp_str,"%s %s",s[0],s[1]);
	if(strcmp(s[0],".section")==0){
		if(strcmp(s[1],"rodata")==0){
			printf("Found read-only data section!\n");
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
					dictionary = realloc(dictionary,(dictionary_size+1)*sizeof(node));
					//TODO: convert s0, s1 to lower case
					strncpy(dictionary[dictionary_size].name,s[0],strlen(s[0]));
					//converts s[1] to a binary string

					unsigned int tmp;
					//decimal number
					if(s[1][0]!='x'){
						tmp=strtod(s[1],NULL);
						strncpy(dictionary[dictionary_size].binary_string,uint2bin(tmp,32),32);
					}else{//hex number
						strncpy(dictionary[dictionary_size].binary_string,hex2bin(&(s[1][1])),32);
					}
					printf("Opcode j=%d: %s := %s\n",dictionary_size,dictionary[dictionary_size].name,dictionary[dictionary_size].binary_string);
					dictionary_size++;
				}
			}
		}
	}

	//will iterate twice through file:
	//1st pass will be to find all label definitions, then close file
	//2nd pass will start from end of data section, if any, and process instructions
	long beginning_of_instructions = ftell(fp);
	while (!feof(fp)){
	    free(tmp_instruction_str);//this is meant to avoid this pointer drift towards other variables in heap
	    tmp_instruction_str=(char*) calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store instructions read from files
		char* fgets_retval=fgets(tmp_instruction_str,MAX_STR_LENGTH,fp);//reads a single line of fp, terminated with '\n', expects at most 199 chars
		if(fgets_retval!=NULL){
		    instruction_str=tmp_instruction_str;
			//removes initial blank spaces
			while(1){
				if(instruction_str[0]=='\t'||instruction_str[0]==' '){
					instruction_str++;
				}else{
					break;
				}
			}
			sscanf_retval=sscanf(instruction_str,"%s %*s",s[0]);//parses the instruction, s[0] stores the opcode
			//TODO: convert instruction_str to lower case
			if(sscanf_retval!=0){
				if(instruction_str[0]==';'||instruction_str[0]=='\n'||instruction_str[0]=='\r'||instruction_str[0]=='\0'){//comment line or empty line, must be ignored
					continue;
				}

				//checks if the opcode is a label definition
				sscanf_retval=sscanf(instruction_str,"%[a-zA-Z0-9_]: %*s",s[0]);//parses the instruction, s[0] stores the opcode
				if(sscanf_retval != 0){
					if(is_opcode(s[0])){//it is a instruction
						i++;
					}else{
						//test for hex constant
						int sscanf_retval_hex = sscanf(s[0],"x%[0-9a-fA-F]",s[1]);
						if(sscanf_retval_hex!=0){//is hex constant
							i++;
						}else{
							printf("Found label definition: %s\n",s[0]);
							node* tmp_ptr = (node*) realloc(dictionary,(dictionary_size+1)*sizeof(node));
							if(tmp_ptr == NULL){
							    printf("Erro de realloc!\n");
							    return 7;
							}else{
							    dictionary = tmp_ptr;
							}
							//TODO: convert s0, s1 to lower case
							strncpy(dictionary[dictionary_size].name,s[0],strlen(s[0])+1);
							strncpy(dictionary[dictionary_size].binary_string,uint2bin((unsigned int)i,32),32);
							dictionary_size++;
							continue;//goes to next iteration of loop (next instruction)
						}
					}
				}
			}
		}
	}
	fclose(fp);//closes code file

	print_dict(dictionary,dictionary_size);

	fp=fopen(argv[1],"r");//instructions will only be read
	if(fp==NULL){
		printf("Erro ao ler o arquivo %s na 2ª passada\n",argv[1]);
		return 2;
	}
	fseek(fp,beginning_of_instructions,SEEK_SET);


	//processes instructions ONLY
	printf("\nProcessing instructions\n");
	i = 0;
	while (!feof(fp)){
	    free(tmp_instruction_str);//this is meant to avoid this pointer drift towards other variables in heap
	    tmp_instruction_str=(char*) calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store instructions read from files
		char* fgets_retval=fgets(tmp_instruction_str,MAX_STR_LENGTH,fp);//reads a single line of fp, terminated with '\n', expects at most 199 chars
		if(fgets_retval!=NULL){
		    instruction_str=tmp_instruction_str;
			//removes initial blank spaces
			while(1){
				if(instruction_str[0]=='\t'||instruction_str[0]==' '){
					instruction_str++;
				}else{
					break;
				}
			}			
			
			sscanf_retval=sscanf(instruction_str,"%s %s",s[0],s[1]);//parses the instruction, s[0] stores the opcode
			//TODO: convert instruction_str to lower case
			if(sscanf_retval!=0){			
			
				// tests for beggining of data section
				if(strcmp(s[0],".section")==0){
					if(strcmp(s[1],"data")==0){
						printf("Found read-write data section!\n");
						break;//breaks the loop, goes to print message "FILE parsed!"
					}else{
						printf("Invalid section: %s\n",s[1]);
						return -1;
					}
				}
			
				binary_string=realloc(binary_string,(i+1)*sizeof(char*));
				binary_string[i]=calloc(33,sizeof(char));
				binary_string[i][0]='\0';
				printf("\nInstrução i=%d: %s",i,instruction_str);
				//printf("instruction_str[0]=%d\n",(int)instruction_str[0]);
				//printf("instruction_str[1]=%d\n",(int)instruction_str[1]);

				if(instruction_str[0]==';'||instruction_str[0]=='\n'||instruction_str[0]=='\r'||instruction_str[0]=='\0'){//comment line or empty line, must be ignored
					continue;
				}

				//checks if the opcode belongs to some set
				//then calls the corresponding function to mount the binary string

				//checks if mnemonic belongs to R_type
				if(find_mnemonic_in_vector(s[0],R_type_mnemonics)!=-1){
					printf("Found %s in R_type_mnemonics at position %d\n",s[0],find_mnemonic_in_vector(s[0],R_type_mnemonics));
					R_type_parse(binary_string[i],instruction_str);
				}else{
					//checks if mnemonic belongs to I_type
					if(find_mnemonic_in_vector(s[0],I_type_mnemonics)!=-1){
						printf("Found %s in I_type_mnemonics at position %d\n",s[0],find_mnemonic_in_vector(s[0],I_type_mnemonics));
						I_type_parse(binary_string[i],instruction_str,base_dict_size);
					}else{
						//checks if mnemonic belongs to B_type
						if(find_mnemonic_in_vector(s[0],B_type_mnemonics)!=-1){
							printf("Found %s in B_type_mnemonics at position %d\n",s[0],find_mnemonic_in_vector(s[0],B_type_mnemonics));
							B_type_parse(binary_string[i],instruction_str,base_dict_size);
						}else{
							//checks if mnemonic belongs to J_type
							if(find_mnemonic_in_vector(s[0],J_type_mnemonics)!=-1){
								printf("Found %s in J_type_mnemonics at position %d\n",s[0],find_mnemonic_in_vector(s[0],J_type_mnemonics));
								J_type_parse(binary_string[i],instruction_str,base_dict_size,i);
							}else{
								//checks if mnemonic belongs to O_type
								//here we must check if there is punctuation (;) at the end AND
								//remove the termination char
								//printf("s[0]=%s ",s[0]);
								if(s[0][strlen(s[0])-1]==';'){
									s[0][strlen(s[0])-1]='\0';//removes the punctuation
									//printf("s[0]=%s ",s[0]);
								}
								//printf("s[0]=%s ",s[0]);
								if(find_mnemonic_in_vector(s[0],O_type_mnemonics)!=-1){
									printf("Found %s in O_type_mnemonics at position %d\n",s[0],find_mnemonic_in_vector(s[0],O_type_mnemonics));
									O_type_parse(binary_string[i],instruction_str);
								}else{
									//checks if mnemonic belongs to P_type
									if(find_mnemonic_in_vector(s[0],P_type_mnemonics)!=-1){
										printf("Found %s in P_type_mnemonics at position %d\n",s[0],find_mnemonic_in_vector(s[0],P_type_mnemonics));
										P_type_parse(binary_string[i],instruction_str);
									}else{
										//checks if mnemonic belongs to M_type
										if(find_mnemonic_in_vector(s[0],M_type_mnemonics)!=-1){
											printf("Found %s in M_type_mnemonics at position %d\n",s[0],find_mnemonic_in_vector(s[0],M_type_mnemonics));
											M_type_parse(binary_string[i],instruction_str);
										}else{
											//checks if mnemonic belongs to L_type
											if(find_mnemonic_in_vector(s[0],L_type_mnemonics)!=-1){
												printf("Found %s in L_type_mnemonics at position %d\n",s[0],find_mnemonic_in_vector(s[0],L_type_mnemonics));
												L_type_parse(binary_string[i],instruction_str,base_dict_size);
											}else{
												//checks if mnemonic belongs to S_type
												if(find_mnemonic_in_vector(s[0],S_type_mnemonics)!=-1){
													printf("Found %s in S_type_mnemonics at position %d\n",s[0],find_mnemonic_in_vector(s[0],S_type_mnemonics));
													S_type_parse(binary_string[i],instruction_str,base_dict_size);
												}else{
													//checks if it is a label definition
													sscanf_retval=sscanf(instruction_str,"%[a-zA-Z0-9_]: %*s",s[0]);//parses the instruction, s[0] stores the opcode
													if(sscanf_retval != 0){
														printf("Found label definition: %s skipping...\n",s[0]);
														//dictionary = realloc(dictionary,(dictionary_size+1)*sizeof(node));
														//TODO: convert s0, s1 to lower case
														//strncpy(dictionary[dictionary_size].name,s[0],11);
														//strncpy(dictionary[dictionary_size].binary_string,uint2bin((unsigned int)i,32),32);
														//dictionary_size++;
														continue;//goes to next iteration of loop (next instruction)
													}else{
														printf("Invalid instruction: %s\n",s[0]);
														return -1;
													}
												}
											}
										}
									}
								}
							}
						}
					}

				}
				printf("%s --> %s\n",instruction_str,binary_string[i]);
				if(strlen(binary_string[i])!=32){
					printf("Erro de conversão, instrução não tem 32 bits! (%s possui %ld bits)\n",binary_string[i],strlen(binary_string[i]));
					return -2;
				}
			}else{
				printf("Unknown instruction at line %d: %s\n",i,s[0]);
			}
			//fgetc(fp);//reads and discards the newline
			i++;
		}
	}
	
	// processes read-write data section
	while (!feof(fp)){
		char* fgets_retval=fgets((char*)instruction_str,MAX_STR_LENGTH,fp);//reads a single line of fp, terminated with '\n', expects at most 199 chars
		if(fgets_retval!=NULL){
			//removes initial blank spaces
			while(1){
				if(instruction_str[0]=='\t'||instruction_str[0]==' '){
					instruction_str++;
				}else{
					break;
				}
			}
			sscanf_retval=sscanf(instruction_str,"%s %*s",s[0]);//parses the instruction, s[0] stores the value in hex or a label
			//TODO: convert instruction_str to lower case
			if(sscanf_retval!=0){
				if(instruction_str[0]==';'||instruction_str[0]=='\n'||instruction_str[0]=='\r'||instruction_str[0]=='\0'){//comment line or empty line, must be ignored
					continue;
				}
				
				printf("\ni=%d --> %s\n",i,s[0]);
				
				//checks if the opcode is a label definition
				if(s[0][strlen(s[0])-1]==':'){
					printf("Found label definition: %s\n",s[0]);
					continue;//goes to next iteration of loop (because the label was already added to dictionary)
				}else{
					//test for hex constant
					int sscanf_retval_hex = sscanf(s[0],"x%[0-9a-fA-F]",s[0]);
					if(sscanf_retval_hex!=0){//is hex constant
						binary_string=realloc(binary_string,(i+1)*sizeof(char*));
						binary_string[i]=calloc(33,sizeof(char));
						binary_string[i][0]='\0';
						strcat(binary_string[i],hex2bin(s[0]));
						i++;
					}else{
						printf("Invalid data: %s\n",s[0]);
						return -1;
					}
				}
				
			}
		}
	}
	
	printf("%s parsed!\n",argv[1]);

	//loop for rewriting the unresolved instructions
	//iterates through unresolved_instructions, calls again J_type_parse
	for(int j=0;j < unresolved_instructions_size;j++){
		printf("unresolved_instructions[j].instruction_str=%s\n",unresolved_instructions[j].instruction_str);
		J_type_parse(binary_string[unresolved_instructions[j].line_number],unresolved_instructions[j].instruction_str,base_dict_size,unresolved_instructions[j].line_number);
	}

	//loop for writing the instructions to binary file
	for(int j=0;j <= i-1;j++){
		instruction = bin2uint(binary_string[j]);
		fwrite_retval=fwrite(&instruction,sizeof(unsigned int),1,of);//writes the 32bit unsigned int
		if(fwrite_retval!=1){
			printf("Erro de fwrite!\n");
			return 8;
		}
	}

	//print_dict(dictionary,dictionary_size);//prints dictionary with resolved LABELS included
	fclose(fp);//closes code file
	fclose(fp_types);//closes my_types.vhd

	//close output file
	fclose(of);
	printf("Arquivo \"executable\" gerado com sucesso!\n");
	/*
	free(dictionary);
	free(tmp_str);
	free(beginning_of_allocated_str);
	free(comment_str);

	free(ptr);
	free(s[0]);
	free(s[1]);
	free(s[2]);
	free(s[3]);
	free(s);

	for(int j=0;j <= i-1;j++){
		free(binary_string[j]);
	}
	free(binary_string);

	//iterates through unresolved_instructions, freeing instruction_str
	for(int j=0;j < unresolved_instructions_size;j++){
		free(unresolved_instructions[j].instruction_str);
	}
	free(unresolved_instructions);
	*/

	return 0;
}

bool is_opcode(char* str){
	if(find_mnemonic_in_vector(str,R_type_mnemonics)!=-1)
		return true;
	if(find_mnemonic_in_vector(str,I_type_mnemonics)!=-1)
		return true;
	if(find_mnemonic_in_vector(str,B_type_mnemonics)!=-1)
		return true;
	if(find_mnemonic_in_vector(str,J_type_mnemonics)!=-1)
		return true;
	if(find_mnemonic_in_vector(str,O_type_mnemonics)!=-1)
		return true;
	if(find_mnemonic_in_vector(str,P_type_mnemonics)!=-1)
		return true;
	if(find_mnemonic_in_vector(str,M_type_mnemonics)!=-1)
		return true;
	if(find_mnemonic_in_vector(str,L_type_mnemonics)!=-1)
		return true;
	if(find_mnemonic_in_vector(str,S_type_mnemonics)!=-1)
		return true;
	return false;
}

//function to return index of  string in dictionary names, or -1 if fails
int find(node* dict, int dict_size, char* str){
	for(int i=0;i<dict_size;i++){
		if(strcmp(str,dict[i].name)==0)
			return i;
	}
	return -1;
}

// tests if it is a string of N hexadecimal digits
bool is_hex(char* str,int N){	
	int L=strlen(str);//string length, does not count the '\0'
	if (L != N){
		return false;
	}
	for (int i=0;i<L;i++){
		if((str[i] >= '0' && str[i] <= '9')||
			 (str[i] >= 'A' && str[i] <= 'F')||
			 (str[i] >= 'a' && str[i] <= 'f')){
			 continue;
			}else{
				return false;
			}
	}
}

//function to convert hex strings to binary string
char* hex2bin(char* str){
	int L=strlen(str);//string length, does not count the '\0'
	char* bin_str=calloc(4*L+1,sizeof(char));
	unsigned int numeric = hex2uint(str);
	printf("hex2bin: conversão: %s => %d =>",str,numeric);
	
	for(int i=0;i <= 4*L-1;i++){//goes from most significant digit to least significant (left to right)
		if(numeric & (1<<(4*L-1-i))){
			bin_str[i] = '1';
		}else{
			bin_str[i] = '0';
		}
	}
	printf("%s\n",bin_str);
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
		printf("{%s, %s}\n",dict[i].name,dict[i].binary_string);
	}
	return;
}

//mounts the binary string for R_type instruction
void R_type_parse(char *binary_string,char *instruction_str){
	int sscanf_retval=sscanf(instruction_str,"%s %s %s %s",s[0],s[1],s[2],s[3]);//parses the instruction, s[0] stores the opcode
	if(sscanf_retval!=4){
		printf("Invalid number of arguments:%d\n",sscanf_retval);
		return;
	}
	//TODO: convert instruction_str to lower case
	binary_string[0]='\0';
	int pos;
	pos=find(dictionary,dictionary_size,"R_type");
	if(pos==-1){
		printf("Opcode not found: %s\n",s[0]);
		return;
	}
	strcat(binary_string,dictionary[pos].binary_string);
	for(int i=1;i<sscanf_retval;i++){
		//remove the termination char
		if(i==sscanf_retval-1){
			//printf("s[%d]=%s ",i,s[i]);

			if(s[i][strlen(s[i])-1]==';'){
				s[i][strlen(s[i])-1]='\0';//removes the punctuation
				//printf("s[%d]=%s ",i,s[i]);
			}else{
				printf("Argument %d: expected ; instead of %c in %s\n",i,s[i][strlen(s[i])-1],s[i]);
				return;
			}
		}
		pos=find(dictionary,dictionary_size,s[i]);
		if(pos==-1){
			if(i==3 && (strcmp(s[0],"sll")==0 || strcmp(s[0],"srl")==0)){//check if is sll or srl, s[3] should be immediate
				int sscanf_retval_hex = sscanf(s[i],"x\"%[0-9a-fA-F]\"",s[i]);//keeps in s[3] only the numeric part
				printf("shamt=%s\n",s[3]);
				strcat(binary_string,"00000");//append rd(=X) field
				strcat(binary_string,hex2bin(s[i])+3);//append shamt field for sll/srl
			}else{
				printf("Argument not found: %s\n",s[i]);
				return;
			}
		}else{
			strcat(binary_string,dictionary[pos].binary_string);
		}
	}
	printf("Instruction is %s\n",s[0]);
	if(!(strcmp(s[0],"sll")==0 || strcmp(s[0],"srl")==0)){//append default (zeroed) shamt only if is not sll or srl
		strcat(binary_string,"00000");//append shamt field
	}
	
	pos=find(dictionary,dictionary_size,strcat(s[0],"_funct"));
	strcat(binary_string,dictionary[pos].binary_string);//append funct field
	return;
}

//mounts the binary string for I_type instruction
void I_type_parse(char *binary_string,char *instruction_str,unsigned int base_dict_size){
	int sscanf_retval=sscanf(instruction_str,"%s %s %s %s",s[0],s[1],s[2],s[3]);//parses the instruction, s[0] stores the opcode, s[1] stores a register, s[2] stores a register, s[3] stores a immediate (decimal or hexadecimal)
	if(sscanf_retval!=4){
		printf("Invalid number of arguments:%d\n",sscanf_retval);
		return;
	}
	//TODO: convert instruction_str to lower case
	binary_string[0]='\0';
	int pos;
	pos=find(dictionary,dictionary_size,s[0]);
	if(pos==-1){
		printf("Opcode not found: %s\n",s[0]);
		return;
	}
	
	int hi_modifier_found = 0; //1 if %hi was found in immediate
	int lo_modifier_found = 0; //1 if %lo was found in immediate
	char* label_upper_word=calloc(17,sizeof(char));//16 bits + '\0'
	char* label_lower_word;//16 bits + '\0'
	
	strcat(binary_string,dictionary[pos].binary_string);
	for(int i=1;i<sscanf_retval;i++){
		//remove the termination char
		if(i==sscanf_retval-1){
			//printf("s[%d]=%s ",i,s[i]);

			if(s[i][strlen(s[i])-1]==';'){
				s[i][strlen(s[i])-1]='\0';//removes the punctuation
				//printf("s[%d]=%s ",i,s[i]);
			}else{
				printf("Argument %d: expected ; instead of %c in %s\n",i,s[i][strlen(s[i])-1],s[i]);
				return;
			}
			
			//tests if %hi / %lo modifiers are present
            if(strncmp(s[i],"%hi(",4)==0 && s[i][strlen(s[i])-1]==')'){//checks if s[i] is %hi(LABEL)
                printf("Found %%hi modifier!\n");
                hi_modifier_found = 1;
                s[i][strlen(s[i])-1]='\0';//removes the closing parentesis
                strncpy(s[i],s[i]+4,strlen(s[i])-3);//s[i] now is only the label
                printf("Parsed label: %s\n",s[i]);
            }else{
                if(strncmp(s[i],"%lo(",4)==0 && s[i][strlen(s[i])-1]==')'){//checks if s[i] is %lo(LABEL)
                    printf("Found %%lo modifier!\n");
                    lo_modifier_found = 1;
                    s[i][strlen(s[i])-1]='\0';//removes the closing parentesis
                    strncpy(s[i],s[i]+4,strlen(s[i])-3);//s[i] now is only the label
                    printf("Parsed label: %s\n",s[i]);
                }
			}
			pos=find(dictionary,dictionary_size,s[i]);
			
			//printf("pos=%d --> %s\n",pos,dictionary[pos].binary_string);
			if(pos!=-1){
				if(pos >= base_dict_size){//it is a constant in data section or label
					//must adjust the size to fit in instruction
					int lsb_to_use= 32 - strlen(binary_string);//how many bits of constant will be used
					//printf("\nbinary_string=%s\n",binary_string);
					printf("\nlsb_to_use=%d\n",lsb_to_use);
					if(hi_modifier_found==1){
					    if(label_upper_word==NULL){
		                    printf("Erro ao alocar a memória para o ponteiro tmp_str ou instruction_str ou data_str ou comment_str\n");
		                    return;
					    }
					    strncpy(label_upper_word,dictionary[pos].binary_string,lsb_to_use);
					    label_upper_word[lsb_to_use]='\0';
					    strcat(binary_string,label_upper_word);
					}else{//if %lo was used (or no modifier at all)
					    label_lower_word=dictionary[pos].binary_string+(32-lsb_to_use)*sizeof(char);
					    strcat(binary_string,label_lower_word);
					}
				}else{//base dictionary word

					strcat(binary_string,dictionary[pos].binary_string);
				}
			}else{
				//test for hex constant
				int sscanf_retval_hex = sscanf(s[i],"x\"%[0-9a-fA-F]\"",s[i]);
				if(sscanf_retval_hex!=0){//is hex constant
					strcat(binary_string,hex2bin(s[i]));
				}else{
					int sscanf_retval_bin = sscanf(s[i],"\"%[01_]\"",s[i]);// '_' is a separator, should be skipped

					//removes all underscores from s[i]
					unsigned int len = strlen(s[i]);	   	
				  	for(int j = 0; j < len; j++){
						if(s[i][j] == '_'){
							for(int k = j; k < len; k++){
								s[i][k] = s[i][k + 1];
							}
							len--;
							j--;	
						} 
					}

					if(sscanf_retval_bin!=0){//is bin constant
						strcat(binary_string,s[i]);
					}else{
						printf("\nConstante inválida: %s\n",s[i]);
						return;
					}

				}

			}

		}else{
			pos=find(dictionary,dictionary_size,s[i]);
			if(pos==-1){
				printf("Argument not found: %s\n",s[i]);
				return;
			}
			strcat(binary_string,dictionary[pos].binary_string);
		}
	}
	//there should be unused bits, those should be filled with zeros
	int tmp_instr_size=strlen(binary_string);
	for (int k=0;k<32-tmp_instr_size;k++){
		strcat(binary_string,"0");
	}
	free(label_upper_word);
	return;
}

//mounts the binary string for B_type instruction
//rt is don't care, I'll fill with zeros
void B_type_parse(char *binary_string,char *instruction_str,unsigned int base_dict_size){
	int sscanf_retval=sscanf(instruction_str,"%s %s %s",s[0],s[1],s[2]);//parses the instruction, s[0] stores the opcode, s[1] stores a register, s[2] stores a immediate (decimal or hexadecimal)
	if(sscanf_retval!=3){
		printf("Invalid number of arguments:%d\n",sscanf_retval);
		return;
	}
	//TODO: convert instruction_str to lower case
	binary_string[0]='\0';
	int pos;
	pos=find(dictionary,dictionary_size,s[0]);
	if(pos==-1){
		printf("Opcode not found: %s\n",s[0]);
		return;
	}
	
	int hi_modifier_found = 0; //1 if %hi was found in immediate
	int lo_modifier_found = 0; //1 if %lo was found in immediate
	char* label_upper_word=calloc(17,sizeof(char));//16 bits + '\0'
	char* label_lower_word;//16 bits + '\0'
	
	strcat(binary_string,dictionary[pos].binary_string);
	for(int i=1;i<sscanf_retval;i++){
		//fill rt (unused with zeros) and
		//remove the termination char after immediate
		if(i==sscanf_retval-1){
			strcat(binary_string,"00000");//fills rt field
			
			//printf("s[%d]=%s ",i,s[i]);

			if(s[i][strlen(s[i])-1]==';'){
				s[i][strlen(s[i])-1]='\0';//removes the punctuation
				//printf("s[%d]=%s ",i,s[i]);
			}else{
				printf("Argument %d: expected ; instead of %c in %s\n",i,s[i][strlen(s[i])-1],s[i]);
				return;
			}
			
			//tests if %hi / %lo modifiers are present
            if(strncmp(s[i],"%hi(",4)==0 && s[i][strlen(s[i])-1]==')'){//checks if s[i] is %hi(LABEL)
                printf("Found %%hi modifier!\n");
                hi_modifier_found = 1;
                s[i][strlen(s[i])-1]='\0';//removes the closing parentesis
                strncpy(s[i],s[i]+4,strlen(s[i])-3);//s[i] now is only the label
                printf("Parsed label: %s\n",s[i]);
            }else{
                if(strncmp(s[i],"%lo(",4)==0 && s[i][strlen(s[i])-1]==')'){//checks if s[i] is %lo(LABEL)
                    printf("Found %%lo modifier!\n");
                    lo_modifier_found = 1;
                    s[i][strlen(s[i])-1]='\0';//removes the closing parentesis
                    strncpy(s[i],s[i]+4,strlen(s[i])-3);//s[i] now is only the label
                    printf("Parsed label: %s\n",s[i]);
                }
			}
			pos=find(dictionary,dictionary_size,s[i]);
			
			//printf("pos=%d --> %s\n",pos,dictionary[pos].binary_string);
			if(pos!=-1){
				if(pos >= base_dict_size){//it is a constant in data section or label
					//must adjust the size to fit in instruction
					int lsb_to_use= 32 - strlen(binary_string);//how many bits of constant will be used
					//printf("\nbinary_string=%s\n",binary_string);
					//printf("\nlsb_to_use=%d\n",lsb_to_use);
					if(hi_modifier_found==1){
					    if(label_upper_word==NULL){
		                    printf("Erro ao alocar a memória para o ponteiro tmp_str ou instruction_str ou data_str ou comment_str\n");
		                    return;
					    }
					    strncpy(label_upper_word,dictionary[pos].binary_string,lsb_to_use);
					    label_upper_word[lsb_to_use]='\0';
					    strcat(binary_string,label_upper_word);
					}else{//if %lo was used (or no modifier at all)
					    label_lower_word=dictionary[pos].binary_string+(32-lsb_to_use)*sizeof(char);
					    strcat(binary_string,label_lower_word);
					}
				}else{//base dictionary word

					strcat(binary_string,dictionary[pos].binary_string);
				}
			}else{
				//test for hex constant
				int sscanf_retval_hex = sscanf(s[i],"x\"%[0-9a-fA-F]\"",s[i]);
				if(sscanf_retval_hex!=0){//is hex constant
					strcat(binary_string,hex2bin(s[i]));
				}else{
					int sscanf_retval_bin = sscanf(s[i],"\"%[01_]\"",s[i]);// '_' is a separator, should be skipped

					//removes all underscores from s[i]
					unsigned int len = strlen(s[i]);	   	
				  	for(int j = 0; j < len; j++){
						if(s[i][j] == '_'){
							for(int k = j; k < len; k++){
								s[i][k] = s[i][k + 1];
							}
							len--;
							j--;	
						} 
					}

					if(sscanf_retval_bin!=0){//is bin constant
						strcat(binary_string,s[i]);
					}else{
						printf("\nConstante inválida: %s\n",s[i]);
						return;
					}

				}

			}

		}else{
			pos=find(dictionary,dictionary_size,s[i]);
			if(pos==-1){
				printf("Argument not found: %s\n",s[i]);
				return;
			}
			strcat(binary_string,dictionary[pos].binary_string);
		}
	}
	//there should be unused bits, those should be filled with zeros
	int tmp_instr_size=strlen(binary_string);
	for (int k=0;k<32-tmp_instr_size;k++){
		strcat(binary_string,"0");
	}
	free(label_upper_word);
	return;
}

//mounts the binary string for J_type instruction
void J_type_parse(char *binary_string,char *instruction_str,unsigned int base_dict_size,unsigned int line_number){
	int sscanf_retval=sscanf(instruction_str,"%s %s",s[0],s[1]);//parses the instruction, s[0] stores the opcode, s[1] stores a immediate (decimal or hexadecimal)
	if(sscanf_retval!=2){
		printf("Invalid number of arguments:%d\n",sscanf_retval);
		return;
	}
	//TODO: convert instruction_str to lower case
	binary_string[0]='\0';
	int pos;
	pos=find(dictionary,dictionary_size,s[0]);
	if(pos==-1){
		printf("Opcode not found: %s\n",s[0]);
		return;
	}
	strcat(binary_string,dictionary[pos].binary_string);
	for(int i=1;i<sscanf_retval;i++){
		//remove the termination char
		if(i==sscanf_retval-1){
			//printf("s[%d]=%s ",i,s[i]);

			if(s[i][strlen(s[i])-1]==';'){
				s[i][strlen(s[i])-1]='\0';//removes the punctuation
				//printf("s[%d]=%s ",i,s[i]);
			}else{
				printf("Argument %d: expected ; instead of %c in %s\n",i,s[i][strlen(s[i])-1],s[i]);
				return;
			}

			pos=find(dictionary,dictionary_size,s[i]);
			if(pos!=-1){
				if(pos >= base_dict_size){//it is a constant in data section or label
					printf("Found constant %s at dictionary: %s\n",dictionary[pos].name,dictionary[pos].binary_string);
					//must adjust the size to fit in instruction
					int lsb_to_use = 32 - strlen(binary_string);//how many bits of constant will be used
					//printf("\nbinary_string=%s\n",binary_string);
					printf("\nlsb_to_use=%d\n",lsb_to_use);
					if(lsb_to_use <= strlen(dictionary[pos].binary_string)){
						strcat(binary_string,(dictionary[pos].binary_string)+(strlen(dictionary[pos].binary_string)-lsb_to_use)*sizeof(char));
					}else{//dictionary[pos].binary_string is not wide enough to fill the instruction
						//some zeros are insterted (zero-extension)
						int zero_fill=lsb_to_use - strlen(dictionary[pos].binary_string);
						for (int k=0;k<zero_fill;k++){
							strcat(binary_string,"0");
						}
						strcat(binary_string,(dictionary[pos].binary_string));
					}
				}else{//base dictionary word
					strcat(binary_string,dictionary[pos].binary_string);
				}
			}else{
				//test for hex constant
				int sscanf_retval_hex = sscanf(s[i],"x\"%[0-9a-fA-F]\"",s[i]);
				if(sscanf_retval_hex!=0){//is hex constant

					//there might be unused bits, those should be filled with zeros BEFORE the last argument
					int tmp_instr_size=strlen(binary_string)+strlen(hex2bin(s[i]));
					for (int k=0;k<32-tmp_instr_size;k++){
						strcat(binary_string,"0");
					}

					strcat(binary_string,hex2bin(s[i]));
				}else{
					int sscanf_retval_bin = sscanf(s[i],"\"%[01_]\"",s[i]);

					//removes all underscores from s[i]
					unsigned int len = strlen(s[i]);	   	
				  	for(int j = 0; j < len; j++){
						if(s[i][j] == '_'){
							for(int k = j; k < len; k++){
								s[i][k] = s[i][k + 1];
							}
							len--;
							j--;	
						} 
					}
					if(sscanf_retval_bin!=0){//is bin constant

						//there might be unused bits, those should be filled with zeros BEFORE the last argument
						int tmp_instr_size=strlen(binary_string)+strlen(s[i]);
						for (int k=0;k<32-tmp_instr_size;k++){
							strcat(binary_string,"0");
						}

						strcat(binary_string,s[i]);
					}else{

						//fills with zeros the place of last argument (UNRESOLVED)
						int tmp_instr_size=strlen(binary_string);
						for (int k=0;k<32-tmp_instr_size;k++){
							strcat(binary_string,"0");
						}

						unresolved_instructions = realloc(unresolved_instructions,(unresolved_instructions_size+1)*sizeof(code_line));
						unresolved_instructions[unresolved_instructions_size].line_number=line_number;
						unresolved_instructions[unresolved_instructions_size].instruction_str=calloc(MAX_STR_LENGTH,sizeof(char));
						strcpy(unresolved_instructions[unresolved_instructions_size].instruction_str,instruction_str);
						unresolved_instructions_size++;
						printf("\nConstant added for later resolution: %s\n",s[i]);
						//return;
					}
				}
			}

		}else{
			pos=find(dictionary,dictionary_size,s[i]);
			if(pos==-1){
				printf("Argument not found: %s\n",s[i]);
				return;
			}
			strcat(binary_string,dictionary[pos].binary_string);
		}
	}
	return;
}

//mounts the binary string for O_type instruction
void O_type_parse(char *binary_string,char *instruction_str){
	int sscanf_retval=sscanf(instruction_str,"%s",s[0]);//parses the instruction, s[0] stores the opcode
	if(sscanf_retval!=1){
		printf("Invalid number of arguments:%d\n",sscanf_retval);
		return;
	}
	//remove the termination char
	//printf("s[0]=%s ",s[0]);
	if(s[0][strlen(s[0])-1]==';'){
		s[0][strlen(s[0])-1]='\0';//removes the punctuation
		//printf("s[0]=%s ",s[0]);
	}else{
		printf("Argument 0: expected ; instead of %c in %s\n",s[0][strlen(s[0])-1],s[0]);
		return;
	}
	//printf("s[0]=%s ",s[0]);

	//TODO: convert instruction_str to lower case
	binary_string[0]='\0';
	int pos;
	pos=find(dictionary,dictionary_size,s[0]);
	if(pos==-1){
		printf("Opcode not found: %s\n",s[0]);
		return;
	}
	strcat(binary_string,dictionary[pos].binary_string);
	//there should be unused bits, those should be filled with zeros
	int tmp_instr_size=strlen(binary_string);
	for (int k=0;k<32-tmp_instr_size;k++){
		strcat(binary_string,"0");
	}
	return;
}

//mounts the binary string for P_type instruction
void P_type_parse(char *binary_string,char *instruction_str){
	int sscanf_retval=sscanf(instruction_str,"%s %s",s[0],s[1]);//parses the instruction, s[0] stores the opcode, s[1] stores a register
	if(sscanf_retval!=2){
		printf("Invalid number of arguments:%d\n",sscanf_retval);
		return;
	}
	//TODO: convert instruction_str to lower case
	binary_string[0]='\0';
	int pos;
	pos=find(dictionary,dictionary_size,s[0]);
	if(pos==-1){
		printf("Opcode not found: %s\n",s[0]);
		return;
	}
	strcat(binary_string,dictionary[pos].binary_string);
	for(int i=1;i<sscanf_retval;i++){
		//remove the termination char
		if(i==sscanf_retval-1){
			//printf("s[%d]=%s ",i,s[i]);

			if(s[i][strlen(s[i])-1]==';'){
				s[i][strlen(s[i])-1]='\0';//removes the punctuation
				//printf("s[%d]=%s ",i,s[i]);
			}else{
				printf("Argument %d: expected ; instead of %c in %s\n",i,s[i][strlen(s[i])-1],s[i]);
				return;
			}
		}
		pos=find(dictionary,dictionary_size,s[i]);
		if(pos==-1){
			printf("Argument not found: %s\n",s[i]);
			return;
		}
		strcat(binary_string,dictionary[pos].binary_string);
	}
	//there should be unused bits, those should be filled with zeros
	int tmp_instr_size=strlen(binary_string);
	for (int k=0;k<32-tmp_instr_size;k++){
		strcat(binary_string,"0");
	}
	return;
}

//mounts the binary string for M_type instruction
void M_type_parse(char *binary_string,char *instruction_str){
	int sscanf_retval=sscanf(instruction_str,"%s %s %s",s[0],s[1],s[2]);//parses the instruction, s[0] stores the opcode, s[1] stores a register, s[2] stores a register
	if(sscanf_retval!=3){
		printf("Invalid number of arguments:%d\n",sscanf_retval);
		return;
	}
	//TODO: convert instruction_str to lower case
	binary_string[0]='\0';
	int pos;
	pos=find(dictionary,dictionary_size,s[0]);
	if(pos==-1){
		printf("Opcode not found: %s\n",s[0]);
		return;
	}
	strcat(binary_string,dictionary[pos].binary_string);
	for(int i=1;i<sscanf_retval;i++){
		//remove the termination char
		if(i==sscanf_retval-1){
			//printf("s[%d]=%s ",i,s[i]);

			if(s[i][strlen(s[i])-1]==';'){
				s[i][strlen(s[i])-1]='\0';//removes the punctuation
				//printf("s[%d]=%s ",i,s[i]);
			}else{
				printf("Argument %d: expected ; instead of %c in %s\n",i,s[i][strlen(s[i])-1],s[i]);
				return;
			}
		}
		pos=find(dictionary,dictionary_size,s[i]);
		if(pos==-1){
			printf("Argument not found: %s\n",s[i]);
			return;
		}
		strcat(binary_string,dictionary[pos].binary_string);
	}
	//there should be unused bits, those should be filled with zeros
	int tmp_instr_size=strlen(binary_string);
	for (int k=0;k<32-tmp_instr_size;k++){
		strcat(binary_string,"0");
	}
	return;

}

//mounts the binary string for L_type instruction
void L_type_parse(char *binary_string,char *instruction_str,unsigned int base_dict_size){
	int sscanf_retval=sscanf(instruction_str,"%s %s %s",s[0],s[1],s[2]);//parses the instruction, s[0] stores the opcode, s[1] stores a immediate (decimal or hexadecimal)
	if(sscanf_retval!=3){
		printf("Invalid number of arguments:%d\n",sscanf_retval);
		return;
	}
	//TODO: convert instruction_str to lower case
	binary_string[0]='\0';
	int pos;
	pos=find(dictionary,dictionary_size,s[0]);
	if(pos==-1){
		printf("Opcode not found: %s\n",s[0]);
		return;
	}
	strcat(binary_string,dictionary[pos].binary_string);
	strcat(binary_string,"0000000000");
	printf("%s\n",binary_string);
	for(int i=1;i<sscanf_retval;i++){
		//remove the termination char
		if(i==sscanf_retval-1){
			//printf("s[%d]=%s ",i,s[i]);

			if(s[i][strlen(s[i])-1]==';'){
				s[i][strlen(s[i])-1]='\0';//removes the punctuation
				//printf("s[%d]=%s ",i,s[i]);
			}else{
				printf("Argument %d: expected ; instead of %c in %s\n",i,s[i][strlen(s[i])-1],s[i]);
				return;
			}
		}

		pos=find(dictionary,dictionary_size,s[i]);
		if(pos!=-1){
			if(pos >= base_dict_size){//it is a constant in data section or label
				printf("Found constant %s at dictionary: %s\n",dictionary[pos].name,dictionary[pos].binary_string);
				//must adjust the size to fit in instruction
				int lsb_to_use = 32 - strlen(binary_string);//how many bits of constant will be used
				//printf("\nbinary_string=%s\n",binary_string);
				printf("\nlsb_to_use=%d\n",lsb_to_use);
				if(lsb_to_use <= strlen(dictionary[pos].binary_string)){
					strcat(binary_string,(dictionary[pos].binary_string)+(strlen(dictionary[pos].binary_string)-lsb_to_use)*sizeof(char));
				}else{//dictionary[pos].binary_string is not wide enough to fill the instruction
					//some zeros are insterted (zero-extension)
					int zero_fill=lsb_to_use - strlen(dictionary[pos].binary_string);
					for (int k=0;k<zero_fill;k++){
						strcat(binary_string,"0");
					}
					strcat(binary_string,(dictionary[pos].binary_string));
				}
			}else{//base dictionary word
				strcat(binary_string,dictionary[pos].binary_string);
			}
		}else{
			//test for hex constant
			int sscanf_retval_hex = sscanf(s[i],"x\"%[0-9a-fA-F]\"",s[i]);
			if(sscanf_retval_hex!=0){//is hex constant
				strcat(binary_string,hex2bin(s[i]));
				//sprintf(binary_string,"%s%s\0",binary_string,hex2bin(s[i]));
				printf("%s\n",binary_string);
			}else{
				int sscanf_retval_bin = sscanf(s[i],"\"%[01]\"",s[i]);
				if(sscanf_retval_bin!=0){//is bin constant
					strcat(binary_string,s[i]);
				}else{
					printf("\nInvalid constant: %s\n",s[i]);
					return;
				}
			}
		}
		//strcat(binary_string,dictionary[pos].binary_string);
	}

	//there should be unused bits, those should be filled with zeros
/*	int tmp_instr_size=strlen(binary_string);
	for (int k=0;k<32-tmp_instr_size;k++){
		strcat(binary_string,"0");
	}*/
	return;
}

//mounts the binary string for S_type instruction
void S_type_parse(char *binary_string,char *instruction_str,unsigned int base_dict_size){
	char op;// '+' or '-', offset is mandatory
	char tmp_offset_binary_string[33];//determined only from s[2], up to 32 chars ('0' or '1') + '\0'
	char offset_binary_string[33];//the final offset, depends on op, up to 32 chars ('0' or '1') + '\0'
	int sscanf_retval=sscanf(instruction_str," %[a-zA-Z0-9_] [ %[a-zA-Z0-9_] %1[+-] %[a-zA-Z0-9\"_] ] %s",s[0],s[1],&op,s[2],s[3]);//parses the instruction, s[0] stores the opcode, s[1] stores a register, s[2] stores a immediate (decimal or hexadecimal), s[3] stores a register
	if(sscanf_retval!=5){
		printf("Invalid number of arguments:%d\n",sscanf_retval);
		return;
	}

	//TODO: convert instruction_str to lower case
	binary_string[0]='\0';
	int pos;
	pos=find(dictionary,dictionary_size,s[0]);
	if(pos==-1){
		printf("Opcode not found: %s\n",s[0]);
		return;
	}
	strcat(binary_string,dictionary[pos].binary_string);
	//printf("\nAppended s[0].\n");

	for(int i=1;i<=3;i++){
		//remove the termination char
		if(i==3){
			//printf("s[%d]=%s ",i,s[i]);

			if(s[i][strlen(s[i])-1]==';'){
				s[i][strlen(s[i])-1]='\0';//removes the punctuation
				//printf("s[%d]=%s ",i,s[i]);
			}else{
				printf("Argument %d: expected ; instead of %c in %s\n",i,s[i][strlen(s[i])-1],s[i]);
				return;
			}
		}

		//the OFFSET argument (constant,label or immediate)
		//the OFFSET must be appended to the END of binary_string
		//the OFFSET is determined from s[2] AND op (+/-)
		if(i==2){
			pos=find(dictionary,dictionary_size,s[i]);
			if(pos!=-1){
				if(pos >= base_dict_size){//it is a constant in data section or label
					//must adjust the size to fit in instruction
					//int lsb_to_use= strlen(dictionary[pos].binary_string)-(32 - strlen(binary_string));//how many bits of constant will be used
					//printf("\nbinary_string=%s\n",binary_string);
					//printf("\nlsb_to_use=%d\n",lsb_to_use);
					//strcat(binary_string,(dictionary[pos].binary_string)+(strlen(dictionary[pos].binary_string)-lsb_to_use)*sizeof(char));
					
					strcpy(tmp_offset_binary_string,dictionary[pos].binary_string);
				}else{//base dictionary word, this is not allowed
					printf("\nInvalid offset argument: %s\n",s[i]);
					return;
				}
			}else{
				//test for hex constant
				int sscanf_retval_hex = sscanf(s[i],"x\"%[0-9a-fA-F]\"",s[i]);
				if(sscanf_retval_hex!=0){//is hex constant
					//strcat(binary_string,hex2bin(s[i]));
					strcpy(tmp_offset_binary_string,hex2bin(s[i]));
					//adjusts the length to 32, extends with ZEROS
					int L=strlen(tmp_offset_binary_string);
					//shifts the string by 32-L bytes
					strncpy(tmp_offset_binary_string+(32-L)*sizeof(char),tmp_offset_binary_string,L+1);//L+1 counts the '\0'
					for(int j=0;j<32-L;j++){
						tmp_offset_binary_string[j]='0';//prepends zeros
					}
				}else{
					int sscanf_retval_bin = sscanf(s[i],"\"%[01]\"",s[i]);
					if(sscanf_retval_bin!=0){//is bin constant
						//strcat(binary_string,s[i]);
						strcpy(tmp_offset_binary_string,s[i]);
						//adjusts the length to 32, extends with ZEROS
						int L=strlen(tmp_offset_binary_string);
						//shifts the string by 32-L bytes
						strncpy(tmp_offset_binary_string+(32-L)*sizeof(char),tmp_offset_binary_string,L+1);//L+1 counts the '\0'
						for(int j=0;j<32-L;j++){
							tmp_offset_binary_string[j]='0';//prepends zeros
						}
					}else{
						//test for decimal constant
						unsigned int tmp;
						char *ptr_non_numeric=calloc(2,sizeof(char));
						//decimal number
						tmp=strtod(s[i],&ptr_non_numeric);
						strcpy(tmp_offset_binary_string,uint2bin(tmp,32));
						if(ptr_non_numeric[0]!='\0'){
							printf("\nConstante inválida: %s\n",s[i]);
							return;
						}
					}
				}
			}
		}else{// register arguments
			pos=find(dictionary,dictionary_size,s[i]);
			if(pos==-1){
				printf("Argument not found: %s\n",s[i]);
				return;
			}
			strcat(binary_string,dictionary[pos].binary_string);
			//printf("\nAppended s[%d].\n",i);
		}
	}
	printf("\ntmp_offset_binary_string: %s\n",tmp_offset_binary_string);
	printf("op=%c\n",op);
	if(op=='+'){
		strcpy(offset_binary_string,tmp_offset_binary_string);
	}else{
		int tmp=bin2uint(tmp_offset_binary_string);
		tmp=-tmp;
		strcpy(offset_binary_string,uint2bin((unsigned int)tmp,32));
	}
	//must adjust the size to fit in instruction
	int lsb_to_use= strlen(offset_binary_string)-(32 - strlen(binary_string));//how many bits of constant will be used
	strcat(binary_string,offset_binary_string+(strlen(offset_binary_string)-lsb_to_use)*sizeof(char));
	return;
}

//searches for a given mnemonic in a vector of mnemonics
//if it finds the opcode, returns the index
//else, returns -1
int find_mnemonic_in_vector(char *opcode, char ** mnemonics_vector){
	int pos;
	for(pos=0;pos<64;pos++){
		if(strcmp(opcode,mnemonics_vector[pos])==0)//checks if mnemonic belongs to R_type 
			break;
	}
	if(pos==64){
		pos=-1;
	}
	return pos;
}

//extracts mnemonics in string of assembly_syntax and store then in a vector of char*
//if successfull returns the number of mnemonics extratcted
//else, returns 0
int extract_mnemonics_to_vector(char *list_of_opcodes,const char *string_type, char ** mnemonics_vector){
	int m=0;int n=0;int k=0;
	int retval=0;
	char *format_string=calloc(64*10,sizeof(char));
	sprintf(format_string,"%s_mnemonics := {%%[a-zA-Z,_]};",string_type);
	int sscanf_retval=sscanf(list_of_opcodes,format_string,s[0]);
	if(sscanf_retval==1){
		//printf("s[0]=%s\n",s[0]);
		//n: index of chars in s[0] (list)
		//k: index of word in mnemonics_vector
		for(;k<64;n++){
			//printf("n=%d s[0][n]=%d\n",n,s[0][n]);
			if(s[0][n]!=',' && s[0][n]!='\0'){
				mnemonics_vector[k][m]=s[0][n];
				m++;
			}else{
				mnemonics_vector[k][m]='\0';
				//printf("n=%d s[0][n]=%d %s_mnemonics[%d]=%s\n",n,s[0][n],string_type,k,mnemonics_vector[k]);
				k++;
				m=0;
				if(s[0][n]=='\0')
					break;
			}
		}
		retval=k;
		printf("%s instructions:\n",string_type);
		for(int k=0;k<64 && k<retval;k++){
			printf("\t%s\n",mnemonics_vector[k]);
		}
	}
	free(format_string);
	return retval;
}
