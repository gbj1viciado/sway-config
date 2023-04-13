#!/usr/bin/bash
cd /home/gabriel/Games/'Wine Games'/'Aikagura2021.12.27'/ 

game="flatpak run com.usebottles.bottles -b Naughy -e Aikagura.exe"

scope='gamescope -w 1920 -h 1080  -f -n'

$scope /var/lib/flatpak/exports/bin/com.usebottles.bottles -b Naughy -e Aikagura.exe


