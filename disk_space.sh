#!/bin/bash
echo $0
USDSPACE=`df -kh . | awk '{getline;print $5}' | sed -E 's/([0-9]{2})([%])/\1/'`
if [ $USDSPACE -ge 75 ];then
	echo " Used disk space is exceeds the limit Please Clean up your disk"
	# mail -s " Disk Usage Warning!" hhk14@outlook.com
	#Hello Harish,

	#Used disk space  exceeds the limit "\!" Please Clean up your disk Immidiately

	#EOT
else
	echo " Used disk space is within  the allowable limit. No need to worry"
fi


#echo "$USDSPACE"
