#!/bin/bash
echo $0

echo -e " Enter:\n CP --> to copy the files \n RN --> to rename the files \n AO --> to perform arithematic operations on two numbers \n VR --> to check the file type and display the content \n PR --> to dispaly the files permission \n DN --> to dispaly the file content with line number \n RM --> to delete the file \n PT --> to perform pattern tasks \n RV --> to print the  file content in reverse order or\n E --> to exit"
read USR_PREFERENCE
SELECTION_LIST=( "CP" "RN" "AO" "VR" "PR" "DN" "RM" "PT" "RV" "E" )
#echo $SELECTION_LIST

for SELECTION in ${SELECTION_LIST[@]}
do
	echo $SELECTION
	if [ "$SELECTION" == "$USR_PREFERENCE" ];then
		break
	else
		i=$(($i + 1))
		
	fi
done
#exit

SELECTION_DESCRPN=( "Copy the Files" "Rename the Files" "Perform Arithematic Operations" " To Check the File type nad Display the Content" "To Display the File Permission" "Display the File content with line number" "Delete the File" "Perform Pattern tasks" "Print File Content in Reverse Order" "Exit" )

echo "Please Confirm: You are opting for:"
echo ${SELECTION_DESCRPN[$i]}"?"
echo "Y/N"
read ANS
if [ "$ANS" == "Y" ];
then
	case ${SELECTION_LIST[$i]} in

		CP) sh ./cp_file.sh
			;;
		RN) sh ./rename_file.sh
			;;
		AO) sh ./arithmtic_ops_two_ns.sh
			;;
		VR) sh ./file_type_counts.sh
			;;
		PR) sh /home/ec2-user/File_Dir_Perm_Info.sh
			;;	
		DN) sh ./fl_cont_ln_num.sh
			;;
		RM) sh ./remove_file.sh
			;;
		PT) sh ./perfm_pattrn_tasks.sh
			;;
		RV) sh ./file_content_reverse.sh
			;;

		*)  echo "You are exiting the script!"
			exit
			;;
		
	esac





















fi


				
			


	       			       


