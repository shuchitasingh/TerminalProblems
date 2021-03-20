read -p "Enter any Single Digit No : " number;

if [ $number -ge 1 ] && [ $number -le 9 ]
then
	if [ $number -eq 1 ]
	then
		printf "\n";
		echo "One";
	elif [ $number -eq 2 ]
	then
		printf "\n";
		echo "Two";
	elif [ $number -eq 3 ]
	then
		printf "\n";
		echo "Three";
	elif [ $number -eq 4 ]
        then
                printf "\n";
                echo "Four";
        elif [ $number -eq 5 ]
	then
                printf "\n";
                echo "Five";
	elif [ $number -eq 6 ]
        then
                printf "\n";
                echo "Six";
        elif [ $number -eq 7 ]
	then
                printf "\n";
                echo "Seven";
	elif [ $number -eq 8 ]
        then
                printf "\n";
                echo "Eight";
        elif [ $number -eq 9 ]
	then
                printf "\n";
                echo "Nine";
	else
                printf "\n";
                echo "Please enter valid Single Digit Value";
	fi

else
	printf "\n";
        echo "Please enter valid Single Digit Value";
fi
