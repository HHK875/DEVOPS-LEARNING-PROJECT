#!/bin/bash
echo $0
echo "Enter the number whose half pyramid pattern to be printed"
read NUM
a=1
while [ $a -le $NUM ];
do
	b=1
	while [ $b -le $a ];
	do
		echo -n "$b "
		b=$(( $b + 1))
	done
	echo
	a=$(( $a + 1 ))

done
