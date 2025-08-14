#!/bin/bash

ping -c 1 google.com &> /dev/null
if [ $? -eq 0 ]; then
	echo "Online, Boom ********** Internet is connected"
else
	echo "Offline"
fi
