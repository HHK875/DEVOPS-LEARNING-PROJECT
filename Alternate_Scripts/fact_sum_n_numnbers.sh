#!/bin/bash
echo $0
SUM=0
fact_sum()
{

	FACT=1
	VAR=$i
	while [ $VAR -ge 1 ];
	do
		FACT=$(( $FACT * $VAR ))
		VAR=$(( $VAR - 1 ))
	done
	SUM=$(( $SUM + $i ))
	echo " "$i"! = $FACT"

}

for i in $*
do

	fact_sum
done

echo "Sum of $* is : $SUM"
