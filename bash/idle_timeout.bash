#!/data/data/com.termux/files/usr/bin/bash

IDLE_TIME=60           # seconds before running command
COMMAND="am start -n com.example.aerial/.MainActivity"  # <-- replace with your screensaver app

last_time=$(date +%s)

while true; do
    sleep 1
    now=$(date +%s)
    elapsed=$((now - last_time))

    if [ $elapsed -ge $IDLE_TIME ]; then
        eval $COMMAND
        last_time=$(date +%s)  # reset timer after running
    fi
done