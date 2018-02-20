ffmpeg.exe ^
	-re ^
	-i http://192.168.1.16:8080/?action=stream^
	-i http://192.168.1.16:8080/?action=stream^
	-i http://192.168.1.17:8080/?action=stream^
	-i http://192.168.1.19:8080/?action=stream^
	-filter_complex "
		nullsrc=size=1280x1024 [base]; ^
		[0:v] setpts=PTS-STARTPTS, scale=704x1024 [upper];
		[1:v] setpts=PTS-STARTPTS, scale=426x320 [lowerleft];
		[2:v] setpts=PTS-STARTPTS, scale=426x320 [lowermid];
		[3:v] setpts=PTS-STARTPTS, scale=426x320 [lowerright];
		[base][upper] overlay=shortest=1 [tmp1];
		[tmp1][lowerleft] overlay=shortest=1:y=704 [tmp2];
		[tmp2][lowermid] overlay=shortest=1:x=426:y=704 [tmp3];
		[tmp3][lowerright] overlay=shortest=1:x=852:y=704
	"^
	-tune zerolatency ^
	-f mpegts udp://192.168.1.21:8080
