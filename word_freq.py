#!/usr/bin/python
# print top n word-frequency
# gu min cheol 2017110539
from audioop import reverse
import sys
import operator

print(sys.argv[0], sys.argv[1], sys.argv[2]) # ex) python word_freq.py para1 para2

f = open(sys.argv[1], 'r')

sentence=""
words=[]

lines=f.readlines() #read all lines and each line is list's element
f.close()

for i in range(0,len(lines),1):
    sentence+=lines[i]
    
list=sentence.split()

dict={}

for i in range(0,len(list),1):
    
    list[i]=list[i].lower().strip('~!@#$%^&*()_+`=-[]\{}|;<>?,./')
    if dict.get(list[i])==None:
        dict[list[i]]=1
    else:
        dict[list[i]]+=1
    
sortedDict=sorted(dict.items(),key=operator.itemgetter(1), reverse=True)

for k in range(0, int(sys.argv[2]), 1):
    print("{:<15s} {:>10s}".format( sortedDict[k][0], str(sortedDict[k][1]) ) )