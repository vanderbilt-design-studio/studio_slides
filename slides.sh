#!/bin/bash
while :
do
for i in *.{png,mp4}; do
	echo $i
	if [[ $i == *png ]]; then
		fbi -a "$i" &
		sleep 10
		pkill -P $$
		echo "BLAH"
	elif [[ $i == *mp4 ]]; then
		omxplayer "$i"
		echo "BLEH"
	fi
done
done