perhoursalary=20;
ispresent=$(($RANDOM%3))
case $ispresent in
                 1)
                 echo "employee is present "
                 workinghour=10
                 ;;
                 0)
                 echo "employee is absent "
                 workinghour=0
                 ;;
     	       	 2)
               	 echo "employee is parttime"
		 workinghour=8
		 ;;
esac
salary=$(($workinghour*$perhoursalary))
echo "wage=$salary"



