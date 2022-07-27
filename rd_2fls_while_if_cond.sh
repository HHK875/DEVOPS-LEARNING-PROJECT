#!/bin/bash
echo $0
echo "Enter the first file"
read FL1_NAME
echo "Enter the second file"
read FL2_NAME
if   ! [ -f "$FL1_NAME" ];
then
	echo "$FL1_NAME does not exist!. Please enter the valid file name"
	exit
fi
if ! [ -f "$FL2_NAME" ];
then
	echo"$FL2_NAME does not exist!. Please enter the valid file name"
	exit
fi

(while IFS= read -r A<&3 && IFS= read -r B<&4;
do
	if [ "$A" != "" ];
	then
		echo "$A"
	fi

	if [ "$B" != "" ];
        then
                echo "$B"
        fi
done) 3<$FL1_NAME 4<$FL2_NAME

