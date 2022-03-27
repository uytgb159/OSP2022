#!/bin/bash
#gu min cheol's prog
#2017110539

echo "...creat temp directory..." 
mkdir temp

echo "...copy files to temp directory..."
cp num1.txt num2.txt cal.sh temp/

echo "1) add"
echo "2) sub"
echo "3) div"
echo "4) mul"

read -p "select menu:" op_num
case $op_num in
	1) echo "...add selected...";;
	2) echo "...sub selected...";;
	3) echo "...div selected...";;
	4) echo "...mul selected...";;
esac

echo "...run calculater..."

bash cal.sh $op_num
