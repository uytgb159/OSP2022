#!/usr/bin/python
import sys

print(sys.argv[0], sys.argv[1], sys.argv[2]) # ex) python word_freq.py para1 para2

f = open(sys.argv[1], 'r')

sentence=""
words=[]

lines=f.readlines() #read all lines and each line is list's element
for i in range(0,len(lines),1):
    sentence+=lines[i]

list=sentence.split()

for i in range(0,len(list),1):
    list[i]=list[i].lower().strip('~!@#$%^&*()_+`=-[]\{}|;<>?,./')

print(list)

f.close()