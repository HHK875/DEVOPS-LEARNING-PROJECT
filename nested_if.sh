#!/bin/bash
echo $0
echo $#
echo $*
if [ $# -ne 3 ];
then
	echo " you input $# values. Input only three values to get the result "
	exit
fi
set -x 
if [ $1 -ge $2 ] && [ $1 -ge $3 ];
then
	echo " $1 is the biggest among given three numbers"
elif [ $2 -ge $1 ] && [ $2 -ge $3 ];
then
	echo " $2 is biggest among three"
else
	echo " $3 is the biggest among three"
fi
