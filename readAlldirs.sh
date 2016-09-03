##!/bin/sh
c=`pwd`
echo pwd:$c
fileList(){
	fl=`ls "$c"`
	for fn in $fl; 
	do
		if [ -f "$fn" ]; 
		then
			echo File:$fn
		elif [ -d "$fn" ]; 
		then
			cd "$fn"
			c=`pwd`
			echo enter dir:$c
			fileList
			cd ..
		else
			echo "$c/$fn is not a common file."
		fi
	done
}
fileList
