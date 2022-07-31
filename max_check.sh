#!/bin/bash
echo $0
for i in $*
do
	TMP=` expr $i + 1 `

	for j in $*
	do 
		if [ $j -ge $i ];then
			MAX=$j
		else
			MAX=$i
		fi
	done
done
echo " Maximum is : $MAX"
