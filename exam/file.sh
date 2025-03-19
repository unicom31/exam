#!/bin/bash
# file.sh
if [ $# -eq 0 ]
then
	file="."
else
	file=$1
fi

if [ -e $file ]
then
	wc $file
else
	echo "오류 ! 파일 없음"
fi
