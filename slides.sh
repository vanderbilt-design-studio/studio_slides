#!/bin/bash
while :
do
for i in *.{png,mp4}; do
	echo $i
	if [[ $i == *png ]]; then
		mpv --loop "$i" &
		sleep 10
		pkill -P $$
		echo "BLAH"
	elif [[ $i == *mp4 ]]; then
		mpv "$i"
		echo "BLEH"
	fi
done
done