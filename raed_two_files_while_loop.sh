#!/bin/bash
echo $0
echo " Enter the first file"
read FL1_NAME
echo " Enter the second file name"
read FL2_NAME
( while IFS= read -r A<&3 && IFS= read -r B<&4;
do
	echo "$A"
	echo "$B"
done) 3<$FL1_NAME 4<$FL2_NAME

