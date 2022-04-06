#!/bin/bash
#gu min cheol's calculater
#2017110539

echo "project management in github"
num=($(<num1.txt) $(<num2.txt))

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
echo "num1 : ${num[0]}"
echo "num2 : ${num[1]}"

case $1 in
	1) echo "op : add"
	   let result=${num[0]}+${num[1]};;
	   
	2) echo "op : sub"
	   let result=${num[0]}-${num[1]};;
	   
	3) echo "op : div"
	   let result=${num[0]}/${num[1]};;
	   
	4) echo "op : mul"
	   let result=${num[0]}*${num[1]};;
esac

echo "result : $result"
