#!/bin/bash
echo $0
echo "Enter the file name"
read FL_NAME
rm $FL_NAME
RSLT=`echo $?`
if [ $RSLT -ne 0 ];then
	echo "File doesnot exist!. Please retry"
fi
