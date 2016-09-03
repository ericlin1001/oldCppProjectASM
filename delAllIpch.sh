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
			rm *.ipch *.pch
			fileList
			cd ..
		else
			unused=1
		fi
	done
}
fileList
