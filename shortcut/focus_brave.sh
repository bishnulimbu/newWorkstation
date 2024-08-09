#!/bin/bash

# Check if Brave is running
if pgrep -x "brave" > /dev/null
then
    # Focus the existing Brave window
    xdotool search --onlyvisible --class "Brave-browser" windowactivate
else
    # Start Brave with a default page or blank
    flatpak run com.brave.Browser "$1"
fi
