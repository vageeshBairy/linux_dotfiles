#!/bin/sh

feh -z --no-fehbg --bg-fill ~/.config/backgrounds/
setxkbmap -option caps:swapescape 

if hash dwmblocks > /dev/null 2>&1; then
	pkill dwmblocks
	dwmblocks &
fi

if hash picom > /dev/null 2>&1; then
	pkill picom
	picom &
fi

if hash mpd > /dev/null 2>&1; then
	pkill mpd
	mpd &
fi

if hash xbanish > /dev/null 2>&1; then
	pkill xbanish
	xbanish -t 1 &
fi

if hash nm-applet > /dev/null 2>&1; then
	pkill nm-applet
	nm-applet &
fi

if hash blueman-applet > /dev/null 2>&1; then
	pkill blueman-applet
	blueman-applet &
fi

if hash redshift > /dev/null 2>&1; then
	pkill redshift
	redshift -P -O 4500 &
	redshift &
fi

# audio dameon
if hash pipewire > /dev/null 2>&1; then
	pkill pipewire
	pipewire &
else
	pipewire &
fi

if hash pipewire-pulse > /dev/null 2>&1; then
	pkill pipewire-pulse
	pipewire-pulse &
else
	pipewire-pulse &
fi

#if hash wireplumber > /dev/null 2>&1; then
#	pkill wireplumber
#	wireplumber
#else
#	wireplumber
#fi
