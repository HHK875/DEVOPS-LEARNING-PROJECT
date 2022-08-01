#!/bin/bash
echo $0
VAR=$1
while [ $VAR -gt 0 ];
do
	echo $VAR
	VAR=` expr $VAR - 1`
done

