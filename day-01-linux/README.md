day-01-linux/README.md

📌 Day 1: Linux Basics & System Info Script
Objective
Learn basic Linux commands used daily in DevOps and create a simple system information script.

🔹 Basic Commands

whoami

	Shows the current logged-in user.

pwd

	Displays the current working directory.

ls

	Lists files and directories.

🔹 File & Directory Operations

mkdir linux-basics

cd linux-basics

	Creates and enters a directory.

touch file1.txt file2.txt

	Creates empty files.

echo "Hello DevOps" > file1.txt

cat file1.txt

	Writes text to a file and displays it.

cp file1.txt copy-file1.txt

mv file2.txt renamed-file2.txt

rm copy-file1.txt

	Copy, rename, and delete files.

🔹 File Permissions

ls -l

	Shows file permissions.

chmod 755 file1.txt

chmod 644 renamed-file2.txt

	Changes file permissions.

sudo chown user:group file1.txt

	Changes file ownership.

🔹 System Monitoring

ps

ps aux

top

	Shows running processes.

df -h

free -h

	Displays disk and memory usage.

🔹 Logs & Services

ls /var/log

sudo tail -n 20 /var/log/syslog

	View system logs.

systemctl status cron

	Check service status.

🔹 System Info Script

#!/bin/bash

echo "User: $(whoami)"

echo "Date: $(date)"

df -h

free -h


Purpose:

Displays user, date, disk, and memory info

Common DevOps troubleshooting task

✅ Outcome

Comfortable with the Linux terminal

Understand files, permissions, processes
Created the first Bash script
