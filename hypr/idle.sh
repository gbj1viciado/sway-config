#!/usr/bin/bash

 exec swayidle -w \
          timeout 900 'swaylock --screenshots --effect-blur 7x5 --clock --indicator-idle-visible --fade-in 0.5 --ring-color 464653' \
          timeout 1800 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on' \
          before-sleep 'swaylock -i /home/gabriel/Imagens/Illustrated-Celestial-Landscape-28.png'
