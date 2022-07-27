#!/bin/bash
echo $0
echo "Enter the number to print full pyramid and mirror in reverse order"
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
	a=$(( $a -1 ))
	if [ $a -eq 0 ];
	then
		c=2
		while [ $c -le $NUM ];
		do
			b=$c
			count1=$(( $NUM - $c ))
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
				b=$(( $b -1 ))
			done
			echo 
			c=$(( $c + 1 ))
		done
	fi
done
