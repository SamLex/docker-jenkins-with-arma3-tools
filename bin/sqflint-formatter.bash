#!/bin/bash
CURRENT_FILE="FILE NOT SET"

IFS=$'\n'
while read line
do
	if [[ $line =~ ^.*\[[0-9]+,[0-9]+\]:.*$ ]]
	then
		echo [SQFLINT] $CURRENT_FILE $line
	else
		CURRENT_FILE=$line
	fi
done
