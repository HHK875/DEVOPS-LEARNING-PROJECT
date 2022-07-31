#!/bin/bash
echo #$0
echo " enter the name to find it's nature"
read NAME
if [ -L  $NAME ] && [ -f $NAME ];
then
	echo " Entered name belongs to link type "
fi

