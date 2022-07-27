#!/bin/bash
echo $0
echo "Enter the number"
read NUM
a=$NUM
while [ $a -ge 1 ];
do
	b=$a
	while [ $b -ge 1 ];
	do

		echo -n "$b "
		b=$(( $b - 1 ))

	done
	echo 
	a=$(( $a - 1 ))


done

