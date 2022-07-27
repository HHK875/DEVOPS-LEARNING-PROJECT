#!/bin/bash
echo $0


echo "Enter the source path"
read SR_PATH
echo "Enter the Destination path"
read DST_PATH
echo "Enter the file name to be copied"
read FL_NAME
echo "Enter the file name at destination"
echo " same as file name at source?: Y/N"
read ANS1

if [ "$ANS1" == "Y" ];then
	FL_NAME_DST=$FL_NAME
else
	
	read FL_NAME_DST
fi

cp "$SR_PATH""$FL_NAME" "$DST_PATH""$FL_NAME_DST"

