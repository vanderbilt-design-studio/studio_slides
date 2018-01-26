for i in *.{png,mp4}; do
	if [[ $i == *png ]]; then
		mpv --loop $i &
		sleep 10
		kill %1
		echo "BLAH"
	elif [[ $i == *mp4 ]]; then
		mpv $i
		echo "BLEH"
	fi
done