#!/usr/bin/python3
# -*- coding: UTF-8 -*-

import re
import sys # for C-like command line arguments

# registers available for argument passing in MIPS
arg_regs=["$4","$5","$6","$7"]
used_arg_regs=[]
  
funct_start={} # for each function, stores the line_cnt of their label definition
funct_frame_size={} # for each function, stores the size of their stack
leaf_functions=[] # names of functions that do not call other functions
inv_dict={} # given a line number of a label, returns the function name
new_instr_vector=[] # stores the lines to be written of (intermediary file)
# this dictionary relates a line number with a function for new_instr_vector
intermediary_inv_dict={}

aliases={
"$gp":"$28",
"$sp":"$29",
"$fp":"$30",
"$ra":"$31"
}

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

  translation_enable = True # this flag is used to prevent translation of user coded assembly (between #APP and #NO_APP)
  
  labels_dict={} # labels started with $ must be translated
  
  line_cnt=-1

  pre_process(fp)
  
  for line in fp:
    line_cnt = line_cnt+1 # end of for line in fp
    #line = "xor $0, $0, $0"
    #line = "add $0,$1,$2"
    line=line.strip() # removes spaces at beggining and end of string

    # skips empty strings
    if(len(line)==0):
      continue

    if(line=="#APP"):
      translation_enable = False
      print("translation DISABLED")
    elif(line=="#NO_APP"):
      translation_enable = True
      print("translation ENABLED")
      
    if(translation_enable == False):
      # discards comments
      line = (line.split("#"))[0]
      line=line.strip() # removes spaces at beggining and end of string

      # skips empty strings
      if(len(line)==0):
        continue
      else:
        #print(txt)
        print(line + "->" + line)
        #of.write(line+"\n") # repeats user coded assembly
        new_instr_vector.append(line+"\n")
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
      #checks if immediate is already in hex
      if(arg[3].startswith("0x")):
        arg[3]=str(int(arg[3],16))# convert arg[3] to decimal base

      if(opcode=="lw" and arg[1]=="$fp"):
        continue # instructions that update FP must be skipped because this is handled by HW

      # replace all instructions that get/put arguments from/to stack: lw $y, offset($fp) by lw [$30 + (offset - 8)] $y
      elif((opcode=="lw" or opcode=="sw") and arg[2]=="$fp"):
        if(arg[1] in used_arg_regs and opcode=="sw"): # because arg[1] already is in stack
            continue
        else:
            frmt_str = "\t{} [$30+{}] {};"
            #instructions that uses FP to get vars from stack or write to it must be translated
            if(get_curr_funct(line_cnt) in leaf_functions):
                new_offset=int((-funct_frame_size[get_curr_funct(line_cnt)]+int(arg[3])+0)/4)
            else:
              #f=get_curr_funct(line_cnt)
              #fs=funct_frame_size[f]
              #print("debug@{}\n{}\nframe:{}\narg3;{}".format(line_cnt,f,fs,int(arg[3])))
              new_offset=int((-funct_frame_size[get_curr_funct(line_cnt)]+int(arg[3])+0)/4)
            if(new_offset < 0): # if new_offset is negative, frmt_str will use '-'
              frmt_str = "\t{} [$30-{}] {};"
              new_instr = frmt_str.format(opcode,-new_offset,arg[1])
            else:
              new_instr = frmt_str.format(opcode,new_offset,arg[1])

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

    elif(opcode=="addi" or opcode=="addiu" or opcode=="slti" or opcode=="sltiu" or opcode=="slt" or  opcode=="sltu" or  opcode=="ori"):
      #checks if immediate is already in hex
      if(arg[3].startswith("0x")):
        arg[3]=str(int(arg[3],16))# convert arg[3] to decimal base
      if(opcode=="addi" or opcode=="addiu"):
        frmt_str="\taddi {} {} x\"{:04X}\";"
        if(arg[1]=="$sp"):
          continue
        else:
          new_instr = frmt_str.format(arg[2],arg[1],int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))
      elif(opcode=="slt" and not arg[3].isnumeric()):
        frmt_str="\tsub {} {} {};\n\tsrl {} {} x\"1F\";" # 0x1F is 31
        new_instr = frmt_str.format(arg[2],arg[3],arg[1],arg[1],arg[1])
      elif(opcode=="slti" or opcode=="sltiu" or (opcode=="slt" and arg[3].isnumeric()) or opcode=="sltu"):
        frmt_str="\tslti {} {} x\"{:04X}\";"
        new_instr = frmt_str.format(arg[2],arg[1],int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))
      else:
        frmt_str="\t{} {} {} x\"{:04X}\";"
        new_instr = frmt_str.format(opcode,arg[2],arg[1],int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))
      

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
        if(arg[1] != "$31" and arg[1] != "$ra"):
          frmt_str="\tjmp {};"
          new_instr = frmt_str.format(arg[1])
        else:
          new_instr="\tret;"
      else:
        #raise ValueError("Instruction not (yet) supported: %s\n" % line);
        print("Instruction not (yet) supported: {}\n".format(line))
        sys.exit(-1)

    elif(opcode=="li"):
      #checks if immediate is already in hex
      if(arg[2].startswith("0x")):
        arg[2]=str(int(arg[2],16))# convert arg[3] to decimal base
      frmt_str="\tlui {} x\"{:04X}\";\n\tori {} {} x\"{:04X}\";" # zeroes register, then adds immediate
      #arg2_uns=int(arg[2]) if int(arg[2])>=0 else 2**16+int(arg[2]) # arg[2] converted to unsigned
      arg2_uns=int(arg[2])
      if (arg2_uns<0):
        arg2_uns=2**32+arg2_uns # using 32 because li immediates are 32 bit wide (it's a pseudoinstruction)
      print("arg2_uns={}\narg[1]={}".format(arg2_uns,arg[1]))
      # note the doublw slash (//), this is integere division
      new_instr = frmt_str.format(arg[1],arg2_uns//(2**16),arg[1],arg[1],arg2_uns%(2**16))

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

    elif(opcode=="lui"):
      #checks if immediate is already in hex
      if(arg[2].startswith("0x")):
        arg[2]=str(int(arg[2],16))# convert arg[3] to decimal base
      frmt_str="\t{} {} x\"{:04X}\";"
      new_instr=frmt_str.format(opcode,arg[1],int(arg[2]) if int(arg[2])>=0 else 2**16+int(arg[2]))
    
    # there are 2 variants of the instructions below in MIPS
    # sll rd rs rt: rd <= rs << rt (aka sllv)
    # sll rd rs shift: rd <= rs << shift
    elif(opcode=="sll" or  opcode=="srl"):
      #checks if immediate is already in hex
      if(arg[3].startswith("0x")):
        arg[3]=str(int(arg[3],16))# convert arg[3] to decimal base
      if(arg[3][0]!="$"): # arg[3] is a constant
        frmt_str="\t{} {} {} x\"{:02X}\";"
        new_instr = frmt_str.format(opcode,arg[2],arg[1],int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))
      else: # arg[3] is a register (rt)
        frmt_str="\t{} {} {} {};" # arg[1] is rd
        new_instr = frmt_str.format(opcode+"v",arg[2],arg[3],arg[1]) # sll -> sllv, srl -> srlv
          
    elif(opcode=="sllv" or  opcode=="srlv"):
      frmt_str="\t{} {} {} {};"
      new_instr = frmt_str.format(opcode,arg[2],arg[3],arg[1])

    elif(opcode=="nop"):
      new_instr="\tnop;"

    else:
      #raise ValueError("Unknown instruction: {}".format(opcode))
      #print("Instruction not (yet) supported: {}\n".format(opcode))
      #sys.exit(-1)
      new_instr = line # repeats the instruction, will cause error at assembler, if not cut
      
    if(opcode!="ext" and opcode!="div" and opcode!="divu" and opcode!="madd" and opcode!="maddu" and opcode!="msub" and opcode!="msubu" and opcode!="mult" and opcode!="multu"and opcode!="call"):
      if(len(arg)>=2 and arg[1] in arg_regs and arg[1] not in used_arg_regs):
        used_arg_regs.append(arg[1])
    elif(opcode=="call"):
      ## já fiz o push dos registradores usados, posso limpar a lista
      used_arg_regs.clear();
      #print (used_arg_regs)

    #print(txt)
    print(line + "-> " + new_instr)
    #of.write(new_instr+"\n")
    new_instr_vector.extend((new_instr).split("\n"))

  post_process(new_instr_vector) # removes prologues and epilogues, when specified
  for i in new_instr_vector:
    if(i[-1]=="\n"):
      of.write(i)
    else:
      of.write(i+"\n")
  of.close()
  
  keys_to_be_deleted=[]
  # keep only labels started with '$' (those which need translation)
  for l in labels_dict.keys():
    if(l.startswith("$")):
      labels_dict[l] = l[1:]
    else:
      keys_to_be_deleted.append(l)
  #print(labels_dict)
  for k in keys_to_be_deleted:
      labels_dict.pop(k)

  
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
    for alias, actual in aliases.items():
      of_lines[i] = of_lines[i].replace(alias,actual)# replaces register aliases

  for i in range(len(of_lines)): # iterates over lines of intermediary file
    of_lines[i] = re.sub("\${1}(?=\d)", "r", of_lines[i])# register renaming ($x -> $rx)
      
  # final file write
  for i in range(len(of_lines)): # iterates over lines of intermediary file
    ff.write(of_lines[i])
  of.close()
  ff.close()
  sys.exit(0)
  
# loop through code file
# uses metadata to fill dictionaries funct_start and funct_frame_size
# also determine the leaf funtions (fill leaf)
def pre_process(fp):
  line_cnt=0
  nxt_label=None
  found_function=False
  for line in fp:
    line=line.strip()
    words = line.split()
    if(len(words)>=3 and words[0]==".type" and words[2]=="@function"):
      nxt_label=words[1][0:-1]
      print("Found function definition: {}".format(words[1][0:-1]))
      found_function=True
    elif(found_function and line.startswith(nxt_label)):
      funct_start[nxt_label]=line_cnt
      # all functions start as leaf but might be removed from this list
      leaf_functions.append(nxt_label)
    elif(found_function and len(words)>=2 and words[0]==".frame"):
      args=words[1].split(",")
      if(len(args)==3):
        if(args[0]!="$fp"):
          print("Unrecognized option {} at directive: {}".format(args[0],line))
        else:
          print("Found {}'s frame size: {}".format(nxt_label, int(args[1])))
          funct_frame_size[nxt_label]=int(args[1])
      else:
        print("Syntax error at directive: {}".format(line))
    # detects function calls (non-leaf functions)
    elif(found_function and len(words)>=2 and (words[0]=="jal" or words[0]=="jalx")):
        print("Found function call inside {} called {}".format(nxt_label, words[1]))
        if nxt_label in leaf_functions: # to avoid removing twice a object
            leaf_functions.remove(get_curr_funct(line_cnt))
    line_cnt=line_cnt+1
  fp.seek(0) # rewinds file
  
def get_curr_funct(line_cnt):
    # this dictionary relates a line number with a function
    for k in funct_start:
        inv_dict[funct_start[k]]=k

    # keeps keys in descending order
    keys=list(inv_dict.keys())
    keys.sort(reverse=True)
    for s in keys:
        if(line_cnt < s):
            continue
        else:
            return inv_dict[s]            
    return "main"
  
# removes prologues and epilogues, when specified
def post_process(instr_vector):
    #looks for flag ".remove_prologue"
    #if you intend a naked function, this should be the 1st instruction in __asm()
    #identifies the function (look for a label definition)
    #removes lines between label and the flag
    last_label_idx=0
    next_label_idx=0
    lines_to_remove=[]
    for f in funct_start:
        line_cnt=0
        for l in instr_vector:
            if(l==f+":"): # is a label
                intermediary_inv_dict[line_cnt]=f
            line_cnt = line_cnt+1
        
    line_cnt=0
    for l in instr_vector:
        if(l[-1:]==":"): # is a label
            if l[0:-1] in intermediary_inv_dict.values():
                last_label_idx = line_cnt
                #print("Found label:{} at {}\n".format(l,line_cnt))
        if(l==".remove_prologue\n"):
            #print("Found remove_prologue at {}".format(line_cnt))
            lines_to_remove.extend(range(last_label_idx+1,line_cnt+1))
            #print("last_label_idx={}, line_cnt={}, \n".format(last_label_idx,line_cnt))
            #print(list(range(last_label_idx+1,line_cnt+1)))
        if(l==".remove_epilogue\n"):
            # tries to find next label
            # removes lines from this flag until the next label
            for n in sorted(intermediary_inv_dict.keys()):
              if(line_cnt > n):
                continue
              else:
                next_label_idx=n
                #print("line_cnt={}, next_label_idx={}\n".format(line_cnt,next_label_idx))
                break
            lines_to_remove.extend(range(line_cnt,next_label_idx))
            #print(list(range(line_cnt,next_label_idx)))
            #break
        line_cnt = line_cnt+1
    print(lines_to_remove)
    
    #deletes lines of indexes in lines_to_remove
    #lines_to_remove needs to be reversed
    # supose you need to remove the 1st and 3rd
    # when you remove the 1st, the 3rd turns into the 2nd
    lines_to_remove.sort(reverse = True)
    for i in lines_to_remove:
        #pass
        instr_vector.pop(i)
    #print(instr_vector)

main(sys.argv)
