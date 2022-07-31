#!/bin/bash
echo $0
BIG1=0
BIG2=0
j=0
for i in $*
do
	arr[$j]=$i
	j=$(( $j + 1 ))
done
k=$(( $j - 1))
for ((i=0; i<=$k; i++))
do
	if [ ${arr[$i]} -gt $BIG1 ];
	then
		BIG1=${arr[$i]}
		count=$i
	fi
done
echo "$count"

for (( i=0;i<=$k;i++))
do
	if [ $count -ne $i ];then
		if [ ${arr[i]} -gt $BIG2 ];then
			BIG2=${arr[i]}
		fi
	fi



done

echo "The biggest and 2nd biggest of $* is : $BIG1 and $BIG2"

