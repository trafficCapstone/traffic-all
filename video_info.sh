#!/bin/bash
echo "Height"
ffmpeg -i $1 2>&1 | grep Video: | grep -Po '\d{3,5}x\d{3,5}' | cut -d'x' -f1
echo "Width"
ffmpeg -i $1 2>&1 | grep Video: | grep -Po '\d{3,5}x\d{3,5}' | cut -d'x' -f2

