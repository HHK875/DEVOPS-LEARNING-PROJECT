#!/bin/bash
echo $0
#set -x
echo "Enter the number whose pyramid pattern to be printed"
read NUM
a=1
while [ $a -le $NUM ];
do 
	b=1
	while [ $b -le $a ];
	do
		echo -n "$b "
		b=` expr $b + 1`
	done
	echo
	a=` expr $a + 1 `
done

