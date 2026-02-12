📘 Day 5 README.md (Copy This)

Create folder:

    mkdir day-05-users-permissions
Inside it, create README.md and paste this:

📅 Day 05 – Linux Users, Groups & File Permissions

🎯 Objective

Understand how Linux controls access using users, groups, and file permissions.

This is critical for DevOps engineers when managing servers and applications.

🔹 1️⃣ Checking Current User

    whoami
    id
whoami → Shows current logged-in user

id → Displays UID, GID, and group membership

🔹 2️⃣ Viewing System Users & Groups

    cat /etc/passwd | head
    cat /etc/group | head
Each line represents a user or group.

🔹 3️⃣ Creating a Group

    sudo groupadd testgroup
Verify:
      
    cat /etc/group | grep testgroup

🔹 4️⃣ Creating a User
      
    sudo useradd -m -g testgroup testuser
    sudo passwd testuser
Switch user:

    su - testuser

🔹 5️⃣ File Ownership

Create file:

    touch secure.txt
Check ownership:

    ls -l
Change ownership:

    sudo chown testuser:testgroup secure.txt

🔹 6️⃣ Understanding Permissions

Example:

    -rw-r--r--
Breakdown:

    Owner
    Group
    Others
🔢 Numeric Permission System
Permission	Value
      
    r	4
    w	2
    x	1
Examples:

Number	Meaning

    7	rwx
    6	rw-
    5	r-x
    4	r--
🔹 Setting Secure Permission

    chmod 640 secure.txt
Meaning:

    Owner → read + write
    Group → read
    Others → no access

Output:

    -rw-r----- 1 testuser testgroup secure.txt
💡 Real-World Scenario

If a file containing database credentials has permission 644, other users on the server can read it.

Secure configuration should use 640 or stricter.

🧠 Interview Questions

What is the difference between 640 and 644?

Let’s make it sharp and interview-ready:

    640
    rw-r-----
Owner → read + write

Group → read

Others → no access

    644
    rw-r--r--
Owner → read + write

Group → read

Others → read

So the only difference is:

    In 644, "others" can read the file.
    In 640, "others" have zero access.

What does chmod 755 mean?

What is the difference between useradd -g and -G?

How do you change file ownership in Linux?
