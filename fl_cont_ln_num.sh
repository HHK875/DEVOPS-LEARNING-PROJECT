#!/bin/bash
echo $0
echo "Enter the file name"
read FL_NAME
awk -F " " '{print NR ":" $0}' $FL_NAME
STAT=`echo $?`

if [ $STAT -ne 0 ];then
	echo "File doesnot exist! Please retry"
fi

