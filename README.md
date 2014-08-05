raspberry
=========

Raspberry Pi Stuff


# Video Streaming Reminders/Tips

## Configure the camera

`mplayer tv:// -vo xv` to preview

`apt-get install v4lucp` and fix the settings to make the video look good.
In my case, the contrast was set extremely high, making the video seem too dark.
Setting it close to 0 fixed that.

The saturation seemed a bit too high, making the video look slightly unnatural.
I set it to 60 (~the middle).

Setting the hue to 5 made the video look even more natural.

## mjpgstreamer configuration

### JPEG Quality

The Raspberry Pi is (in most cases) limited by its CPU, and not its bandwidth, when streaming video.

Modifying the JPEG quality (e.g. `-q 80`: 80%), will cause the program to block the CPU, while the framerate
may drop down to under 2 fps.

### Shared Libraries

`mjpg_streamer` might not find the shared libraries, even though they are in the `PATH`.
Use the full path and it will work: `/usr/local/lib/input_uvc.so`
