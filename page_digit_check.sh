
#!/bin/bash
echo $0
echo " Which one would like to check : no. of pages or no. of digits? "
echo " Enter P to check the no of pages or D to check the no of digits"
read ANS
set -x
sngl_dgt_pgs=0
dbl_dgt_pgs=0
three_dgt_pgs=0
four_dgt_pgs=0
if [ $ANS == "D" ];then
	echo " Enter no. of pages"
	read pg_total
	if [ $pg_total -le 9 ];then
		sngl_dgt_pgs=$pg_total
	elif [ $pg_total -gt 9 ] && [ $pg_total -le 99 ];then
		sngl_dgt_pgs=9
		dbl_dgt_pgs=` expr $pg_total - $sngl_dgt_pgs`
	elif [ $pg_total -gt 99 ] && [ $pg_total -le 999 ];then
		sngl_dgt_pgs=9
		dbl_dgt_pgs=90
		three_dgt_pgs=` expr $pg_total - $sngl_dgt_pgs - $dbl_dgt_pgs`

	elif [ $pg_total -gt 999 ] && [ $pg_total -le 9999 ];then
                sngl_dgt_pgs=9
                dbl_dgt_pgs=90
		three_dgt_pgs=900
                four_dgt_pgs=` expr $pg_total - $sngl_dgt_pgs - $dbl_dgt_pgs - $three_dgt_pgs`
	fi
	
	Toatl_no_of_digits=`expr $sngl_dgt_pgs + 2 \* $dbl_dgt_pgs + 3 \* $three_dgt_pgs + 4 \* $four_dgt_pgs`
	echo " Total No. of digits : $Toatl_no_of_digits"
else
	echo " Enter no. of digits"
        read dgt_total
	
	if [ $dgt_total -le 9 ];then
                sngl_dgt_pgs=dgt_total
	elif [ $dgt_total -gt 9 ] && [ $dgt_total -le 189 ];then
		sngl_dgt_pgs=9
		dbl_dgt_pgs=$(((($dgt_total / 2)) - (($sngl_dgt_pgs / 2))))
	elif [ $dgt_total -gt 189 ] && [ $dgt_total -le 2889 ];then
                sngl_dgt_pgs=9
                dbl_dgt_pgs=90
		three_dgt_pgs=$(((($dgt_total / 3)) - (($sngl_dgt_pgs / 3)) - (($dbl_dgt_pgs * 2  / 3))))
	elif [ $dgt_total -gt 2889 ] && [ $dgt_total -le 38889 ];then
		sngl_dgt_pgs=9
                dbl_dgt_pgs=90
                three_dgt_pgs=900
	#	four_dgt_pgs=$(((($dgt_total /4)) - (((($sngl_dgt_pgs + (($dbl_dgt_pgs *2))))  /4)) - (((($three_dgt_pgs * 3)) / 4))))
		four_dgt_pgs=$(((($dgt_total  - $sngl_dgt_pgs + (($dbl_dgt_pgs *2))  - (($three_dgt_pgs * 3)))) / 4))
	fi

	Toatl_no_of_pages=` expr $sngl_dgt_pgs + $dbl_dgt_pgs + $three_dgt_pgs + $four_dgt_pgs`
	echo " Total No. of Pages : $Toatl_no_of_pages"
fi



