#!/bin/bash
# this is not neccessarily guaranteed to work. use at your own risk, and please
# only use it if you understand what it does.

## Raspberry Pi Fast Deployment Script:
# * Installs mjpeg-streamer

sudo apt-get install subversion libjpeg imagemagick libv4l-dev
mkdir -p ~/src/mjpg-streamer
cd ~/src/mjpg-streamer
svn https://mjpg-streamer.svn.sourceforge.net/svnroot/mjpg-streamer .
make
sudo make install

cd ~
sudo cp ./initscripts/stream /etc/init.d/
sudo update-rc.d stream defaults
