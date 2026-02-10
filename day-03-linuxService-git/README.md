📌 Day 3: Linux Services & Processes

What is a Process?

A running instance of a program.

Example:

    ps -ef

What is a Service?

A long-running background process managed by the system.

Example:

    systemctl status cron

Important Commands

top

journalctl

kill <PID>

Mini Project

Service monitoring script to check whether a service is running.

    cd ~/devops-90-days/day-03-linux-services
    nano service_check.sh


Paste:

    #!/bin/bash
    SERVICE=cron
    
    systemctl is-active $SERVICE
    if [ $? -eq 0 ]; then
      echo "$SERVICE is running"
    else
      echo "$SERVICE is NOT running"
    fi

Make executable:

    chmod +x service_check.sh
    ./service_check.sh
