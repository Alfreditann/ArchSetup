#!/bin/bash

echo sleep

hyprlock & disown

sleep 0.5

systemctl suspend 