#!/bin/bash
echo "Enter the File name"
read FL_NAME
echo "Enter the word to be searched"
read WRD
echo -e "Which lines you would want to print:\n MPL-->Matching Pattern lines \n NMPL--> Not Matching Pattern Lines"
read ANS
echo $ANS
case "$ANS" in
	MPL) grep "$WRD" $FL_NAME
		;;
	NMPL) grep -v "$WRD" $FL_NAME
		;;
	*) echo "Option Selected is Inavalid"
		;;
esac

