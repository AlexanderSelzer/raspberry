#!/bin/bash

ffmpeg -v verbose -r 5 -f video4linux2 -s 1280x720 -i /dev/video0 http://localhost/stream.ffm
