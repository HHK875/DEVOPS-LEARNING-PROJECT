#!/bin/bash
echo $0
#set -x
TTL1=`awk ' END {print NR}' $1`
TTL2=`awk ' END {print NR}' $2`
echo $TTL1
echo $TTL2
COUNT1=1
COUNT2=1

if [ $TTL1 -ge $TTL2 ];
then
	while [ $COUNT1 -le $TTL1 ];
	do
		
	
		
		
		lineA=`sed -n  "$COUNT1"p $1`
		echo $lineA
		COUNT1=` expr $COUNT1 + 1`
		if [ $COUNT2 -le $TTL2 ];
	       	then
			lineB=`sed -n "$COUNT2"p $2`
			echo $lineB
			COUNT2=` expr $COUNT2 + 1`
		fi
	done
else
	while [ $COUNT2 -le $TTL2 ];
        do
		if [ $COUNT1 -le $TTL1 ]; then
                lineA=`sed -n "$COUNT1"p $1`
		echo $lineA
                COUNT1=` expr $COUNT1 + 1`
		fi
               
                
                lineB=`sed -n "$COUNT2"p $2`
		echo $lineB
                COUNT2=` expr $COUNT2 + 1`
	done
fi
               



