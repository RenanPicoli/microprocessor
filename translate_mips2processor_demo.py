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
# this dictionary relates a line number with a function for new_instr_vector
intermediary_inv_dict={}
funct_returned_regs={} # for each function, stores the number of returned regs

available_sections=["text","data","rdata","bss"]
curr_section="text"
new_instr_vector=[] # stores the lines to be written in intermediary file: text section
data_vector=[] # stores the lines to be written in intermediary file: data section
rdata_vector=[] # stores the lines to be written in intermediary file: rdata section
bss_vector=[] # stores the lines to be written in intermediary file: bss section

aliases={
"$gp":"$28",
"$sp":"$29",
"$fp":"$30",
"$ra":"$31"
}

#TODO: remove this improvised solution
INSTRUCTION_MEMORY_BASE_ADDR=0x2000 # byte address

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
    # line = "xor $0, $0, $0"
    # line = "	lw	$5,$LC5"
    line=line.strip() # removes spaces at beggining and end of string

    # skips empty strings
    if(len(line)==0):
      continue
      
    # determines current section
    global curr_section
    if(line==".text"):
      curr_section="text"
      print(line + "-> " + line)
      continue
    elif(line==".data"):
      curr_section="data"
      print(line + "-> " + line)
      continue
    elif(line==".rdata"):
      curr_section="rdata"
      print(line + "-> " + line)
      continue
    elif(line.startswith(".section\t.rodata")):
      curr_section="rdata"
      print(line + "-> " + line)
      continue
    elif(line.startswith(".section\t.bss")):
      curr_section="bss"
      print(line + "-> .bss")
      continue
    elif(line.startswith(".local")):
      curr_section="bss"
      print(line + "-> .bss")
      # intentionally removed the 'continue' because this line needs to be parsed
      
    if(curr_section=="data"):
      words = line.split()
      if(words[0].startswith(".word")):#TODO: add support for .byte,.half,.double
        if(words[1].isdecimal() or words[1][0]=='-'):# "-123" is not decimal
          new_instr="x{:08X};".format(2**32+int(words[1])) if words[1][0]=='-' else "x{:08X};".format(int(words[1])) # stores the constant in hex
          print(line + "-> " + new_instr)
          #of.write(new_instr+"\n")
          data_vector.extend((new_instr).split("\n"))
          continue
      elif(line[-1]==":" and len(words)==1): # LABEL
        new_instr=line
        print(line + "-> " + new_instr)
        #of.write(new_instr+"\n")
        data_vector.extend((new_instr).split("\n"))
        # adds to label dictionary
        labels_dict.update({line[0:-1]:""})
        continue
    elif(curr_section=="rdata"):
      words = line.split()
      if(words[0].startswith(".word")):#TODO: add support for .byte,.half,.double
        if(words[1].isdecimal() or words[1][0]=='-'):# "-123" is not decimal
          new_instr="x{:08X};".format(2**32+int(words[1])) if words[1][0]=='-' else "x{:08X};".format(int(words[1])) # stores the constant in hex
          print(line + "-> " + new_instr)
          #of.write(new_instr+"\n")
          rdata_vector.extend((new_instr).split("\n"))
          continue
      elif(line[-1]==":" and len(words)==1): # LABEL
        new_instr=line
        print(line + "-> " + new_instr)
        #of.write(new_instr+"\n")
        rdata_vector.extend((new_instr).split("\n"))
        # adds to label dictionary
        labels_dict.update({line[0:-1]:""})
        continue
    elif(curr_section=="bss"):
      words = line.split()      
      if(words[0].startswith(".space") and len(words)==2): # size declaration
        new_instr="x"
        for i in range(int(words[1])):
          new_instr = new_instr+"00"
        new_instr = new_instr+";"
        print(line + "-> " + new_instr)
        #of.write(new_instr+"\n")
        bss_vector.extend((new_instr).split("\n"))
        continue
      elif(line[-1]==":" and len(words)==1): # LABEL
        new_instr=line
        print(line + "-> " + new_instr)
        #of.write(new_instr+"\n")
        bss_vector.extend((new_instr).split("\n"))
        # adds to label dictionary
        labels_dict.update({line[0:-1]:""})
        continue
      elif(words[0].startswith(".local") and len(words)==2): # "LABEL"
        new_instr=words[1]+":"
        print(line + "-> " + new_instr)
        #of.write(new_instr+"\n")
        bss_vector.extend((new_instr).split("\n"))
        # adds to label dictionary
        labels_dict.update({new_instr[0:-1]:""})
        continue
      elif(words[0].startswith(".comm") and len(words)==2): # size decalration
        words=words[1].split(",")
        new_instr="x"
        for i in range(int(words[1])):
          new_instr = new_instr+"00"
        new_instr = new_instr+";"
        print(line + "-> " + new_instr)
        #of.write(new_instr+"\n")
        bss_vector.extend((new_instr).split("\n"))
        continue
      
    # elif(curr_section=="text")
    if(line=="#APP" or line=="APP"):
      translation_enable = False
      print("translation DISABLED")
      continue
    elif(line=="#NO_APP" or line=="NO_APP"):
      translation_enable = True
      print("translation ENABLED")
      continue
      
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
    try:
        words = line.split()
        new_instr=""
        if(line[0]=="$" and line.endswith("= .")):
            continue
              
        # ignores other directives started with dot '.', used only by compiler
        if(words[0][0]=="."):
          continue
    
        opcode=words[0]
        arg=[opcode]
        if(len(words)==2):
          arg.extend(words[1].split(","))
    
        for i in range(len(arg)):
          arg[i]=arg[i].strip()
        frmt_str=""
        
        if(len(arg)>=2 and arg[1] in arg_regs and arg[1] not in used_arg_regs):
            if(opcode!="sw" and opcode!="sb" and opcode!="sh" and opcode!="swl" and 
               opcode!="swr" and opcode!="usw" and
               opcode!="div" and opcode!="divu" and opcode!="madd" and
               opcode!="maddu" and opcode!="msub" and opcode!="msubu" and
               opcode!="mult" and opcode!="multu" and
               opcode!="mthi" and opcode!="mtlo" and
               not opcode.startswith("b") and
               opcode!="jalr"):
                print("arg="+str(arg))
                used_arg_regs.append(arg[1])
    
        # check for label definition
        if(opcode[-1]==":" and len(words)==1):
          labels_dict.update({opcode[0:-1]:""})
          if(opcode[0:-1]=="main"): # index -1 (last element) is NOT included
            # concatenate strings
            new_instr=words[0]+"\n\txor $0 $0 $0;" # includes instruction to reset $0 since this is reserved for zero in MIPS assembly
          else:
            new_instr=words[0]
          if(opcode[0:-1] in funct_start.keys()):#the label definition is also a function start
            used_arg_regs.clear()
    
        # processes instructions
        # for now, there is no support for types sizes different from 32 bits
        # sb, sh will translate to sw
        # lb, lbu, lh, lhu will translate to lw
        elif(opcode=="sw" or opcode=="lw" or opcode=="sb" or opcode=="sh" or opcode=="lb" or opcode=="lbu" or opcode=="lh" or opcode=="lhu"):
          if(opcode=="sb" or opcode=="sh"):
            opcode = "sw"
          elif(opcode=="lb" or opcode=="lbu" or opcode=="lh" or opcode=="lhu"):
            opcode = "lw"
          # arg2 will be parsed in the form offset($x)      
          tmp = arg[2].split("(")
          #print("tmp=")
          #print(tmp)
          if(len(tmp)==1 and opcode=="lw"):# lw $x,$LABEL ($x <= mem[LABEL])
            frmt_str = "\tlui {} %hi({});\n\tlw [{}+%lo({})] {};"
            new_instr = frmt_str.format(arg[1],arg[2],arg[1],arg[2],arg[1])
            print(line + "-> " + new_instr)
            #of.write(new_instr+"\n")
            new_instr_vector.extend((new_instr).split("\n"))
            continue
          if(len(tmp)==1 and opcode=="sw"):# sw $x,$LABEL (mem[LABEL] <= $x)
            frmt_str = "\tlui $0 %hi({});\n\tsw [$0+%lo({})] {};\n\txor $0 $0 $0;"
            new_instr = frmt_str.format(arg[2],arg[2],arg[1])
            print(line + "-> " + new_instr)
            #of.write(new_instr+"\n")
            new_instr_vector.extend((new_instr).split("\n"))
            continue
          if((len(tmp)!=1 and len(tmp)!=2 and len(tmp)!=3) or (not tmp[1].endswith(")"))):
            #raise ValueError("Syntax error: {}".format(line))
            print("Syntax error: {}".format(line))
            sys.exit(-1)
          tmp[-1]=tmp[-1][:-1] # remove ')' from tmp[1] 
          arg[2]=tmp[-1]# arg[2] <- register
          arg.append(tmp[-2]) # arg[3] <- offset or label
          frmt_str = "\t{} [{}+{}] {};"
          #print(arg)
          
          #this is a special case: lw/sw $y, %lo/hi($LABEL)($x)
          if(len(tmp)==3):
            new_instr = frmt_str.format(opcode,arg[2],tmp[0]+"("+arg[3],arg[1])
            print(line + "-> " + new_instr)
            #of.write(new_instr+"\n")
            new_instr_vector.extend((new_instr).split("\n"))
            continue
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
                  new_offset=int((-funct_frame_size[get_curr_funct(line_cnt)]+int(arg[3])+0))
                else:
                  #f=get_curr_funct(line_cnt)
                  #fs=funct_frame_size[f]
                  #print("debug@{}\n{}\nframe:{}\narg3;{}".format(line_cnt,f,fs,int(arg[3])))
                  new_offset=int((-funct_frame_size[get_curr_funct(line_cnt)]+int(arg[3])+0))
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
            if (int(arg[3]) >= 0):
              new_instr = frmt_str.format(opcode,arg[2],int(arg[3]),arg[1])
            else:
              frmt_str = "\t{} [{}-{}] {};"
              new_instr = frmt_str.format(opcode,arg[2],-int(arg[3]),arg[1])                
    
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
              ##raise ValueError("Instruction not (yet) supported: %s\n" % line);
              #print("Instruction not (yet) supported: {}\n".format(line))
              #sys.exit(-1)
              frmt_str = "\taddi {} {} x\"0000\";"
              new_instr= frmt_str.format(arg[2],arg[1])
    
          else:
            frmt_str = "\taddi {} {} x\"0000\";"
            new_instr= frmt_str.format(arg[2],arg[1])
        elif(opcode=="movz"):
            frmt_str="\tbeq {} $0 x\"0001\";\n\tbeq $0 $0 x\"0001\";\n\taddi {} {} x\"0000\";"
            new_instr = frmt_str.format(arg[3], arg[2], arg[1])
        elif(opcode=="movn"):
            frmt_str="\tbeq {} $0 x\"0001\";\n\taddi {} {} x\"0000\";"
            new_instr = frmt_str.format(arg[3], arg[2], arg[1])
    
        elif(opcode=="addi" or opcode=="addiu" or opcode=="slti" or opcode=="sltiu" or opcode=="slt" or opcode=="sltu" or opcode=="ori" or opcode=="andi" or opcode=="xori"):
          hi_lo_used=False
          #checks if immediate is already in hex
          if(arg[3].startswith("0x")):
            arg[3]=str(int(arg[3],16))# convert arg[3] to decimal base
          if(arg[3].startswith("%hi(") or arg[3].startswith("%lo(")):
              hi_lo_used=True
          if(opcode=="addi" or opcode=="addiu"):
            frmt_str="\taddi {} {} x\"{:04X}\";"
            if(arg[1]=="$sp"):
              if(arg[2]=="$sp"):
                frmt_str="\taddsp x\"{:04X}\";"
                new_instr = frmt_str.format(int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))
              else:
                print("Instruction not (yet) supported: {}\n".format(line))
                sys.exit(-1)
            else:
              if not hi_lo_used:
                # adding to $fp is pointer arithmetic
                # offsets are generated with +4 increments
                # but in my cpu these increments are +1
                if arg[2]=="$fp":
                  new_offset=int((-funct_frame_size[get_curr_funct(line_cnt)]+int(arg[3])+0))
                  new_instr = frmt_str.format(arg[2],arg[1],new_offset if new_offset>=0 else 2**16+new_offset)
                else:
                  new_instr = frmt_str.format(arg[2],arg[1],int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))
              else:
                frmt_str="\taddi {} {} {};"
                new_instr = frmt_str.format(arg[2],arg[1],arg[3])
          elif((opcode=="slt" and not arg[3].isnumeric()) or (opcode=="sltu" and not arg[3].isnumeric())):
            frmt_str="\tsub {} {} {};\n\tsrl {} {} x\"1F\";" # 0x1F is 31
            new_instr = frmt_str.format(arg[2],arg[3],arg[1],arg[1],arg[1])
          elif(opcode=="slti" or opcode=="sltiu" or (opcode=="slt" and arg[3].isnumeric()) or (opcode=="sltu" and arg[3].isnumeric())):
            frmt_str="\tslti {} {} x\"{:04X}\";"
            if not hi_lo_used:
              new_instr = frmt_str.format(arg[2],arg[1],int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))
            else:
              frmt_str="\tslti {} {} {};"
              new_instr = frmt_str.format(arg[2],arg[1],arg[3])
          else:
            frmt_str="\t{} {} {} x\"{:04X}\";"
            if not hi_lo_used:
              new_instr = frmt_str.format(opcode,arg[2],arg[1],int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))
            else:
              frmt_str="\{} {} {} {};"
              new_instr = frmt_str.format(opcode,arg[2],arg[1],arg[3])
          
    
        # jump instructions
        elif(opcode=="jr" or opcode=="j" or opcode=="jalx" or opcode=="jal" or opcode=="jalr"):
    
          if(opcode=="jr"):
            if(arg[1]!="$31"):
              #raise ValueError("Instruction not (yet) supported: %s\n" % line)
              print("Instruction not (yet) supported: {}\n".format(line))
              sys.exit(-1)
            new_instr="\tret;"
          elif(opcode=="jalr"):
            # before function call, will push used register arguments
            used_arg_regs.sort(reverse = True)
            new_instr=""
            print(used_arg_regs)
            for r in used_arg_regs:
              new_instr = new_instr+"\tpush {};\n".format(r)
            frmt_str="\tcallr {};"
            new_instr = new_instr + frmt_str.format(arg[1])
            ## já fiz o push dos registradores usados, posso limpar a lista
            used_arg_regs.clear();
          elif(opcode=="jalx" or opcode=="jal"):
            # before function call, will push used register arguments
            used_arg_regs.sort(reverse = True)
            new_instr=""
            print(used_arg_regs)
            for r in used_arg_regs:
              new_instr = new_instr+"\tpush {};\n".format(r)
            frmt_str="\tcall {};"
            new_instr = new_instr + frmt_str.format(arg[1])
            ## já fiz o push dos registradores usados, posso limpar a lista
            used_arg_regs.clear();
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
          # note the double slash (//), this is integer division
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
          elif(opcode=="bgez"):
            frmt_str="\tpush $16;\n\tslt {} $0 $16;\n\tbeq $16 $0 x\"0002\";\n\tpop $16;\n\tbeq $0 $0 x\"0002\";\n\tpop $16;\n\tjmp {};"
            new_instr = frmt_str.format(arg[1], arg[2])
          elif(opcode=="bltz"):
            frmt_str="\tpush $16;\n\tslt {} $0 $16;\n\tbeq $16 $0 x\"0002\";\n\tpop $16;\n\tjmp {};\n\tpop $16;"
            new_instr = frmt_str.format(arg[1], arg[2])
          elif(opcode=="bgtz"):
            frmt_str="\tpush $16;\n\tslt $0 {} $16;\n\tbeq $16 $0 x\"0002\";\n\tpop $16;\n\tjmp {};\n\tpop $16;"
            new_instr = frmt_str.format(arg[1], arg[2])
          elif(opcode=="blez"):
            frmt_str="\tpush $16;\n\tslt {} $0 $16;\n\tbeq $16 $0 x\"0003\";\n\tbeq {} $0 x\"0002\";\n\tpop $16;\n\tbeq $0 $0 x\"0002\";\n\tpop $16;\n\tjmp {};"
            new_instr = frmt_str.format(arg[1], arg[1], arg[2])
    
        # R-type and similars: add,sub,and,or,xor,nor,fadd,fmul,fdiv,fsub
        elif (opcode=="add" or opcode=="addu" or opcode=="and" or opcode=="xor" or opcode=="sub" or opcode=="subu" or opcode=="or" or opcode=="nor" or opcode=="fadd" or opcode=="fsub" or opcode=="fmul" or opcode=="fdiv"):
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
            arg[2]=str(int(arg[2],16))# convert arg[2] to decimal base
          if(arg[2].startswith("%hi(") or arg[2].startswith("%lo(")):
              frmt_str="\t{} {} {};"
              new_instr=frmt_str.format(opcode,arg[1],arg[2])
          else:
              frmt_str="\t{} {} x\"{:04X}\";"
              new_instr=frmt_str.format(opcode,arg[1],int(arg[2]) if int(arg[2])>=0 else 2**16+int(arg[2]))
    
        elif(opcode=="la"):
          #immediate is always a label
          frmt_str="\tlui {} %hi({});\n\tori {} {} %lo({});"
          new_instr=frmt_str.format(arg[1],arg[2],arg[1],arg[1],arg[2])
        
        
        # there are 2 variants of the instructions below in MIPS
        # sll rd rs rt: rd <= rs << rt (aka sllv)
        # sll rd rs shift: rd <= rs << shift
        elif(opcode=="sll" or opcode=="srl" or opcode=="sra"):
          #checks if immediate is already in hex
          if(arg[3].startswith("0x")):
            arg[3]=str(int(arg[3],16))# convert arg[3] to decimal base
          if(arg[3][0]!="$"): # arg[3] is a constant
            frmt_str="\t{} {} {} x\"{:02X}\";"
            new_instr = frmt_str.format(opcode,arg[2],arg[1],int(arg[3]) if int(arg[3])>=0 else 2**16+int(arg[3]))
          else: # arg[3] is a register (rt)
            frmt_str="\t{} {} {} {};" # arg[1] is rd
            new_instr = frmt_str.format(opcode+"v",arg[2],arg[3],arg[1]) # sll -> sllv, srl -> srlv, sra -> srav
              
        elif(opcode=="sllv" or  opcode=="srlv" or opcode=="srav"):
          frmt_str="\t{} {} {} {};"
          new_instr = frmt_str.format(opcode,arg[2],arg[3],arg[1])
    
        elif(opcode=="nop"):
          new_instr="\tnop;"
    
        else:
          #raise ValueError("Unknown instruction: {}".format(opcode))
          #print("Instruction not (yet) supported: {}\n".format(opcode))
          #sys.exit(-1)
          new_instr = line # repeats the instruction, will cause error at assembler, if not cut
        
  
        #print(txt)
        print(line + "-> " + new_instr)
        #of.write(new_instr+"\n")
        new_instr_vector.extend((new_instr).split("\n"))
    except:
      print("An exception occurred at instruction {}: {}\n".format(line_cnt,line))
      return

  post_process(new_instr_vector) # removes prologues and epilogues, when specified
  
  of.write(".text\n")
  instr_vector_cnt=0
  for i in new_instr_vector:
    print(str(instr_vector_cnt)+":"+i)
    if(i[-1]=="\n"):
      of.write(i)
    else:
      of.write(i+"\n")
    instr_vector_cnt=instr_vector_cnt+1
  of.write(".data\n")
  for d in data_vector:
    if(d[-1]=="\n"):
      of.write(d)
    else:
      of.write(d+"\n")
  of.write(".rdata\n")
  for rd in rdata_vector:
    if(rd[-1]=="\n"):
      of.write(rd)
    else:
      of.write(rd+"\n")
  of.write(".bss\n")
  for u in bss_vector:
    if(u[-1]=="\n"):
      of.write(u)
    else:
      of.write(u+"\n")
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

  for f in funct_start:
    funct_returned_regs[f]=0

  for i in range(len(of_lines)): # iterates over lines of intermediary file
    # adds instruction to load $2 with return value
    # in MIPS convention, the return value is placed at $2 (also use $3 for 64 bit value)
    # in my processor, there a special register RV, ldrv $2 loads $2 with the return value
    # there is no support for returning wider values
    if(of_lines[i].startswith("\tret")):
      if not of_lines[i-1].startswith("\tpush"):
        of_lines[i] = "\tpush $2;\n"+of_lines[i]
      
  # split each element in of_lines and flatten the list
  result = [item.split('\n') for item in of_lines]

  result_flat = []

  for mline in result:
    for item in mline:
      if item != "":
        result_flat.append(item+"\n")
  of_lines=result_flat
        
  for i in range(len(of_lines)):
    if(of_lines[i].strip().startswith("ret")):
      push_cnt=0
      push_cnt_enable=True
      for j in reversed(range(i)):
        #of_lines[i]=of_lines[i]+of_lines[j]
        if(of_lines[j].strip().endswith(":")):
          function = of_lines[j]
          function = function.strip()
          function = function[0:-1]
          if function in funct_start:
            funct_returned_regs[function]=push_cnt
            #of_lines[i] = of_lines[i]+"function={}\nfunct_returned_regs[function]={}\n".format(function,funct_returned_regs[function])
            break
        elif of_lines[j].strip().startswith("push") and push_cnt_enable:
          push_cnt=push_cnt+1
        elif "call" in of_lines[j] and push_cnt_enable:# accounts for 'call' and 'callr'
          #of_lines[i] = of_lines[i]+"found call!\n"
          push_cnt_enable=False
      
  for i in range(len(of_lines)): # iterates over lines of intermediary file
    if(of_lines[i].startswith("\tcall")):# accounts for 'call' and 'callr'
      if(of_lines[i].startswith("\tcall ")):
        callee = of_lines[i].split("\tcall") # the function being called
        callee = callee[1]
        callee = callee.strip()
        callee = callee[0:-1]
      else:#callr
        # determines which function is being called if using callr
        callee = of_lines[i].split("\tcallr") # the function being called
        callee = callee[1]
        callee = callee.strip()
        callee = callee[0:-1]#here, callee is a register, must determine where it is pointing to
        for j in reversed(range(i)):
          if(of_lines[j].startswith("\taddi $") and
             of_lines[j].strip().endswith("{} x\"0000\";".format(callee))):
            callee_src=(of_lines[j].strip().split())[1]
            for k in reversed(range(j)):
              if(of_lines[k].strip().startswith("addi {} {} %lo".format(callee_src,callee_src))):
                callee=(of_lines[k].strip().split("addi {} {} %lo".format(callee_src,callee_src)))[1]
                callee=callee[1:-2]#removes "(" from start and ");" from end
                break
            break
        
      if(funct_returned_regs[callee]>0):
        of_lines[i] = of_lines[i]+"\tldrv $2;\n"
        #of_lines[i] = of_lines[i]+"\tpop $2;\n"
      push_cnt=0
      for j in reversed(range(i)):
        if(of_lines[j].startswith("\tpush")):
          push_cnt=push_cnt+1
        else:
          break
      of_lines[i] = of_lines[i]+"\taddsp x\"{:04X}\";\n".format(4*(push_cnt+funct_returned_regs[callee]))# accounts for the returned value(s)
      #of_lines[i] = of_lines[i]+"\taddsp x\"{:04X}\";\n{}\n".format(push_cnt+funct_returned_regs[callee],funct_returned_regs[callee]) # accounts for the returned value(s)
      
  # split each element in of_lines and flatten the list
  result = [item.split('\n') for item in of_lines]

  result_flat = []

  for mline in result:
    for item in mline:
      if item != "":
        result_flat.append(item+"\n")
  of_lines=result_flat
      
  #TODO: remove this after adding support to %hi/%lo in lw/sw offset in assembler.c
  #ori might also use %lo for la instructions
  #finds instructions of form lw [$x+%lo(LABEL)] $y and
  # replaces LABEL by numeric immediate
  pattern = r"^\s*(lw|sw) \[\$[a-zA-Z0-9]+[+-](%lo|%hi)\(\$?[a-zA-Z0-9_]+\)\] \$[a-zA-Z0-9]+;$"

  for i in range(len(of_lines)): # iterates over lines of intermediary file
    if(re.match(pattern,of_lines[i]) is not None):
        #print("regex matched!\n")
        offset=-1
        result = re.search('\((.*?)\)', of_lines[i])
        label=result.group(1)
        for j in range(len(of_lines)):
          # ignores labels, functions and directives started by dot
          if(of_lines[j][-2:]!=":\n" and of_lines[j][0]!="$" and of_lines[j][0]!="."):
            offset=offset+1
          elif(of_lines[j]==label+":\n"):
            offset=offset+1
            break
		#TODO: remove this improvised solution
        of_lines[i] = re.sub(r'%lo\(\$[a-zA-Z0-9_]+\)', str((4*offset+INSTRUCTION_MEMORY_BASE_ADDR)%(2**16)), of_lines[i])
        of_lines[i] = re.sub(r'%hi\(\$[a-zA-Z0-9_]+\)', str((4*offset+INSTRUCTION_MEMORY_BASE_ADDR)//(2**16)), of_lines[i])

  for label in l: # iterates over labels_dict keys
    #print(label)
    for i in range(len(of_lines)): # iterates over lines of intermediary file
      # searches for label l, removes the initial '$'
      of_lines[i] = of_lines[i].replace(label,labels_dict[label])
      
  # replaces register aliases
  for i in range(len(of_lines)): # iterates over lines of intermediary file
    for alias, actual in aliases.items():
      of_lines[i] = of_lines[i].replace(alias,actual)
      
  # register renaming ($x -> rx)
  for i in range(len(of_lines)): # iterates over lines of intermediary file
    of_lines[i] = re.sub("\${1}(?=\d)", "r", of_lines[i])
    
  # replaces section names
  for i in reversed(range(len(of_lines))): # iterates over lines of intermediary file
    if(of_lines[i].strip().startswith(".rdata")):
      of_lines.pop(i)
  for i in range(len(of_lines)): # iterates over lines of intermediary file
    if(of_lines[i].strip().startswith(".text")):
      of_lines[i] = ".section code\n"
    if(of_lines[i].strip().startswith(".data")):
      of_lines[i] = ".section data\n"
    if(of_lines[i].strip().startswith(".bss")):
      of_lines[i] = ".section bss\n"
      
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
    elif(found_function and len(words)>=2 and (words[0]=="jal" or words[0]=="jalx" or words[0]=="jalr")):
        #TODO: determine which function is being called if using jalr
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
        found_next_label=False
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
                found_next_label=True
                #print("line_cnt={}, next_label_idx={}\n".format(line_cnt,next_label_idx))
                break
            if not found_next_label:
              end=next((idx for idx, x in enumerate(instr_vector) if (x.strip()==".rdata" and idx > line_cnt)),len(instr_vector))
              print("end={}\n".format(end))
              lines_to_remove.extend(range(line_cnt,end))
              #print(range(line_cnt,len(instr_vector)))
            else:
              lines_to_remove.extend(range(line_cnt,next_label_idx))
              #print(list(range(line_cnt,next_label_idx)))
            #break
        #print(line_cnt)
        line_cnt = line_cnt+1
        
    #look for loads right after store that access the same memory location
    #eliminates the unnecessary loads
    #the line of the load must NOT be a branch target
    branch_targets={} # number of branch instruction : number of target instruction
    line_cnt = 0
    for l in instr_vector:
        if (l.strip()).startswith("b"): # branch
            words = (l.strip()).split()
            offset_str=(words[-1].split(";"))[0]
            branch_targets[line_cnt] = line_cnt + 1 + int((offset_str.split("\""))[1],16)
        line_cnt = line_cnt+1
    line_cnt = 0
    prev_line=''
    loads_removed=0
    lines_removed=0
    for l in instr_vector:
        words = l.strip().split()
        prev_words = prev_line.strip().split()
        if (words[0]=="lw" and\
        (line_cnt not in branch_targets.values())): # load, but not a branch target
            if(prev_words[0]=="sw"):#previous instruction is a "store"
                # checks if this line is generated by compiler (registers start with '$")
                # then checks if both access the same memory location
                pattern = r"^\s*(lw|sw) \[\$[0-9]+[+-][0-9]+\] \$[0-9]+;$"
                if(((re.match(pattern,l) is not None) and\
                    (re.match(pattern,prev_line) is not None)) and\
                   words[1]==prev_words[1]):
                    loads_removed +=1
                    print(prev_line+"->"+l)
                    print(str(words)+"("+str(line_cnt)+")")
                    print(prev_words)
                    # checks if rt is the same for both instructions
                    if(words[2]==prev_words[2]):
                        #eliminates the redundant instruction
                        lines_to_remove.append(line_cnt)
                        lines_removed +=1
                    else:
                        # replace the load by addi $x $y x"0000";
                        frmt_str = "\taddi {} {} x\"0000\";"
                        instr_vector[line_cnt]= frmt_str.format(prev_words[2].split(";")[0],
                                                                words[2].split(";")[0])
        line_cnt = line_cnt+1
        prev_line=l
    loads_cycle =2 #constant: how many cycles a load instruction takes
    opt_file=open("./post_compiler_optimization.log","wt")
    opt_msg="Optimization after compilation and partial translation:\n\
{} loads were eliminated\n{} instructions were saved\n{} cycles saved (estimated)".format(loads_removed,lines_removed,loads_cycle*loads_removed-lines_removed)
    opt_file.write(opt_msg)
    opt_file.close()
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
