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
