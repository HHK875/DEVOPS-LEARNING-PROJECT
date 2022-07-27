#!/bin/bash
echo $0
echo "Enter the string to be reversed"
read STR
REV=""
LEN=${#STR}
for (( i=$LEN;i>=1;i-- ))
do
#	CHAR=`echo $STR | cut -b $i`
	REV="$REV"`echo $STR | cut -b $i`
	#REV=$REV$CHAR
done

echo "Reverse of the string $STR is : $REV"
