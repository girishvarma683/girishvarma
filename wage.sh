perhoursalary=20;
ispresent=$(($RANDOM%2));
case $ispresent in
		1)
		echo "employee is present ";
		workinghour=8;
		;;
		0)
		echo "employee is absent ";
		workinghour=0;
		;;
esac
salary=$(($workinghour*$perhoursalary))
echo "wage=$salary"
