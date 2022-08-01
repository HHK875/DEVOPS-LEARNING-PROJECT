#!/bin/bash
echo $0 # To print the script name
#set -x # Debugging
echo " Enter the number to check whether it is even or odd "
read NUM
RESULT=` expr $NUM % 2`
if [ $RESULT  -eq 0 ];
then
	echo " Entered number is even "
else
	echo " Entered number is odd"
fi

