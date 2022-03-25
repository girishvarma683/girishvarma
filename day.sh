perhoursalary=20;
 for ((day=1; day<=20; day++)) do
        ispresent=$(($RANDOM%2));
                case $ispresent in
                                0)
                                echo "employee is present ";
                                workinghour=8;
                                ;;
				1)
                                echo "employee is absent ";
                               workinghour=0;
                                ;;
                esac
salary=$(($workinghour*$perhoursalary))
totalsalary=$(($totalsalary + $salary))
echo "day=$((day))"
done
echo "dailysalary=$salary"
echo "totalwage=$totalsalary"
