#!/bin/bash
echo $0
set -x
if [ $1 -gt $2  ];
then
	echo " $1 is greter than $2"
else
	echo " $2 is greater than $1"
fi
