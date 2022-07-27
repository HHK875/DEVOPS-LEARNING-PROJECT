#!/bin/ban
echo $0
echo " Enter the name to check"
read TYPE
if [ -h $TYPE ]; # -L is equivalent to -h
then
	echo " Entered name belongs to type: Soft Link"
elif [ -d $TYPE ];
then
	echo " Entered name belongs to type: Directory"
elif [ -f $TYPE ];
then 
	echo " Entered name belongs to type: File "
else
	echo " Entered name does not exist!, Please try again "
fi

