#!/usr/bin/python
import sys

print(sys.argv[0], sys.argv[1], sys.argv[2]) # ex) python word_freq.py para1 para2

f = open(sys.argv[1], 'r')

lines=f.readlines() #read all lines and each line is list's element
print(lines)

f.close()