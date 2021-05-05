#! /bin/bash
declare -a random_3
read -p "Enter the length of the array : " length
for(( count=0; count<$length; count++ ))
do
	random_3[$count]=$(( RANDOM%(1000-100)+100 ))
done
echo "Array with 10 random 3 digit numbers : "${random_3[@]}
for(( i=0; i<${#random_3[@]}; i++ ))
do
	for(( j=i+1; j<${#random_3[@]}; j++ ))
	do
		if [ ${random_3[i]} -lt ${random_3[j]} ]
		then
			temp=${random_3[i]}
			random_3[i]=${random_3[j]}
			random_3[j]=$temp
		fi
	done
done
echo "Sorted array : " ${random_3[@]}
echo "Second least value= "${random_3[$(( length-2 ))]}
echo "Second highest value= "${random_3[1]}

