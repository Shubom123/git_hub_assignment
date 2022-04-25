#!/bin/bash -x

part=1
full=2
empprhrs=20
randomcheck=$((RANDOM%3))

if [ $part -eq $randomcheck ]
then
	hrs=4
elif [ $full -eq $randomcheck ]
then
	hrs=8
else
	hrs=0
fi

sal=$(($empprhrs*$hrs))
