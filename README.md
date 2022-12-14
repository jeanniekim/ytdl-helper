# ytdl-helper
Simple shell script to help download parts of YouTube videos in high quality using [youtube-dl](https://github.com/ytdl-org/youtube-dl). 

Uses commands described in [this StackExchange answer](https://unix.stackexchange.com/questions/230481/how-to-download-portion-of-video-with-youtube-dl-command). 

Only requires YouTube URL, start timestamp, and length of clip. Can also specify what name to save the video as.

Current script only downloads as `.mp4`. Function verified on Windows 10.
## to use
Download [youtube-dl](https://github.com/ytdl-org/youtube-dl). Place `download.sh` in the same directory as `youtube-dl.exe`. Run the shell script. Demonstration below:

![demo](https://raw.githubusercontent.com/jeanniekim/ytdl-helper/main/demo.gif)

The finished video will save in the same directory as `download.sh` and `youtube-dl.exe`. 

Inputting a simple number like `12` equates to `00:00:12` (12 seconds) for the start time/duration.

## to add
- End timestamp function
- Ability to choose file extension (even audio?)