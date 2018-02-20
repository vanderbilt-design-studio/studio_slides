#!/bin/bash
while :
do
	ffmpeg -re -i 'udp://192.168.1.21:8080?listen' -pix_fmt bgra -f fbdev /dev/fb0
done