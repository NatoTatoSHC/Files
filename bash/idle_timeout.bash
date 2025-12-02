#!/bin/bash

# Set idle time in seconds
IDLE_TIME=300

while true; do
    # Check for idle time
    idle=$(xprintidle)
    if [ "$idle" -ge $((IDLE_TIME * 1000)) ]; then
        # Activate screensaver
        xscreensaver-command -activate
    fi
    sleep 10
done
