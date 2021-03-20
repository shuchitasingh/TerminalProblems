#!/bin/bash

declare -A dict
i=1;
function get_month()
{
case $1 in
	1) echo "January";;
	2) echo "February";;
	3) echo "March";;
	4) echo "April";;
	5) echo "May";;
	6) echo "June";;
	7) echo "July";;
	8) echo "August";;
	9) echo "September";;
	10) echo "October";;
	11) echo "November";;
	12) echo "December";;
	*) echo "Nothing";;
esac
}


while [[ $i -le 50 ]]
do
        month=$( get_month $(( RANDOM %11+1 )) );
	year=`shuf -i 92-93 -n 1 | awk '{print $0}'`;
        dict["persion$i"]="$month-$year";
        (( i++ ));
done

count=$(printf '%s\n' "${dict[@]}" | awk -F'-' '{print $1}' | sort | uniq -c | sort -r | head -1 | awk '{print $1}');
number=$(printf '%s\n' "${dict[@]}" | awk -F'-' '{print $1}' | sort | uniq -c | sort -r | head -1 | awk '{print $2}');

echo $count " individuals having birthdays on same month "$number ;
printf "\n";
echo "Dictionary Keys : "${!dict[@]};
printf "\n";
echo "Dictionary Values : "${dict[@]};
printf "\n";
echo "Total Count of Dictonary : "${#dict[@]}
