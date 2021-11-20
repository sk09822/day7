#!/bin/bash -x

cnt=0
for(( i=1; i<100; i++ ))
do
number=$i

remainder=`expr $i % 10 `
number=`expr $i / 10 `

if [ $remainder -eq $number ]
then

    echo "To print the repeated twice:" $i

    arr[((cnt++))]=$i
fi
done
echo "${arr[@]}"
