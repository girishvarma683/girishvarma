employeepresent=$(($RANDOM%3));
case $employeepresent in
			0)
			echo "full time working hours=8"
			;;
			1)
			echo "part time working hours=4"
			;;
			2)
			echo "employee was absent "
			;;
esac
