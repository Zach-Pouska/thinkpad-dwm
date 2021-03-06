#!/bin/bash

if [ "$1" == "inc" ]; then
  xbacklight -fps 60 -inc 5
fi

if [ "$1" == "dec" ]; then
  xbacklight -fps 60 -dec 5
fi

BRIGHTNESS=$(xbacklight -get)
NOTI_ID=$(notify-send.py "Brightness:" "$BRIGHTNESS%" \
	--hint string:image-path:video-display boolean:transient:true \
		int:has-percentage:$BRIGHTNESS \
	--replaces-process "brightness-popup")

