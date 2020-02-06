#!/bin/bash

##replace 'myname' with your name
NAME=myname

##diary location, put the path to your diary
DIARYFILE=/tmp/thediary

##deletes the temporary file if it exists
if [ -e /tmp/diariotmp ]
then
 rm /tmp/diariotmp
fi

##write in the diary with nano
nano /tmp/diariotmp

##sees if anything was writen and adds to you DIARYFILE
if [ -e /tmp/diariotmp ]
then
 echo -e "  - "$NAME $(date +1%Y-%m-%d) '|' $(date +%H-%M-%S) " - \n" >> $DIARYFILE
 cat /tmp/diariotmp >> $DIARYFILE
 echo -e "\n"================================================================== "\n" >> $DIARYFILE
 rm /tmp/diariotmp
fi


