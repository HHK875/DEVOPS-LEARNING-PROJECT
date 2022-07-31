#!/bin/bash
echo $0
#sed '1d' $1 > del.txt
while read LINE
do
	#AGE=`echo $LINE | awk - F " " ' {print $NF}'`
	#if [ $AGE -gt $2 ];
	#then
		#NAME=`echo $LINE | awk - F " " ' {print $1}'`	
	WORDS=` echo $LINE | wc -w`
	CHAR=` echo $LINE | wc -c`
	VAR=` expr $VAR + 1`
	echo -e " Line No. : $VAR \t TOTAL WORDS : $WORDS \t TOTAL CHARACTERS :  $CHAR"
done<$1



