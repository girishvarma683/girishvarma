perhoursalary=20;
for ((day1=0; day<=20; day++))
do
        ispresent=$(($RANDOM%1));
                case $ispresent in
                                0)
                                echo "employee is present ";
                                workinghour=8;
                                ;;
                esac
salary=$(($workinghour*$perhoursalary))
totalsalary=$(($totalsalary + $salary))
echo "dailysalary=$salary"
done
echo "totalwage=$totalsalary"
