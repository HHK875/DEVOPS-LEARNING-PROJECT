#!/bin/bash
echo $0
RESULT=` expr $1 % 4`
if [ $RESULT -eq 0 ];
then
	echo " $1 is leap year"
else
	echo " $1 is not a leap year"
fi


