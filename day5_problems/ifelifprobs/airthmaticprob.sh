#!/bin/bash -x

echo "Enter value for A : ";
read a;

echo "Enter value for B : ";
read b;

echo "Enter value for C : ";
read c;

declare -A dict

result1=$(( a+b+c ));
result2=$(( a*b*c ));
result3=`echo $c | awk '{ print $1+$a/$b }'`;
result4=`echo $c | awk '{ print $a%$b+$1 }'`;

dict[1]=$result1;
dict[2]=$result2;
dict[3]=$result3;
dict[4]=$result4;

echo ${dict[@]};
size=${#dict[@]};

for (( i=1; i<=$size; i++ ))
do
	for (( j=$(( i+1 )); j<=$size; j++ ))
	do
		if [ ${dict[$i]} -lt ${dict[$j]} ]
		then
			 temp=${dict[$i]}
		         dict[$i]=${dict[$j]}
	            	 dict[$j]=$temp

		fi
	done
done
echo ${dict[@]};
