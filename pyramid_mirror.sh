#!/bin/bash
echo $0
echo "Enter the number to print it's pyramid and mirror pattern"
read NUM
a=1
while [ $a -le $NUM ];
do
	b=1
	count1=$(( $NUM - $a ))
	count2=1
	while [ $b -le $a ];
	do
		if [ $count2 -le $count1 ];
		then

			echo -n " "
			count2=$(( $count2 + 1 ))
			continue
		fi
		echo -n "$b "
		b=$(( $b + 1 ))

	done
	echo
	a=$(( $a + 1 ))

	if [ $a -gt $NUM ];
	then
		c=$(( $a - 2 ))
		while [ $c -ge 1 ];
		do
			b=1
			count1=$(( $NUM - $c ))
        		count2=1
		        while [ $b -le $c ];
        		do
                		if [ $count2 -le $count1 ];
		                then

                		        echo -n " "
                        		count2=$(( $count2 + 1 ))
		                        continue
                		fi
		                echo  -n "$b "
                		b=$(( $b + 1 ))

		        done
			echo
			c=$(( $c - 1  ))
		done


	fi

done


