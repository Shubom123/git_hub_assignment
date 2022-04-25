#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHrsInMnt=100
empRatePerHr=40
workingDays=20
totalWorkingDays=0
totalEmpHr=0

function getWorkingHrs()
{
	case $randomCheck in
			$isPartTime )
				empHrs=4
			;;
			$isFullTime )
				empHrs=8
			;;
			*)
				empHrs=0
			;;
	esac
}

function getEmpWage()
{
        echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxHrsInMnt && 
	$totalWorkingDays -lt $workingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorkingHrs $randomCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalSalary="$( getEmpWage $totalEmpHr )"
echo ${dailyWages[@]}
