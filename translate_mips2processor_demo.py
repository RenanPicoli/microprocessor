# -*- coding: UTF-8 -*-
import re
import sys # for C-like command line arguments

def main(argv):
  if(len(argv)!=2):
    print("Uso: %s FILE\n" % argv[0]);
    return 1;

  try:
	of=open("./main.i","wt") # opens a text file for write
  except:
    print("Erro ao criar o arquivo de saída!\n");
    return 1

  try:
    fp=open(argv[1],"rt") # instructions will only be read
  except:
    print("Erro ao ler o arquivo %s\n" % argv[1])
    return 2

  print("Parsing %s\n" % argv[1]);

  for line in fp:
    #line = "xor $0, $0, $0"
    #line = "add $0, $1, $2"
    line=line.strip() # removes spaces at beggining and end of string

    # skips empty strings
    if(len(line)==0):
      continue

    # discards comments
    line = (line.split("#"))[0]
    line=line.strip() # removes spaces at beggining and end of string

    # skips empty strings
    if(len(line)==0):
      continue

    words = line.split()

    # ignores directives started with dot '.', used only by compiler
    if(words[0]=="."):
      continue

    opcode=words[0]
    new_instr=""
    arg1=arg2=arg3=""

    # check for label definition
    if(opcode[-1]==":" and len(words)==1):
      if(opcode[0:-1]=="main"): # index -1 (last element) is NOT included
        # concatenate strings
        new_instr=words[0]+"\n\txor $0 $0 $0;" # includes instruction to reset $0 since this is reserved for zero in MIPS assembly
      else:
        new_instr=words[0]
    # processes instructions
    #elif(opcode=="sw" or opcode=="lw"):
      

    print(line + "->" + new_instr)
    #print(str(len(line))+":"+line)
    
    continue

    proc_words=[]
    if (opcode=="add" or opcode=="xor"):
      if(re.search("\w\s\$[0-9]+,\s\$[0-9]+,\s\$[$0-9]+",line)):
        frmt_str="add {} {} {};"
        for w in words:
          if(w.endswith(',')):
            l=list(w)
            l.pop(-1)
            w="".join(l)
          proc_words.append(w)
        line = frmt_str.format(proc_words[2],proc_words[3],proc_words[1])
      else:
        raise ValueError("Syntax error!")
    else:
      raise ValueError("Unknown instruction: {}".format(opcode))

    #print(txt)
    x = re.sub("\${1}(?=\d)", "r", line)# register renaming
    #print(x)

main(sys.argv)
