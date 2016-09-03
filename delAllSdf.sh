##!/bin/sh
c=`pwd`
echo pwd:$c
fileList(){
	fl=`ls "$c"`
	for fn in $fl; 
	do
		if [ -f "$fn" ]; 
		then
			#echo File:$fn
			unused=1
		elif [ -d "$fn" ]; 
		then
			cd "$fn"
			c=`pwd`
			echo enter dir:$c
			rm *.sdf
			echo deling *.sdf
			fileList
			cd ..
		else
			echo "$c/$fn is not a common file."
		fi
	done
}
fileList
