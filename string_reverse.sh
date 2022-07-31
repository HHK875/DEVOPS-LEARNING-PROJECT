#!/bin/bash
echo $0
STRING=$1
VAR=" "
LEN=${#STRING}
echo $LEN
VAR1=""
for ((i=$LEN - 1;i>=0;i--))
do
	echo $i
	VAR="$VAR""${STRING:$i:1}"
done
echo " The reverse of the $1 is : $VAR"

# Using cut method
for ((i=$LEN;i>=1;i--))
do
	VAR2=`echo $1 | cut -b $i`
	VAR1="$VAR1""$VAR2"

done

echo " The reverse of $1 usning cut method is : $VAR1"

