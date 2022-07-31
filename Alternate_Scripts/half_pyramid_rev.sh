#!/bin/bash
echo $0
echo "Enter the number whose half pyramid to be printed in reverse order"
read NUM
a=$NUM
while [ $a -ge 1 ];
do
	b=$a
	while [ $b -ge 1 ];
	do
		echo -n "$b "
		b=$(( $b - 1))
	done
	echo
	a=$(( $a - 1 ))
done
