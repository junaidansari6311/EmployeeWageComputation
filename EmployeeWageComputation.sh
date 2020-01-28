#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
declare -A employeeDailyWage
#Constants
EMPLOYEE_WORKING_PARTTIME=1
EMPLOYEE_WORKING_FULLTIME=2
EMPLOYEE_RATE_PER_HOUR=20
WORKING_DAYS_OF_EMPLOYEE=20
MAX_WORKING_HOURS_IN_MONTH=100
#Variable
totalEmployeeHours=0
totalWorkingDays=0
function getWorkHoursOfEmployee()
{
	local employeeCheck=$1
	case $employeeCheck in
		$EMPLOYEE_WORKING_FULLTIME)
			employeeHours=8
			;;
		$EMPLOYEE_WORKING_PARTTIME)
			employeeHours=4
			;;
		*)
			employeeHours=0
			;;
	esac
	echo $employeeHours
}

function calculateDailyWage(){
	local employeeHours=$1
	wage=$(($employeeHours*$EMPLOYEE_RATE_PER_HOUR))
	echo $wage
}

while [[ $totalEmployeeHours -lt $MAX_WORKING_HOURS_IN_MONTH && $totalWorkingDays -lt $WORKING_DAYS_OF_EMPLOYEE ]]
do
	((totalWorkingDays++))
	employeeCheck=$(( RANDOM%3 ))
	employeeHours="$( getWorkHoursOfEmployee $employeeCheck )"
	totalEmployeeHours=$(($totalEmployeeHours + $employeeHours))
	employeeDailyWage[Day"$totalWorkingDays"]="$( calculateDailyWage $employeeHours )"
done
totalSalary=$(($totalEmployeeHours*$EMPLOYEE_RATE_PER_HOUR))
echo "Daily Wage " ${employeeDailyWage[@]}
echo ${!employeeDailyWage[@]}
