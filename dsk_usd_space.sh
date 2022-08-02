#!/bin/bash
echo $0
dsk_utilised=`df -kh . | sed '/Size/{d;N;p}' | sed 's/%//g' | sed -E 's/ +/\n/g' | sed -n '5p'`
echo "$dsk_utilised"

if [ $dsk_utilised -gt 75 ];
then
	echo "disk spce used exceeds the threshold value!! Please clean up the disk"
else
	echo " disk space used is well within the threshold value. No worries!!"
fi
