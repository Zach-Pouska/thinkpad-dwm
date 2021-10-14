#!/bin/bash
if pgrep -x "picom" > /dev/null
then
   killall picom
else
   picom --config /home/zach/.config/dwm/picom/picom.conf &
fi


