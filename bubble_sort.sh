#!/bin/bash
echo $0
LEN=${#*}
echo $LEN
j=0
for i in $*
do
	arr[j]=$i
	j=$(($j +1 ))

done

echo ${arr[0]}

for ((i = 0; i<=$LEN - 1; i++))
do
	for ((j = i + 1; j <= $LEN - 1; j++))
	do

		if [ ${arr[j]} -lt  ${arr[i]} ];then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi


	done	


done
echo " the ascending order of given $* is : ${arr[@]}"

echo " the ascending order of given $* is : ${arr[*]}"
