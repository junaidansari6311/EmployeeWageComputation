#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
#Constant
EMPLOYEE_IS_PRESENT=1
EMPLOYEE_RATE_PER_HOUR=20
employeeCheck=$((RANDOM%2))
if [ $employeeCheck -eq $EMPLOYEE_IS_PRESENT ]
then
	employeeHours=8
	employeeSalary=$(($employeeHours*$EMPLOYEE_RATE_PER_HOUR))
else
	employeeSalary=0
fi
