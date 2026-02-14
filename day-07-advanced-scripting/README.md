📅 Day 07 – Advanced Bash Scripting

🎯 Objective

Understand script arguments, exit codes, and basic monitoring automation.

🔹 1️⃣ Script Arguments

    echo $1
    echo $2
    echo $#
    echo $@
Special Variables

Variable	Meaning

    $1	First argument
    $2	Second argument
    $#	Total number of arguments
    $@	All arguments
🔹 2️⃣ Exit Codes

Check command status:

    echo $?
    0 → Success
    Non-zero → Failure
Example:

    ls
    echo $?
    ls notfound
    echo $?

🔹 3️⃣ Checking File Existence

    if [ -f "$1" ]
    then
      echo "File exists"
    else
      echo "File not found"
    fi

🔹 4️⃣ Monitoring Script (Memory Check)

    #!/bin/bash
    
    usage=$(free | awk '/Mem/ {print $3/$2 * 100.0}')
    
    printf "Current Memory Usage: %.2f%%\n" $usage
    
    if (( $(echo "$usage > 70" | bc -l) ))
    then
      echo "WARNING: High Memory Usage"
    else
      echo "Status: Normal"
    fi

💡 Real DevOps Usage

CI/CD pipelines depend on exit codes

Monitoring tools depend on script return values

Automation scripts must handle failure correctly
