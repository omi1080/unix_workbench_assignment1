#!/usr/bin/bash

function generate_files {
	R=$(expr $RANDOM % 100)

	if [[ $(ls | grep -o "temp") = "temp" ]]
	then
		rm -r ./temp
	fi
		
		mkdir ./temp
		cd ./temp
		touch $(eval echo {1..$R}.txt)
}

function get_no_of_files {
	no_of_files=$(ls | wc -l)
}

function play_game {
	echo "Guess the number of files in the temp directory"
	
	local done=1

	while [[ $done -eq 1 ]]
	do
		read input

		if [[ $input -eq $no_of_files ]]
		then
			echo "Congratulations!"
			done=0
		elif [[ $input -lt $no_of_files ]]
		then
			echo "Too low"
		else
			echo "Too high"
		fi
	done

	rm -r ../temp
}

generate_files
get_no_of_files
play_game
