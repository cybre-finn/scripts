#!/usr/bin/bash
if ! test -f "/tmp/latex-screenshot.txt"; then
	zenity --entry --text "Screenshot-Verzeichnis" > /tmp/latex-screenshot.txt
fi
screenshot_dir=$(cat /tmp/latex-screenshot.txt)
shot_filename=$(zenity --entry --text "<Name des Screenshots>.png")
gnome-screenshot --area --file=${screenshot_dir}${shot_filename}.png
wl-copy ${screenshot_dir}${shot_filename}.png
