#!/bin/bash

cp -r ~/Documents/GitHub/ArchSetup/waybar ~/.config

killall -9 waybar
waybar &
