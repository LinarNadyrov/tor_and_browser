#!/bin/bash
Xvfb :1 -screen 0 1280x800x16 &
/usr/bin/x11vnc -forever -usepw -create -display :1.0 -usepw &
DISPLAY=:1.0
export DISPLAY
firefox


#!/bin/bash
#x11vnc -forever -usepw -create

# Xvfb :1 -screen 0 1024x768x16 &
# /usr/bin/x11vnc -forever -usepw -create -display :1.0 -usepw &
# DISPLAY=:1.0
# export DISPLAY
# firefox

#Xvfb :1 -screen 0 1024x768x16 &
#/usr/bin/x11vnc -display :1.0 -usepw &
#DISPLAY=:1.0
#export DISPLAY
#firefox
