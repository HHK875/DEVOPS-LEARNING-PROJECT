#!/bin/bash
echo $0
SUM=0
for i in $*
do
	SUM=` expr $SUM + $i`
done
echo " SUM of $* is : $SUM"

