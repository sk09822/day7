#!/bin/bash

echo "print the 10 random number"
for (( index=0; index<=10; index++))
do
array[index]=$((RANDOM%900+100))
done
echo ${array[@]}

maximum=$((array[0]))
secondMaximum=$((array[0]))

	for (( index=0; index<=10; index++ ))
	do
        	if [ $((array[index])) -gt $maximum ]
        	then
        	secondMaximum=$maximum
        	maximum=$((array[index]))
        elif [ $((array[index])) -gt $secondMaximum -a $((array[index])) -lt $maximum  ]
        then
        	secondMaximum=$((array[index]))
        fi
done


echo "largest" $maximum
echo "second largest" $secondMaximum

minimum=$((array[0]))
secondMinimum=$((array[0]))
	for (( index=0; index<10; index++ ))
	do
        	if [ $((array[index])) -lt $minimum ]
        	then
        	secondMinimum=$minimum
        	minimum=$((array[index]))
        	elif [ $((array[index])) -lt $secondMinimum -a $((array[index])) -gt $minimum  ]
        	then
        	secondMinimum=$((array[index]))
        	fi
	done
echo "smallest" $minimum
echo "second smallest number" $secondMinimum
