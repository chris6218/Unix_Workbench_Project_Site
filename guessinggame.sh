#!/usr/bin/evn bash
# File: guessinggame.sh

function get_file_number {
	local number=$(ls -l | wc -l)
	let number=number-1
	echo $number
}

echo "Guess how many files are in the current directory: "
read guess
correct=$(get_file_number)

while [[ $guess -ne $correct ]]
do
	if [[ $guess -lt $correct ]]
	then
		echo "Your guessed too low."
		echo "Please guess again: "
		read guess		
	else 
		echo "You guessed too high."
		echo "Please guess again: "
		read guess
	fi
done

echo "You guessed correctly!!!"

