perhoursalary=30;
for ((day1=0; day<=20; day++))
do
        ispresent=$(($RANDOM%2))
                case $ispresent in
                                1)
                                echo "employee is present "
                                workinghour=8
                                ;;
                                0)
                                echo "employee is absent "
                                workinghour=0
                                ;;
                esac
salary=$(($workinghour*$perhoursalary))
totalsalary=$(($totalsalary + $salary))
done
echo "wage for a month=$totalsalary"
