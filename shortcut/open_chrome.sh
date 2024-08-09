#!/bin/bash

# Check if Chrome is running
if pgrep -x "chrome" >/dev/null; then
  # Focus the existing Chrome window
  xdotool search --onlyvisible --class "Google-chrome" windowactivate
else
  # Start Chrome with a default page or blank
  flatpak run com.google.Chrome "$1"
fi
