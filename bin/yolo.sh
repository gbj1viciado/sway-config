#!/bin/bash
if echo $(($RANDOM%2)) |grep 1 > /dev/null; then
	sway
else
	wayfire
fi
exit
