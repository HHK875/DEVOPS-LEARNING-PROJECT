#!/bin/bash
echo $0
DAY=` date | cut -d " " -f1`
case $DAY in
	Mon) echo " Toady is Monday"
		;;
	Tue) echo " Today is Tuesday"
		;;
	Wed) echo " Today is Wednesday"
		;;
	Thu) echo " Today is Thursday"
		;;
	Fri) echo " Today is Fiday"
		;;
	Sat) echo " Today is Satuarday"
		;;

	Sun) echo " Today is Sunday" 
		;;

	*) echo " Input is inavalid"

esac
