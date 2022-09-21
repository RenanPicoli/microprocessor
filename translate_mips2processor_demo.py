import re

#txt = "xor $0, $0, $0"
txt = "add $0, $1, $2"
words = txt.split()
#print("words="+str(words))

proc_words=[]
if (words[0]=="add" or words[0]=="xor"):
  if(re.search("\w\s\$[0-9]+,\s\$[0-9]+,\s\$[$0-9]+",txt)):
    frmt_str="add {} {} {};"
    for w in words:
      if(w.endswith(',')):
        l=list(w)
        l.pop(-1)
        w="".join(l)
      proc_words.append(w)
    txt = frmt_str.format(proc_words[2],proc_words[3],proc_words[1])
  else:
    raise ValueError("Syntax error!")
else:
  raise ValueError("Unknown instruction")

#print(txt)
x = re.sub("\${1}(?=\d)", "r", txt)# register renaming
print(x)
