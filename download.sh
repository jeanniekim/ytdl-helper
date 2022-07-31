#!/bin/bash

getURL(){
    echo "Enter YouTube video URL"
    read ytURL
    # ./command -> for command not found error
    # cut splits the output by space into an array
    dlURLs=($(./youtube-dl --youtube-skip-dash-manifest -g $ytURL | cut -d' ' -f1))
    URL1=${dlURLs[0]}
    URL2=${dlURLs[1]}
}

getURL

echo "Enter start time (00:00:00)"
read STARTTIME
echo "Enter duration of clip (00:00:00)"
read DURATION
echo "Enter name of .mp4 to save file to"
read NAME

ffmpeg -ss $STARTTIME -i "$URL1" -ss $STARTTIME -i "$URL2" -t $DURATION -map 0:v -map 1:a -c:v libx264 -c:a aac $NAME.mp4