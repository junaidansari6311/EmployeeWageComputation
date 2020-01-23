#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
#Constants
EMPLOYEE_WORKING_PARTTIME=1
EMPLOYEE_WORKING_FULLTIME=2
EMPLOYEE_RATE_PER_HOUR=20
WORKING_DAYS_OF_EMPLOYEE=20
#Variable
totalSalary=0

for (( day=1; day<=$WORKING_DAYS_OF_EMPLOYEE; day++ ))
do
	employeeCheck=$((RANDOM%3))
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

employeeSalary=$(($employeeHours*$EMPLOYEE_RATE_PER_HOUR))
totalSalary=$(($totalSalary + $employeeSalary))
done
