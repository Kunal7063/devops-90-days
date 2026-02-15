#!/bin/bash

check_memory() {
    echo "Checking Memory..."
    free -h
}

check_disk() {
    echo "Checking Disk..."
    df -h
}

check_memory
check_disk

