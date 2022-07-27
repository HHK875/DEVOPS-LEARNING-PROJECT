#!/bin/bash
echo $0
a=1
#set -x
while [ $a -le 5 ];
do
	b=1
	count1=` expr 5 - $a`
	count2=1
	#echo $count1
	
	while [ $b -le $a ];
	do
		
		if [ $count2 -le $count1 ];

		then 
			
			echo -n " "
			count2=`expr $count2 + 1`
			continue
		fi

		echo -n  "$b "
		b=` expr $b + 1`
	done
	echo
	
	a=` expr $a + 1 `
#done
#exit
	
	
	if [ $a -gt 5 ];
	then
		c=` expr $a - 2`
		while [ $c -ge 1 ];
		do
			b=1
			count1=` expr 5 - $c`
			count2=1
			while [ $b -le $c ];
			do
				if [ $count2 -le $count1 ];
				then
					echo -n " "
				
					count2=` expr $count2 + 1`
					continue
				fi

				echo -n "$b "
				b=` expr $b + 1`
			done
			echo 
			c=`expr $c - 1`
		done
	fi

done


