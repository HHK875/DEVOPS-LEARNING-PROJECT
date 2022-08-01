#!/bin/bash
echo $0
#set -x
a=1
count2=1
while [ $a -le 5 ];
do
	b=1
	count2=1
	while [ $b -le $a ];
	do
		
		count1=` expr 5 - $a`
		if [ $count2 -le $count1 ];
		then
			echo -n " "
			count2=` expr $count2 + 1 `
			continue
		fi
			echo -n "$b "
			b=` expr $b + 1`
		done
		echo
		a=` expr $a + 1`
	done


