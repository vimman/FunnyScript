#!/bin/sh

RATE='0'
index='0'
cond='TRUE'
#FILE='~/Library/SystemInputPreferences/.log'
FILE='log2'

function alert_msg

{
	i='0'
	while [[ i -le 2 ]]
		do
			audiodevice output "Internal Speakers"
			osascript -e "set volume output volume 100"
			say "Message incoming" -v Samantha
			let "i++"
		done 
}

sleep 42m

while $cond
	do
		audiodevice output "Internal Speakers"
		osascript -e "set volume output volume 100"
		say "Gro noob"
		let "index++"
		if [[ $index -eq 10 ]]
		then
			cond='FALSE'
		fi
	done

sleep 24m
cond='TRUE'
index='0'

while $cond && [[ -r $FILE ]]
	do
		audiodevice output "Internal Speakers"
		osascript -e "set volume output volume 100"
		if [[ -r $FILE ]]
		then
			alert_msg
			say $(head -$((${RANDOM} % `wc -l < $FILE` + 1)) $FILE | tail -1)
		else
			say "Gro noob"
		fi
		let "RATE = 10 * 60 + ($(jot -r 1 1 5)) * 60"
		#let "RATE = 2"
		if [[ $index -eq 2 ]]
		then
			let "RATE = 42 * 60"
			#let "RATE = 5"
			let "index = 0"
		else
			let "index++"
		fi
		sleep $RATE
	done
