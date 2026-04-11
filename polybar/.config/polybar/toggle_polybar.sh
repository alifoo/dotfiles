#!/bin/bash

if pgrep -x "polybar" > /dev/null
then
    killall -q polybar
else
    polybar &  # Replace "example" with your bar name if different
fi
