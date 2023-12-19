#!/bin/bash

currentMode=$(cat /sys/module/hid_apple/parameters/fnmode)

toWrite=1
if [ "$currentMode" -eq "2" ]; then
	toWrite=1
else
	toWrite=2
fi

echo "$toWrite" | sudo tee -a /sys/module/hid_apple/parameters/fnmode
