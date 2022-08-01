#!/bin/bash
echo $0
BIG=$1
for i in $*
do
	if [ $i -gt $BIG ];
	then
		BIG=$i
	fi
done
echo " The biggest of $* is : $BIG"
