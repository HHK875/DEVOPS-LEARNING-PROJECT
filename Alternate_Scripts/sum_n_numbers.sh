#!/bin/bash
echo $0
for i in $*
do
	SUM=$(( $SUM + $i ))
done
echo "Sum of $* is : $SUM"
