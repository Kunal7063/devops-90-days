🔹 1️⃣ What is a Shell Script?

A shell script is a file that contains multiple Linux commands executed together.

Instead of typing commands manually every time, we automate them using scripts.

🔹 2️⃣ Basic Script Structure

Example:

    #!/bin/bash
    
    echo "Hello World"
Explanation:

#!/bin/bash → Shebang (tells system to use bash)

echo → Prints text to the terminal

Make executable:

    chmod +x script.sh
Run:

./script.sh

🔹 3️⃣ Variables in Bash

    name="Kunal"
    age=23

    echo "My name is $name"
    echo "I am $age years old"
Rules:

No space around =

Use $ to access variable value

🔹 4️⃣ Taking User Input

    echo "Enter your name:"
    read username
    echo "Hello $username"
read allows interactive input.

🔹 5️⃣ If-Else Conditions

    if [ $num -gt 10 ]
    then
      echo "Greater than 10"
    else
      echo "10 or less"
    fi
Comparison Operators:

Operator	Meaning

    -gt	Greater than
    -lt	Less than
    -eq	Equal
    -ne	Not equal
Important: Space inside [ ] is mandatory.

🔹 6️⃣ For Loop Example

    for i in 1 2 3 4 5
    do
      echo "Number: $i"
    done
Used for repeating tasks.

🔹 7️⃣ Mini Project – System Information Script

Created file:

    system_info.sh

Script Content:

    #!/bin/bash
    
    echo "Current User:"
    whoami
    
    echo "Current Date:"
    date
    
    echo "System Uptime:"
    uptime
    
    echo "Memory Usage:"
    free -h
    
    echo "Disk Usage:"
    df -h

Purpose:

Automates system monitoring commands in one script.

💡 Real-World DevOps Usage

Shell scripts are used to:

Automate backups

Monitor system resources

Deploy applications

Restart failed services

Clean log files

🧠 Interview Questions

What is a shebang?

How do you make a script executable?

What is the difference between $var and var?

How do you take input in Bash?

How do you check memory usage using a script?
