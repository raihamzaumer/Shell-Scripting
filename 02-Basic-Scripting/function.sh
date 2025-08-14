#!/bin/bash

#for multi line comment

<< comment
Allah hu akbar
comment
function syntax_chk() {
read -p "Is synatax of my script is correct (yes/no): " chk

read -p "Script Execution percentage is " percentage

if [[ $chk == "yes" ]];
then
        echo "$1 is correct "
elif [[ $percentage -ge 100 ]];
then
        echo "$1 is correct "
else
        echo "$1 has errors!!!"
fi
}
#calling a funtion
syntax_chk "Script"
~                        
