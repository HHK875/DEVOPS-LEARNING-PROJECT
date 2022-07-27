#!/bin/bash
echo $0
echo "Enter the string to be reversed"
read STR
REV=" "
LEN=${#STR}
echo $LEN
for (( i=$LEN - 1; i>=0;i--))
do
	REV="$REV""${STR:$i:1}"

done

echo "Reverse of the $STR is : $REV"

