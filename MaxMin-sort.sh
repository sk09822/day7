#!/bin/bash -x

for ((i=0;i<10;i++))
do
random=$((RANDOM%100+99))
arr[$i]=$random
done

	echo "Array before sorting: ${arr[@]}"

temp=0
for (( i=0; i<10; i++ ))
do

     for (( j=i+1; j<10; j++ ))
     do

if [ ${arr[i]} -gt ${arr[$((j))]} ]

then
	temp=${arr[i]}
 	arr[$i]=${arr[$((j))]}
 	arr[$((j))]=$temp
 fi
done
done

echo "Array after sorting:${arr[@]} "
echo "Second smallest:${arr[1]} "
echo "second largest:${arr[8]} "

