#!/bin/bash -x

echo "Enter the number "
read num
count=0
count1=0
for ((i=2;i<$num;i++ ))
do
   cnt=0
   if [ $(( $num % $i )) -eq 0 ]
   then
      count=1
      for (( j=2;j<$i;j++ ))
      do

         if [ $(( $i % $j )) -eq 0 ]
         then
            cnt=1
         fi
      done
      if [ $cnt -eq 0 ]
      then
         arr[((count1++))]=$i
      fi
   fi
done
if [ $count -eq 0 ]
then
   echo "Entered number is prime so prime numbers don't have factors"
else
   echo "prime factors of $num are ${arr[@]}"
fi
