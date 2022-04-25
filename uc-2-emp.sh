#!/bin/bash -x

Present=1
randomcheck=$((RANDOM%2))

if [ $Present -eq $randomcheck ]
then
	empprhr=30
	emphrs=8
	sal=$(($emphrs*$empprhr))
else
	sal=0
fi
