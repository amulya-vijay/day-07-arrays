#! /bin/bash
declare -a array
array=( 3 0 5 6 10 13 3 )
one=0
two=0
three=0
for(( i=0; i<${#array[@]}; i++ ))
do
	for (( j=i+1; j<${#array[@]}; j++ ))
	do
		for(( k=j+1; k<${#array[@]}; k++ ))
		do
			a=${array[i]}
			b=${array[j]}
			c=${array[k]}
			sum=$(( a+b+c ))
			if [ $sum -eq 6 ]
			then
				one=$i
				two=$j
				three=$k
				break
			fi
		done
	done
done
echo "values:"${array[one]} ${array[two]} ${array[three]}
