#!/bin/bash
echo $0
fact_func ()
{
#set -x
	VAR2=$1
	FACTORIAL=1
	while [ $VAR2 -ge 1 ];
        do
		
		FACTORIAL=` expr $FACTORIAL \* $VAR2`

                VAR2=`expr $VAR2 - 1`
        done
        FACT_RSLT=$FACTORIAL
}

sum_func()
{
#set -x
	SUM=$(($SUM + $VAR))
}


SUM=0
for i in $*
do
	
	VAR=$i
	sum_func
	fact_func $VAR
	echo " The factorial of $i is : "$FACT_RSLT" "
done
echo " The sum of $* is : $SUM"



