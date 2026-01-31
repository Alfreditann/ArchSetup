#!/bin/bash

cp -r ~/Documents/ArchSetup/waybar ~/.config

killall -9 waybar
waybar &
