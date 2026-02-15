#!/bin/bash

LOG_FILE="system_monitor.log"

log_message() {
    echo "$(date) : $1" >> $LOG_FILE
}

check_memory() {
    usage=$(free | awk '/Mem/ {print $3/$2 * 100.0}')
    printf "Memory Usage: %.2f%%\n" $usage
    log_message "Memory Usage: $usage%"
}

check_disk() {
    usage=$(df / | awk 'NR==2 {print $5}')
    echo "Disk Usage: $usage"
    log_message "Disk Usage: $usage"
}

log_message "Script Started"

check_memory
check_disk

log_message "Script Finished"

