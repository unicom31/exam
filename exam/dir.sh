#!/bin/bash
if [ $# -eq 0 ]
then
	dir="."
else
	dir=$1
fi

if [ -d $dir ]
then
	echo -n $dir 내의 파일과 서브디렉토리 개수:
	ls $dir | wc -l
else
	echo $dir\: 디랙토리 아님
fi
