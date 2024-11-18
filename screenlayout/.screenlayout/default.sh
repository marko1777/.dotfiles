#!/bin/sh

intern=eDP1
extern1=DP1
extern2=DP2

if xrandr | grep -w "$extern1 connected.*"; then
	xrandr --output eDP1 --primary --mode 1920x1080 --pos 1280x0 --rotate normal --output DP1 --mode 1280x1024 --pos 0x0 --rotate normal --output DP2 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
elif xrandr | grep -w "$extern2 connected.*"; then
	cvt 1280 1024 60
	xrandr --newmode "1280x1024_60.00" 109.00  1280 1368 1496 1712 1024 1027 10
	xrandr --addmode DP2 1280x1024_60.00
	xrandr --output eDP1 --primary --mode 1920x1080 --pos 1280x0 --rotate normal --output DP2 --mode 1280x1024_60.00 --pos 0x0 --rotate normal --output DP2 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
else
    xrandr --output "$extern" --off --output "$intern" --auto
fi
feh --recursive --bg-fill --randomize ~/wallpapers/
