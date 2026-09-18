#!/bin/bash
pkill -x conky
pkill -x waybar
sleep 1

waybar -c ~/.config/waybar-strut/config.jsonc -s ~/.config/waybar-strut/style.css &
sleep 1
conky -c ~/.config/conky/conky.conf &
