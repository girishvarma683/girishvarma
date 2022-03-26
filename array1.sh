declare -a b=("123" "133" "143" "153" "163" "173" "183" "193" "200" "210")
for ((i=0; i<=b; i++))
do
	echo "{$b[$i]}"
done
echo "second largest is ${b[8]}"
echo "second smallest is ${b[2]}"
