#!/bin/bash
echo "User: $(whoami)"
echo "Date: $(date)"
echo "Disk Usages:"
df -h
echo "Memory Usages:"
free -h
echo "Process List:"
ps -aux | head
