#!/bin/bash
echo $0
FAR=1
echo " -------- The factorials of $* ----------------"
for VAL in $*
do
	VAR=$VAL
	while [ $VAR -gt 1 ];
	do
		FAR=` expr $FAR \* $VAR`
		VAR=` expr $VAR - 1`
	done
	echo -e "              $VAL! : $FAR        "
	FAR=1
done
echo "--------------------------------------------------"



