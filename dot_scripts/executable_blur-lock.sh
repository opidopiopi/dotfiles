#!/usr/bin/env bash

PICTURE=/tmp/lock.png
SCREENSHOT="scrot -z $PICTURE"

BLUR="5x4"

$SCREENSHOT
convert $PICTURE -blur $BLUR $PICTURE
swaylock --image $PICTURE
rm $PICTURE
