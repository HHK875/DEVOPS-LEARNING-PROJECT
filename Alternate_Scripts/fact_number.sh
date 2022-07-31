#!/bin/bash
echo $0
echo "Enter the number to print it's fatcorial"
read NUM
FACTORIAL=1
VAR=$NUM
while [ $VAR -ge 1 ];
do
	FACTORIAL=$(( $FACTORIAL * $VAR ))
	VAR=$(( $VAR - 1 ))
done
echo "The factorial of $NUM is "$NUM"! = $FACTORIAL"

