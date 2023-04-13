#!/bin/bash
if playerctl status | grep 'Playing' > /dev/null; then
    playerctl pause
else
    playerctl play
    fi

