#!/bin/bash

mjpg_streamer -i "/usr/local/lib/input_uvc.so -d /dev/video0 -f 60 -r 1280x720" -o "/usr/local/lib/output_http.so -p 8080 -w ~/mjpg-streamer"
