#!/bin/bash
SERVICES="apache jenkins sshd"
for i in $SERVICES
do
	#OUT=`ps -ef | grep $i | grep -v "grep"`
	OUT=`ps -ef | grep $i | grep -v -c "grep"`
	#RESULT=`echo $OUT | grep $i`
	#RESULT=`echo $OUT | grep -o $i`
	#echo $RESULT
	#echo $OUT
	
	if [ $OUT -ne 0 ];
	then
        	echo "$i SERVICE IS RUNNING "
	else
        	echo "$i SERVICE IS NOT RUNNING"
		echo "TRYING TO RESTART $i SERVICE"
	#	echo "ACTION NEEDED" | mail -s "$i is not running" -c abc@gmail.com
		#sudo service $i restart
	fi
done
