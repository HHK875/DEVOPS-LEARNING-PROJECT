#!/bin/bash
echo $0
echo "Enter first number"
read NUM1
echo "Enter second number"
read NUM2
# echo $#
# set -x
#if [ $# -ne 2 ]; # To make sure input arguments matches with  no. defined variables
#then
#	echo " you have entered $# numbers, please enter two numbers"
#	exit
#fi

SUM=`expr $NUM1 + $NUM2`
PRODUCT=`expr $NUM1 \* $NUM2`
if [ $NUM1 -gt $NUM2 ];
then
	SUB=`expr $NUM1 - $NUM2`
	DIV=`expr $NUM1 / $NUM2`
else
	SUB=`expr $NUM2 - $NUM1`
        DIV=`expr $NUM2 / $NUM1`
fi

echo "--------- Summary of arithematic operations performed on numbers $NUM1 and $NUM2 ----------"
echo -e " Sum: $SUM \n Product: $PRODUCT \n Difference: $SUB \n Division: $DIV "
echo "------------------------------------- END --------------------------------------------------"



