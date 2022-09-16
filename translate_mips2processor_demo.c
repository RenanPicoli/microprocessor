#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//maximum length of line in text files
#define MAX_STR_LENGTH 200

char *replace_char(char *str, char find, char replace);

int main(int argc,char* argv[])
{
	FILE *fp;//file pointer for read
	FILE *of;//file pointer for outputfile

	if(argc != 2){
		printf("Uso: %s FILE\n",argv[0]);
		return 1;
	}

	of=fopen("./main.i","w");// opens a text file for write
	if(of==NULL){
		printf("Erro ao criar o arquivo de saída!\n");
		return 1;
	}
	
	//char instr[] = "lw $4,8($5)";
	//char instr[] = "fadd $1,$2,$3";
	//char instr[] = "mult $2,$2";
	char* instr=calloc(MAX_STR_LENGTH,sizeof(char));//temporary string to store instructions read from files
	const char* beginning_of_allocated_str = instr;

	fp=fopen(argv[1],"r");//instructions will only be read
	if(fp==NULL){
		printf("Erro ao ler o arquivo %s\n",argv[1]);
		return 2;
	}

	printf("Parsing %s\n",argv[1]);

	char *new_instr = (char *)calloc(20, sizeof(char));
	char *opcode = (char *)calloc(6, sizeof(char));
	int L;

	while (!feof(fp)){
		char* fgets_retval=fgets((char*)instr,MAX_STR_LENGTH,fp);//reads a single line of fp, terminated with '\n', expects at most 199 chars
		if(fgets_retval!=NULL){
			//removes initial blank spaces
			while(1){
				if(instr[0]=='\t'||instr[0]==' '){
					instr++;
				}else{
					break;
				}
			}
			//remove newline ending, if any
			L=strlen(instr);
			//printf("L=%d\n",L);
			if(instr[L-1]=='\n'){
				instr[L-1]='\0';
			}else{
				if(instr[L-2]=='\r' && instr[L-1]=='\n'){
					instr[L-2]='\0';
					instr[L-1]='\0';
				}
			}
			//skips empty lines
			if(instr[0]=='\0'){
				continue;
			}

			int sscanf_retval=sscanf(instr, "%[.a-zA-Z$_]", opcode);

			//ignores directives started with dot '.', used only by compiler
			if(opcode[0]=='.'){
				continue;
			}

			printf("%s -> ", instr);
			int offset = 0;
			char arg1[4];
			char arg2[4];
			char arg3[4];
			arg1[0]='\0';
			arg2[0]='\0';
			arg3[0]='\0';
			char termination;

			//check for label definition
			sscanf_retval=sscanf(instr,"%[$a-zA-Z0-9_] %c", opcode, &termination);
			if(sscanf_retval==2 && termination==':'){
				strcpy(new_instr,instr);
			}else{
				//instructions
				if (strcmp(opcode, "sw") == 0 || strcmp(opcode, "lw") == 0)
				{
					//printf("Found load-store instruction");
					sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9] , %d ( %[$a-zA-Z0-9] ) ", opcode, arg1, &offset, arg2);

					//default case
					sprintf(new_instr, "\t%s \[%s+%d\] %s;", opcode, arg2, offset, arg1);

					//check for special cases,
					//if matches, overwrite new_instr

					if(strcmp(opcode,"lw")==0 && strcmp(arg1,"$fp")==0){//instructions that update FP must be skipped because this is handled by HW
						arg1[0]='\0';
						arg2[0]='\0';
						arg3[0]='\0';
						continue;
					}
					//	replace all instructions that get/put arguments from/to stack: lw $y, offset($fp) by lw [$30 + (offset - 8)] $y
					if((strcmp(opcode,"lw")==0||strcmp(opcode,"sw")==0) && strcmp(arg2,"$fp")==0){//instructions that uses FP to get vars from stack or write to it mmust be translated
						sprintf(new_instr, "\t%s \[$30+%d\] %s;", opcode, offset-8, arg1);
						arg1[0]='\0';
						arg2[0]='\0';
						arg3[0]='\0';
					}
					//	skips instructions that save FP to stack because this is done automatically by HW
					if(strcmp(opcode,"sw")==0 && strcmp(arg1,"$fp")==0 && strcmp(arg2,"$sp")==0){
						//sprintf(new_instr, "\0", arg1);
						arg1[0]='\0';
						arg2[0]='\0';
						arg3[0]='\0';
						continue;
					}
					//	replaces instructions that save GPR to stack by push
					//TODO: check offset to see if it is decreasing between registers being saved
					if(strcmp(opcode,"sw")==0 && strcmp(arg1,"$fp")!=0 && strcmp(arg2,"$sp")==0){
						sprintf(new_instr, "\tpush %s;", arg1);
						arg1[0]='\0';
						arg2[0]='\0';
						arg3[0]='\0';
					}
					//	replaces instructions that load register with stack contents by pop
					//TODO: check offset to see if it is decreasing between registers being loaded
					if(strcmp(opcode,"lw")==0 && strcmp(arg2,"$sp")==0){
						sprintf(new_instr, "\tpop %s;", arg1);
						arg1[0]='\0';
						arg2[0]='\0';
						arg3[0]='\0';
					}
				}
				else
				{
					if(strcmp(opcode, "move") == 0){
						sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9], %[$a-zA-Z0-9] ", opcode, arg1, arg2);
						if(strcmp(arg1,"$sp")==0){//instructions that update SP must be skipped because this is handled by HW
							arg1[0]='\0';
							arg2[0]='\0';
							arg3[0]='\0';
							continue;
						}
						if(strcmp(arg1,"$fp")==0){//instructions that update FP must be skipped because this is handled by HW

							if(strcmp(arg2,"$sp")==0){//instructions that update FP must be skipped because this is handled by HW
								//	Since the input assembly is generated according to MIPS calling convention and that convention uses $30 as the FP
								//	we can be sure that $30 will not be used for other purposes, then:
								//	do ldfp $30 ($30 <- FP)
								//	replace all instructions lw $y, offset($fp) por lw [$30 + (offset - 8)] $y
								sprintf(new_instr, "\tldfp $30;");
							}else{// FP can be updated only with SP contents
								printf("Instruction not (yet) supported: %s\n",instr);
								return -1;
							}
						}else{
							sprintf(new_instr, "\taddi %s %s 0;", arg2,arg1);
						}
					}else{
						if(strcmp(opcode, "addi") == 0 || strcmp(opcode, "addiu") == 0)
						{
							sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9], %[$a-zA-Z0-9] , %d ", opcode, arg1, arg2, &offset);
							if(strcmp(arg1,"$sp")==0){//instructions that update SP must be skipped because this is handled by HW
								arg1[0]='\0';
								arg2[0]='\0';
								arg3[0]='\0';
								continue;
							}
							sprintf(new_instr, "\taddi %s %s %d;", arg2,arg1,offset);
						}else{
							//jump instructions
							if(strcmp(opcode, "jr") == 0||strcmp(opcode, "j") == 0||strcmp(opcode, "jalx") == 0||strcmp(opcode, "jal") == 0||strcmp(opcode, "jalr") == 0){
								if(strcmp(opcode, "jr") == 0){
									sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9]", opcode, arg1);
									if(strcmp(arg1, "$31") != 0){
										printf("Instruction not (yet) supported: %s\n",instr);
										return -1;
									}
									sprintf(new_instr, "\tret;");
								}
								if(strcmp(opcode, "jalr") == 0){
									printf("Instruction not (yet) supported: %s\n",instr);
									return -1;
								}
								if(strcmp(opcode, "jalx") == 0||strcmp(opcode, "jal") == 0){
									sscanf(instr, "%[a-zA-Z] %s", opcode, arg1);
									sprintf(new_instr, "\tcall %s;",arg1);
								}
								if(strcmp(opcode, "j") == 0){
									sscanf(instr, "%[a-zA-Z] %s", opcode, arg1);
									sprintf(new_instr, "\tjmp %s;",arg1);
								}
							}else{
								if(strcmp(opcode, "li") == 0){
									// zeroes register, then adds immediate
									sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9] , %d", opcode, arg1, &offset);
									sprintf(new_instr, "\txor %s %s %s;\n\taddi %s %s %d;", arg1, arg1, arg1, arg1, arg1, offset);

								}else{
									//branch instructions
									if(opcode[0]=='b'){
										if(strcmp(opcode, "b") == 0){
											sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9] , %d", opcode, arg1);
											sprintf(new_instr, "\tjmp %s;", arg1);
										}
									}else{
										// R-type: add,sub,and,or,xor,nor,fadd,fmul,fdiv,fsub
										sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9] , %[$a-zA-Z0-9] , %[$a-zA-Z0-9]", opcode, arg1, arg2, arg3);
										sprintf(new_instr, "\t%s %s %s %s;", opcode, arg2, arg3, arg1);
									}
								}
							}
						}
					}
				}
				//replace_char(new_instr, '$', 'r');
				//strcat(new_instr, ";");
			}
			printf("%s\n", new_instr);
			fprintf(of,"%s\n",new_instr);		
		}
	}

	free(beginning_of_allocated_str);
	fclose(of);
	return 0;
}

char *replace_char(char *str, char find, char replace)
{
	char *current_pos = strchr(str, find);
	while (current_pos)
	{
		*current_pos = replace;
		current_pos = strchr(current_pos, find);
	}
	return str;
}
