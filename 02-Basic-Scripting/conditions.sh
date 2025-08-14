#!/bin/bash

#for multi line comment

<< comment
Allah hu akbar
comment

read -p "Is synatax of my script is correct: " chk

read -p "Script Execution percentage is " percentage

if [[ $chk == "yes" ]];
then
	echo "Script is correct "
elif [[ $percentage -ge 100 ]];
then
	echo "Script is correct "
else
	echo "Script has errors!!!"
fi
