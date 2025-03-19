#!/bin/bash
# 사용법 : score1.sh
# 점수에 따라 학점을 경정하여 프린트

echo -n '점수 입력:'

read score

if (( $score >= 90 ))
then
	echo A 학점
elif (( $score >= 80 ))
then
	echo B
elif (( $score >= 70 ))
then
	echo C
elif (( $score >= 60 ))
then
	echo D
else
	echo 노력 요함
fi
