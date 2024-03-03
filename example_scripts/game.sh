#!/bin/bash

MY_NUMBER=$(( $RANDOM % 100 ))

GUESS=-1
while [ $MY_NUMBER -ne $GUESS ]; do
	printf 'Guess a number: '
	read GUESS
	if [ $MY_NUMBER -lt $GUESS ]; then
		echo 'Lower'
	elif [ $MY_NUMBER -gt $GUESS ]; then
		echo 'Higher'
	else
		echo 'Correct'
	fi
done
