#!/bin/bash
echo "$0"
echo "Enter the first file"
read FL1
echo "Enter the second file"
read FL2
if ! [ -f $FL1 ] && ! [ -f $FL2 ];
then
	echo " Both the files do not exist! Please enter the valid file names"
	exit
elif ! [ -f $FL1 ];
then
	echo "$FL1 does not exist!Please enter the valid file name"
	exit
elif ! [ -f $FL2 ];
then
	echo "$FL2 does not exist!Please enter the valid file name"
        exit
fi

TL1=`awk ' END{print NR}' $FL1`
TL2=`awk ' END{print NR}' $FL2`

if [ $TL1 -ge $TL2 ];
then
	count=1
	while [ $count -le $TL1 ];
	do
		lineA=`sed -n "$count"p $FL1`

                if [ "$lineA" != "" ];
                then
                        echo "$lineA"
                fi

                lineB=`sed -n "$count"p $FL2`

                if [ "$lineB" != "" ];
                then
                        echo "$lineB"
                fi

                count=$(( $count + 1 ))

	done
else
	count=1
	while [ $count -le $TL2 ];
        do
                lineA=`sed -n "$count"p $FL1`

		if [ "$lineA" != "" ];
		then
                	echo "$lineA"
		fi
                lineB=`sed -n "$count"p $FL2`

		if [ "$lineB" != "" ];
                then
                        echo "$lineB"
                fi

		count=$(( $count + 1 ))


        done
fi
