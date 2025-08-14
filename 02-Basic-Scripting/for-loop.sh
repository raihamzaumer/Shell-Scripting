#!/bin/bash

#loopssss  --for loop nad while loops

<< Task
1 is argument 1 which is folder name
2 is start of range
3 is end of range
Task

for (( num=$2 ; num<=$3; num++ ))
do
	mkdir "$1-$num" #to make directories
done
