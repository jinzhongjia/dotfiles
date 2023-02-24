#!/bin/bash

now_light=$(light -G | bc)

if [ "$now_light" -lt 10 ]; then
	echo "small"
else
	echo "large"
fi
