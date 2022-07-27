#!/bin/bash
echo $0
echo " Enter first file to be copied "
read NAME1
echo " Enter second  file to be copied "
read NAME2
echo " Enter new file name "
read NAME3
VAR1=` cat $NAME1`
VAR2=` cat $NAME2`
if [ -z "$VAR1" ] && [ -z "$VAR2" ]; then 
	echo "Both files are empty"
	exit
elif [  -z "$VAR1" ];then
	echo " first file is empty copies  the content of the second file only"
	cat $NAME2 >>$NAME3
elif [  -z "$VAR2" ];then
        echo " Second file is empty copies  the content of the first file only"

         cat $NAME1 >>$NAME3
else
	 catcat $NAME1 $NAME2 >>$NAME3
fi



