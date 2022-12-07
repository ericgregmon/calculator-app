#!/bin/bash

#debug mode
#set -x

clear

#Define colors
red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;36m'
yellow='\033[1;33m'
NC='\033[0;m'

echo -e "${blue}"
#print a welcome message
if [ -f /usr/games/cowsay ]
then
	cowsay "welcome"
	echo -e "\t..To New Era calculator App"
else
	echo "welcome to NewEra Calculator App"
fi

echo -e "${NC}"

#calculation function
calculate() {
read -p "enter first number: " num1
read -p "enter second number: " num2

echo -e "${green}$num1 $1 $num2 = $(expr $num1 $1 $num2)${NC}"
}

#Alternatively, you can use the multiplication function, that will work for all the other calculations.

#multiplication function
multiply() {
read -p "enter first number: " num1
read -p "enter second number: " num2

echo -e "${green}$num1 $1 $num2 = $(echo $(( $num1$1$num2)))${NC} "
}

#display option menu
PS3="please select an option: "
select option in Addition Subtraction Multiplication Division Quit
do
	case $option in
		Addition)
			calculate "+"
			;;
		Subtraction)
			calculate "-"
			;;
		Multiplication)
			multiply "*"
			;;
		Division)
			calculate "/"
			;;
		Quit)
			echo -e ${yellow}
			
# print a goodbye message
			if [ -f /usr/games/cowsay ]
			then
				cowsay "Goodbye"
				echo -e "\t..From NewEra calculator App"
			else
				echo "Goodbye"
			fi
			sleep 1
			echo -e ${NC}
			exit $?
	esac


done
