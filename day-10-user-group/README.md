📅 Day 10 – Users & Groups

🔹 User Management

Create user:

    sudo useradd -m username
Delete user:

    sudo userdel -r username
Check user:

    id username
🔹 Groups

Create group:

    sudo groupadd groupname
Add user to group:

    sudo usermod -aG groupname username
🔹 Sudo Access

Add to sudo:

    sudo usermod -aG sudo username
🔹 Important Files

/etc/passwd

/etc/group

/etc/shadow
