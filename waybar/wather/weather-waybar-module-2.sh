#!/bin/bash

WEATHER_PATH=/home/gabriel/.config/waybar/wather/weather.py
GEOLOCATOR_PATH=/home/gabriel/.config/waybar/wather/geolocateme.py

LOCATION=$($GEOLOCATOR_PATH)
LAT=$(echo "$LOCATION" | awk '{split($0,l,";"); print l[1]}')
LON=$(echo "$LOCATION" | awk '{split($0,l,";"); print l[2]}')

$WEATHER_PATH --lat "$LAT" --lon "$LON" --output-format '{"text": "{{next.icon}} {{current.temperature}}°C", "alt": "{{city}}: {{current.temperature}}°C, {{next.description_long}} -> {{next.temperature}}°C, {{current.description_long}}", "tooltip": "{{city}}: {{current.temperature_max}}°C -> {{current.temperature_min}}°C"}'
