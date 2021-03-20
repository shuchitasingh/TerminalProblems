read -p "Enter Day between 1 to 7 : " day

case $day in
	1) echo "Monday";;
	2) echo "Tueday";;
	3) echo "Wednesday";;
	4) echo "Thursday";;
	5) echo "Friday";;
	6) echo "Saturday";;
	7) echo "Sunday";;
	*) echo "Please enter day between 1 to 7";;
esac
