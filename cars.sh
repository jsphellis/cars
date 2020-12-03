#! /bin/bash
# cars.sh
# Joseph Ellis

choice=0
while [ "$choice" -ne "3" ]
do
	echo "Type the number 1 to add a new car to the list"
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to quit the program"
	read choice 
	case "$choice" in 
		"1") echo "Enter the new car's year"
			read year
			echo "Enter the new car's make"
			read make
			echo "Enter the new car's model"
			read model
			echo "$year:$make:$model" >> My_old_cars
			;;
		"2") sort My_old_cars
			;;
		"3") echo "Thank you for using this program"
			;;
	esac
done
