#!/bin/bash

mjpg_streamer -i "/usr/local/lib/input_uvc.so -f 24 -r 1280x720 -d /dev/video0" \
-o "/usr/local/lib/output_http.so -p 8080 -w ~/mjpg-streamer"
