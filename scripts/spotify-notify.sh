#!/bin/bash

# esperar o daemon de notificações aparecer no D-Bus
until busctl --user list | grep -q org.freedesktop.Notifications; do
  sleep 0.5
done

CACHE="$HOME/.cache/spotify-cover.jpg"

playerctl -p spotify metadata --follow \
--format '{{status}}|{{artist}}|{{title}}|{{mpris:artUrl}}' |
while IFS="|" read status artist title art
do
    [ -n "$art" ] && curl -s "$art" -o "$CACHE"

    if [ "$status" = "Playing" ]; then
        notify-send -t 3500 -i "$CACHE" "Now Playing" "$artist - $title"
    elif [ "$status" = "Paused" ]; then
        notify-send -t 2000 -i "$CACHE" "Paused" "$artist - $title"
    fi
done
