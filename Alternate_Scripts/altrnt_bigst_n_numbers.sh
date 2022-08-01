#!/bin/bash
echo $0
LEN=${#*}
BIG=0
BIG2=0
for i in $*
do
	arr[$j]=$i
	j=$(( $j + 1 ))
done

for(( i=0;i<=$LEN - 1;i++ ))
do

		
	if [ ${arr[$i]} -gt $BIG ];then
		BIG=${arr[$i]}
		count=$i
	fi

	if [ $i -eq $(( $LEN - 1 )) ];
	then
		for (( j=0;j<=$LEN - 1;j++))
		do
			if [ $count -ne $j ];
			then
				if [ ${arr[$j]} -gt $BIG2 ];
				then
					BIG2=${arr[$j]}
				fi
			fi
		done
	fi

done

echo "Biggest  and second biggest number of $* are : $BIG and $BIG2 respectively"
