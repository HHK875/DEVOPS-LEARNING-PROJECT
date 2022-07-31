#!/bin/bash
echo $0
BIG1=0
BIG2=0
for i in $*
	
do
	if [ $i -gt $BIG1 ];
	then
		BIG1=$i
	fi
done

for i in $*

do
        if [ $i -lt $BIG1 ] && [ $i -gt $BIG2 ];
        then
                BIG2=$i
        fi

done


echo "The biggest and 2nd biggest of $* are : $BIG1 and $BIG2 respectively"
