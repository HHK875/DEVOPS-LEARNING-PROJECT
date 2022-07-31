#!/bin/bash
echo $0
BIG=0
SEC_BIG=0
set -x
for i in $*
do
	if [ $i -gt $BIG ];
	then
		BIG=$i
	fi
done

for i in $*
do
	if [ $i -gt $SEC_BIG ] && [ $i -lt $BIG ];
	then
		SEC_BIG=$i
		
	fi
	
done
	
	

echo " Second biggets number in $* is : $SEC_BIG"
