#!/bin/bash
ori=`pwd`
dir=`pwd`
echo "cd to " $dir
for i in `ls "$dir"`
do
	each=$dir/$i
	if [ -d "$each" ]; then
		echo "for cd1 to " $each
		cd "$each"
		$ori/createRemoteRepo.sh
		cd "$dir"
	fi
done
