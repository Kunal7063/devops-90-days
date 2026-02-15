#!/bin/bash

LOG_FILE="system_monitor.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') : $1" | tee -a $LOG_FILE
}

check_memory() {
    usage=$(free | awk '/Mem/ {print $3/$2 * 100.0}')
    if (( $(echo "$usage > 70" | bc -l) ))
    then
        log "WARNING: High Memory Usage - $usage%"
    else
        log "Memory Usage Normal - $usage%"
    fi
}

check_disk() {
    usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
    if [ "$usage" -gt 80 ]
    then
        log "WARNING: High Disk Usage - $usage%"
    else
        log "Disk Usage Normal - $usage%"
    fi
}

main() {
    log "Script Started"
    check_memory
    check_disk
    log "Script Finished"
}

main

