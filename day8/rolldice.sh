#!/bin/bash

count=0;
i=1;
declare -A dict

while [[ $count -lt 10 ]]
do
	num=$(( RANDOM %6+1 ));
	dict["key$i"]=$num;
	(( i++ ));

	count=$(printf '%s\n' "${dict[@]}" | sort | uniq -c | sort -r | head -1 | awk '{print $1}');
	number=$(printf '%s\n' "${dict[@]}" | sort | uniq -c | sort -r | head -1 | awk '{print $2}');

done
echo "Number $number reached $count times ";
echo "Dictionary Keys : " ${!dict[@]};
echo "Dictionary Values : "${dict[@]};
echo "Total Count of Dictonary : "${#dict[@]}



