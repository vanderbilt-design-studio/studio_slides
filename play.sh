#!/bin/bash
while :
do
	ffmpeg -loglevel panic -re -rtsp_flags listen -i 'rtsp://192.168.1.21:8080/live.sdp' -pix_fmt bgra -f fbdev /dev/fb0
done