##!/bin/sh
c=`pwd`
echo pwd:$c
fl=`ls "$c"`
for fn in $fl; 
do
	if [ -d "$fn" ]; 
	then
		echo $fn
		git rm --cached $fn
		git submodule add https://github.com/ericlin1001/oldCppProjectASM.$fn $fn
	fi
done
git status
git submodule status
git commit -am 'add all submodules'
git push
