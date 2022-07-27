#!/bin/bash
echo $0
sed '1d' $1 > del.txt
while read LINE
do
	AGE=` echo $LINE | awk -F " " '{print $NF}'`
	if [ $AGE -gt $2 ];then
		NAME=` echo $LINE | awk -F " " '{print $1}'`
		echo $NAME
	fi
done<$1
rm del.txt


