#!/usr/bin/python
# -*- coding: UTF-8 -*-

import re
import sys # for C-like command line arguments

# registers available for argument passing in MIPS
arg_regs=["$4","$5","$6","$7"]
used_arg_regs=[]

def main(argv):
  if(len(argv)!=2):
    print("Uso: %s FILE\n" % argv[0]);
    sys.exit(1)

  try:
	  of=open("./main.i","wt") # opens a text file for write
  except:
    print("Erro ao criar o arquivo de saída!\n");
    sys.exit(1)

  try:
    fp=open(argv[1],"rt") # instructions will only be read
  except:
    print("Erro ao ler o arquivo %s\n" % argv[1])
    sys.exit(2)

  print("Parsing %s\n" % argv[1]);
  
  labels_dict={} # labels started with $ must be translated 

  for line in fp:
    #line = "xor $0, $0, $0"
    #line = "add $0,$1,$2"
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
    if(words[0][0]=="."):
      continue

    opcode=words[0]
    new_instr=""
    arg=[opcode]
    if(len(words)==2):
      arg.extend(words[1].split(","))

    for i in range(len(arg)):
      arg[i]=arg[i].strip()
    frmt_str=""

    # check for label definition
    if(opcode[-1]==":" and len(words)==1):
      labels_dict.update({opcode[0:-1]:""})
      if(opcode[0:-1]=="main"): # index -1 (last element) is NOT included
        # concatenate strings
        new_instr=words[0]+"\n\txor $0 $0 $0;" # includes instruction to reset $0 since this is reserved for zero in MIPS assembly
      else:
        new_instr=words[0]

    # processes instructions
    elif(opcode=="sw" or opcode=="lw"):
      # arg2 will be parsed in the form offset($x)      
      tmp = arg[2].split("(")
      if(len(tmp)!=2 or (not tmp[1].endswith(")"))):
        #raise ValueError("Syntax error: {}".format(line))
        print("Syntax error: {}".format(line))
        sys.exit(-1)
      tmp[1]=tmp[1][:-1] # remove ')' from tmp[1] 
      arg[2]=tmp[1]
      arg.append(tmp[0]) # arg[3] <- tmp[0]
      frmt_str = "\t{} [{}+{}] {};"
      #print(arg)

      if(opcode=="lw" and arg[1]=="$fp"):
        continue # instructions that update FP must be skipped because this is handled by HW

      # replace all instructions that get/put arguments from/to stack: lw $y, offset($fp) by lw [$30 + (offset - 8)] $y
      elif((opcode=="lw" or opcode=="sw") and arg[2]=="$fp"):
        frmt_str = "\t{} [$30+{}] {};"
        #instructions that uses FP to get vars from stack or write to it mmust be translated (-8)
        new_instr = frmt_str.format(opcode,int(arg[3])-8,arg[1])

      # skips instructions that save FP to stack because this is done automatically by HW
      elif(opcode=="sw" and arg[1]=="$fp" and arg[2]=="$sp"):
        continue

      # replaces instructions that save GPR to stack by push
      # TODO: check offset to see if it is decreasing between registers being saved
      elif(opcode=="sw" and arg[1]!="$fp" and arg[2]=="$sp"):
        frmt_str = "\tpush {};"
        new_instr = frmt_str.format(arg[1])

      # replaces instructions that load register with stack contents by pop
      # TODO: check offset to see if it is decreasing between registers being loaded
      elif(opcode=="lw" and arg[2]=="$sp"):
        frmt_str = "\tpop {};"
        new_instr = frmt_str.format(arg[1])
      
      else:
        new_instr = frmt_str.format(opcode,arg[2],arg[3],arg[1])

    elif(opcode=="move"):

      if(arg[1]=="$sp"):
        continue # instructions that update SP must be skipped because this is handled by HW

      elif(arg[1]=="$fp"):
        if(arg[2]=="$sp"):
          # Since the input assembly is generated according to MIPS calling convention and that convention uses $30 as the FP
          # we can be sure that $30 will not be used for other purposes, then:
          # do ldfp $30 ($30 <- FP)
          # replace all instructions lw $y, offset($fp) por lw [$30 + (offset - 8)] $y
          new_instr="\tldfp $30;"

        else:# FP can be updated only with SP contents
          #raise ValueError("Instruction not (yet) supported: %s\n" % line);
          print("Instruction not (yet) supported: {}\n".format(line))
          sys.exit(-1)

      else:
        frmt_str = "\taddi {} {} x\"0000\";"
        new_instr= frmt_str.format(arg[2],arg[1])

    elif(opcode=="addi" or opcode=="addiu" or opcode=="slti" or opcode=="sltiu" or opcode=="slt" or  opcode=="sltu"):

      if(opcode=="addi" or opcode=="addiu"):
        frmt_str="\taddi {} {} x\"{:04X}\";"
        if(arg[1]=="$sp"):
          continue
        else:
          new_instr = frmt_str.format(arg[2],arg[1],int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))
      elif(opcode=="slti" or opcode=="sltiu" or opcode=="slt" or  opcode=="sltu"):
        frmt_str="\tslti {} {} x\"{:04X}\";"
        new_instr = frmt_str.format(arg[2],arg[1],int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))

    # jump instructions
    elif(opcode=="jr" or opcode=="j" or opcode=="jalx" or opcode=="jal" or opcode=="jalr"):

      if(opcode=="jr"):
        if(arg[1]!="$31"):
          #raise ValueError("Instruction not (yet) supported: %s\n" % line)
          print("Instruction not (yet) supported: {}\n".format(line))
          sys.exit(-1)
        new_instr="\tret;"
      elif(opcode=="jalr"):
        #raise ValueError("Instruction not (yet) supported: %s\n" % line)
        print("Instruction not (yet) supported: {}\n".format(line))
        sys.exit(-1)
      elif(opcode=="jalx" or opcode=="jal"):
        # before function call, will push used register arguments
        used_arg_regs.sort(reverse = True)
        new_instr=""
        print(used_arg_regs)
        for r in used_arg_regs:
          new_instr = new_instr+"\tpush {};\n".format(r)
        frmt_str="\tcall {};"
        new_instr = new_instr + frmt_str.format(arg[1])
      elif(opcode=="j"):
        frmt_str="\tjmp {};"
        new_instr = frmt_str.format(arg[1])
      else:
        #raise ValueError("Instruction not (yet) supported: %s\n" % line);
        print("Instruction not (yet) supported: {}\n".format(line))
        sys.exit(-1)

    elif(opcode=="li"):
      frmt_str="\txor {} {} {};\n\taddi {} {} x\"{:04X}\";" # zeroes register, then adds immediate
      new_instr = frmt_str.format(arg[1],arg[1],arg[1],arg[1],arg[1],int(arg[2]) if int(arg[2])>=0 else 2**16+int(arg[2]))

    # branch instructions
    elif(opcode[0]=="b"):
      if(opcode=="b"):
        frmt_str="\tjmp {};"
        new_instr = frmt_str.format(arg[1])
      elif(opcode=="bne"):
        frmt_str="\tbeq {} {} x\"0001\";\n\tjmp {};"
        new_instr = frmt_str.format(arg[1], arg[2], arg[3])
      elif(opcode=="beq"):
        frmt_str="\tbeq {} {} x\"0001\";\n\tbeq $0 $0 x\"0001\";\n\tjmp {};"
        new_instr = frmt_str.format(arg[1], arg[2], arg[3])

    # R-type and similars: add,sub,and,or,xor,nor,fadd,fmul,fdiv,fsub
    elif (opcode=="add" or opcode=="addu" or opcode=="and" or opcode=="xor" or opcode=="sub" or opcode=="subu" or opcode=="or" or opcode=="nor"):
      if(opcode=="addu"):
        frmt_str="\tadd {} {} {};"
        new_instr = frmt_str.format(arg[2],arg[3],arg[1])
      elif(opcode=="subu"):
        frmt_str="\tsub {} {} {};"
        new_instr = frmt_str.format(arg[2],arg[3],arg[1])
      else:
        frmt_str="{} {} {} {};"
        new_instr = frmt_str.format(opcode,arg[2],arg[3],arg[1])

    elif(opcode=="mul"):
      frmt_str="\timul {} {};\n\tmflo {};"
      new_instr=frmt_str.format(arg[2],arg[3],arg[1])

    elif(opcode=="mult" or opcode=="multu"):
      frmt_str="\tmult {} {};"
      new_instr=frmt_str.format(arg[1],arg[2])

    elif(opcode=="mflo" or opcode=="mfhi"):
      frmt_str="\t{} {};"
      new_instr=frmt_str.format(opcode,arg[1])

    elif(opcode=="nop"):
      new_instr="\tnop;"

    else:
      #raise ValueError("Unknown instruction: {}".format(opcode))
        print("Instruction not (yet) supported: {}\n".format(opcode))
        sys.exit(-1)
      
    if(opcode!="ext" and opcode!="div" and opcode!="divu" and opcode!="madd" and opcode!="maddu" and opcode!="msub" and opcode!="msubu" and opcode!="mult" and opcode!="multu"and opcode!="call"):
      if(len(arg)>=2 and arg[1] in arg_regs and arg[1] not in used_arg_regs):
        used_arg_regs.append(arg[1])
    elif(opcode=="call"):
      ## já fiz o push dos registradores usados, posso limpar a lista
      used_arg_regs.clear();
      #print (used_arg_regs)

    #print(txt)
    print(line + "->" + new_instr)
    of.write(new_instr+"\n")

  # keep only labels started with '$' (those which need translation)
  for l in labels_dict.keys():
    if(l.startswith("$")):
      labels_dict[l] = l[1:]
    else:
      labels_dict.pop(l)
  #print(labels_dict)
  of.close()
  
  # re-opens intermediary file, in reading mode
  try:
	  of=open("./main.i","rt") # opens a text file for reading
  except:
    print("Erro ao ler o arquivo intermediário!\n");
    sys.exit(2)

  # opens final file, in writing mode
  try:
	  ff=open("./main.s","wt") # opens a text file for writing
  except:
    print("Erro ao criar o arquivo final!\n");
    sys.exit(3)

  l=list(labels_dict.keys()) # get a list of dictionary keys
  
  # sort it in descending order to avoid replacing a substring of a label
  # e.g: if you have labels $L5 and $L5X, you should not look for $L5 before looking for $L5X
  # $L5 would be found inside $L5X
  l.sort(reverse = True)
  
  of_lines=[] # empty list, will store all lines of intermediary file
  for line in of: # iterates over lines of intermediary file
    of_lines.append(line)

  for label in l: # iterates over labels_dict keys
    #print(label)
    for i in range(len(of_lines)): # iterates over lines of intermediary file
      # searches for label l
      of_lines[i] = of_lines[i].replace(label,labels_dict[label])

  for i in range(len(of_lines)): # iterates over lines of intermediary file
    # adds instruction to load $2 with return value
    # in MIPS convention, the return value is placed at $2 (also use $3 for 64 bit value)
    # in my processor, there a special register RV, ldrv $2 loads $2 with the return value
    # there is no support for returning wider values
    if(of_lines[i].startswith("\tcall")):
      of_lines[i] = of_lines[i]+"\tldrv $2;\n"
      #of_lines[i] = of_lines[i]+"\tpop $2;\n"
    elif(of_lines[i].startswith("\tret")):
      of_lines[i] = "\tpush $2;\n"+of_lines[i]
      

  for i in range(len(of_lines)): # iterates over lines of intermediary file
    of_lines[i] = re.sub("\${1}(?=\d)", "r", of_lines[i])# register renaming
      
  # final file write
  for i in range(len(of_lines)): # iterates over lines of intermediary file
    ff.write(of_lines[i])
  of.close()
  ff.close()
  sys.exit(0)

main(sys.argv)