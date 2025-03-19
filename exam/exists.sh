#!/bin/bash

if [ $#  -eq 0 ]
then
	file="."
else
	file=$1
fi

if [ -f $file ] && [ -w $file ]
then
	uptime > $file
fi

if [ ! -e $file ]
then
	echo $file \: 파일 없음
fi

if [ ! -d $file ]
then
	echo $file \: 디렉토리 아님
fi
