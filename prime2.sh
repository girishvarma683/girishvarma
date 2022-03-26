num=1
for (( i=1; i<=$num; i++ ))
do
    while [ $(($num%$i)) == 0 ]
do
        echo $i
num=$(($num/$i))
done
done
