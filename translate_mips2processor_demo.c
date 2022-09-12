#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *replace_char(char *str, char find, char replace);

int main()
{
	//char instr[] = "lw $4,8($5)";
	char instr[] = "fadd $1,$2,$3";
	//char instr[] = "mult $2,$2";
	char *new_instr = (char *)calloc(20, sizeof(char));
	char *opcode = (char *)calloc(6, sizeof(char));
	sscanf(instr, "%[a-zA-Z] %*s", opcode);

	printf("%s -> ", instr);
	int offset = 0;
	char arg1[4];
	char arg2[4];
	char arg3[4];
	if (strcmp(opcode, "sw") == 0 || strcmp(opcode, "lw") == 0)
	{
		//printf("Found load-store instruction");
		sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9] , %d ( %[$a-zA-Z0-9] ) ", opcode, arg1, &offset, arg2);
		sprintf(new_instr, "%s \[%s+%d\] %s", opcode, arg2, offset, arg1);
	}
	else
	{ // R-type: add,sub,and,or,xor,nor,fadd,fmul,fdiv,fsub
		sscanf(instr, "%[a-zA-Z] %[$a-zA-Z0-9] , %[$a-zA-Z0-9] , %[$a-zA-Z0-9]", opcode, arg1, arg2, arg3);
		sprintf(new_instr, "%s %s, %s, %s", opcode, arg2, arg3, arg1);		
	}
	replace_char(new_instr, '$', 'r');
	strcat(new_instr, ";");
	printf("%s\n", new_instr);
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
