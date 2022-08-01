#!/bin/bash
echo $0
echo " factorial of $* "
for i in $*
do
	FACT=1
	VAR=$i
	while [ $VAR -ge 1 ];
	do
		FACT=$(( $FACT * $VAR ))
		VAR=$(( $VAR - 1 ))

	done
	echo " "$i"! = $FACT "
done
