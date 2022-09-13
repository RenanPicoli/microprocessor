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
		printf("Uso: assembler FILE\n");
		return 1;
	}

	of=fopen("./main.s","w");// opens a text file for write
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
			if(instr[L-1]=='\n'){
				instr[L-1]='\0';
			}else{
				if(instr[L-2]=='\r' && instr[L-1]=='\n'){
					instr[L-2]='\0';
					instr[L-1]='\0';
				}
			}

			sscanf(instr, "%[a-zA-Z] %*s", opcode);

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
			int sscanf_retval=sscanf(instr,"%[$a-zA-Z0-9_] %c", opcode, &termination);
			if(sscanf_retval==2 && termination==':'){
				strcpy(new_instr,instr);
			}else{

				if (strcmp(opcode, "sw") == 0 || strcmp(opcode, "lw") == 0)
				{
					//printf("Found load-store instruction");
					sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9] , %d ( %[$a-zA-Z0-9] ) ", opcode, arg1, &offset, arg2);
					sprintf(new_instr, "%s \[%s+%d\] %s", opcode, arg2, offset, arg1);
				}
				else
				{ // R-type: add,sub,and,or,xor,nor,fadd,fmul,fdiv,fsub
					sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9] , %[$a-zA-Z0-9] , %[$a-zA-Z0-9]", opcode, arg1, arg2, arg3);
					sprintf(new_instr, "%s %s %s %s", opcode, arg2, arg3, arg1);
				}
				replace_char(new_instr, '$', 'r');
				strcat(new_instr, ";");
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
