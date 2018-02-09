#!/bin/bash
cd /home/pi/studio_slides
sleep 10
mpv --loop --vo=drm --image-display-duration=15 *.{png,mp4}
