#!/bin/bash


create_drictory() {
	mkdir demo
}

if ! create_drictory; then
	echo "The code is being exited as the directory already exsit"
	exit 1
fi

echo "This code has error it should be inturupted"
