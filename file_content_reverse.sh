#!/bin/bash
echo $0
#set -x
echo "Enter the file name"
read FL_NAME
TTL=`awk -F " " ' END{print NR}' $FL_NAME`
#echo $TTL
for ((i=$TTL;i>=1;i--))
do
	#LINE=`sed  -n "$i"p $FL_NAME`
	#LINE=` echo $FL_NAME |xargs sed  -n "$i"p`
	#LINE=`awk -v j=$i  '{if (NR==j) {print $0}} ' $FL_NAME`
	LINE=`head -$i $FL_NAME | tail -1`
	echo $LINE



done


#awk '{for (i = 7; i >= 1; i--){if(NR == i) {print NR,$0 } } }' $1
