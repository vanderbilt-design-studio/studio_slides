DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
git pull

for i in *.{png,mp4}; do
	if [[ $i == *png ]]; then
		./blit $i &
		sleep 10
		kill %1
		echo "BLAH"
	elif [[ $i == *mp4 ]]; then
		mpv $i
		echo "BLEH"
	fi
done