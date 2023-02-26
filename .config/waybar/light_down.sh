#!/bin/bash

now_light=$(light -G | bc)

if [ "$(echo "$now_light < 10" | bc)" -eq 0 ]; then
	# light more than 10
	light -U 5
fi
