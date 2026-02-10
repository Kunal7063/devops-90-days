#!/bin/bash
SERVICE=cron

systemctl is-active $SERVICE

if [ $? -eq 0 ]; then
	echo "$SERVICE is running"
else
	echo "$SERVICE is NOT running"
fi
