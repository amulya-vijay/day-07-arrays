#! /bin/bash
declare -a output
read -p "Enter the range in [1-100] : " limit
for (( count=1; count<=limit; count++ ))
do
	num=0
	if [ $(( count%11 )) -eq 0 ]
	then
		num=$count
		output[$count]=$num
	fi
done
echo ${output[@]}
