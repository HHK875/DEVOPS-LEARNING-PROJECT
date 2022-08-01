#!/bin/bash
echo $0
echo "Enter the number whose full pyramid to be printed in reverse order"
read NUM
a=$NUM
while [ $a -ge 1 ];
do
	b=$a
	count1=$(( $NUM - $a ))
	count2=1
	while [ $b -ge 1 ];
	do
		if [ $count2 -le $count1 ];
		then
			echo -n " "
			count2=$(( $count2 + 1 ))
			continue
		fi
		echo -n "$b "
		b=$(( $b - 1 ))
	done
	echo
	a=$(( $a - 1 ))
done
