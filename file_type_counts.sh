#@!/bin/bash
echo $0
echo "Enter the Name"
read NAME
if [ -L $NAME ];then
	echo " File type is : soft link"
	cat $NAME
	TTL=`wc -l $NAME | cut -d " " -f1`
	echo " No. of Lines : $TTL"
elif [ -d $NAME ];then
	echo " File type is : Directory"
	ls -lrt $NAME | awk '/^d/ {d_count++} /^-/ {f_count++}  /^l/ {l_count++} END{print "total no of directories" ":" d_count"\t" "total no of files"  ":" f_count"\t" "total no of softlinks"  ":" l_count}'

elif [ -f $NAME ];then
	echo " File type is : File"
	 cat $NAME
	 TTL=`wc -l $NAME | cut -d " " -f1`
	echo " No. of Lines : $TTL"
else
	echo "Entered name doesnot exist"
fi


