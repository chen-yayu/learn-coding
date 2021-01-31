#!/bin/bash

ffmpeg -framerate 1 -i install_%1d.jpg -r 5 -vf "format=yuv420p,scale=400:600" -y install.mp4 

