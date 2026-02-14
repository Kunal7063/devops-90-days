#!/bin/bash

usage=$(free | awk '/Mem/ {print $3/$2 * 100.0}')

printf "Current Memory Usage: %.2f%%\n" $usage

if (( $(echo "$usage > 70" | bc -l) ))
then
	echo "WARNING: High Memory Usage"
else
	echo "Status: Normal"
fi
