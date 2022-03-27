#!/bin/bash
#gu min cheol's calculater
#2017110539

num1=$(<num1.txt)
num2=$(<num2.txt)

if [ $# -eq 0 ]; then
	echo "...none operator parameter...."
	echo "1) add"
	echo "2) sub"
	echo "3) div"
	echo "4) mul"
	read -p "select menu : " op
	set $op
fi

echo ""
echo "num1 : $num1"
echo "num2 : $num2"

case $1 in
	1) echo "op : add"
	   let result=$num1+$num2;;
	   
	2) echo "op : sub"
	   let result=$num1-$num2;;
	   
	3) echo "op : div"
	   let result=$num1/$num2;;
	   
	4) echo "op : mul"
	   let result=$num1*$num2;;
esac

echo "result : $result"
