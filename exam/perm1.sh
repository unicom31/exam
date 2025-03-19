#!/bin/bash
# 사용법: perm1.sh 파일*
# 파일의 접근권한과 이름을 프린트한다. 

if [ $# -eq 0 ]
then
    echo 사용법: $0 파일*
	exit 1
fi

echo " 접근권한      파일"
for file in $*
do
    if [ -f $file ]
	then
	    fileinfo=`ls -l $file`
	    perm=`echo $fileinfo | cut -d' ' -f1`
	    echo "$perm   $file"
	fi
done
