#!/bin/bash
echo $0
#set -x
echo "Enter the year lies between 1700 and 2000"
echo "Enter the date month and year in this format: dd mm yyyy"
read DT
MONTH_CODE=( 1 2 3 4 5 6 7 8 9 10 11 12 )
MONTH_KEY=( 1 4 4 0 2 5 0 3 6 1 4 6 )
YEAR_CODE=( 1700 1800 1900 2000 )
YEAR_KEY=( 4 2 0 6 )

DAY_KEY=( "SATURDAY" "SUNDAY " "MONDAY" "TUESDAY" "WEDNESDAY" "THURSDAY" "FRIDAY" )


DD=`echo $DT | cut -d " " -f1`
MM=`echo $DT | cut -d " " -f2`
YY=`echo $DT | cut -d " " -f3`
YY2=`echo $YY| sed -E 's/([0-9]{2})([0-9]{2})/\2/'`

QT=`expr $YY2 / 4`
SUM1=` expr $QT + $DD `
for MNTH in ${MONTH_CODE[@]};  do
	
	if [ $MNTH -eq $MM ]; then
		k=`expr $MNTH - 1`
		SUM2=` expr $SUM1 + ${MONTH_KEY[$k]}`
	       break
	fi
done

for i in {0..3}; do
	
	
	if [ $YY -ge 2000 ]; then
	       SUM3=` expr $SUM2 + ${YEAR_KEY[-1]}`
	       break
       else	       
		j=`expr $i + 1`	
        	if [ $YY -gt ${YEAR_CODE[$i]} ] && [ $YY -lt ${YEAR_CODE[$j]} ]; then
               		SUM3=` expr $SUM2 + ${YEAR_KEY[$i]}`
			break
        	fi
	fi
done

REMDR=`expr $YY2 % 4`

if [ $REMDR -eq 0 ]; then
	if [ $MM -eq 1 ] || [ $MM -eq 2 ]; then
		SUM4=`expr  $SUM3 - 1`
	fi
else
	SUM4=`expr  $SUM3`
fi

SUM5=`expr  $SUM4 + $YY2`

DAY_CODE=`expr $SUM5 % 7`

for i in {0..6}; do


        if [ $DAY_CODE -eq $i ]; then

               DAY=` expr ${DAY_KEY[$i]}`
	       break
        fi
done

echo " The day of the date $DT is : $DAY"




