#!/bin/bash
echo $0
VAR=$1
FACT=1
while [ $VAR -gt 1 ];
do
	FACT=`expr $VAR \* $FACT`
	VAR=`expr $VAR - 1`
done
echo " The factorial of $1 is : $FACT"

