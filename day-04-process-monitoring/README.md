📅 Day 04 – Linux Process Management & System Monitoring

🎯 Objective

Understand how Linux handles processes and how to monitor system resources like CPU and memory.

This is a core DevOps skill used in production troubleshooting.

🔹 1️⃣ Running a Process in Foreground

Command:

    sleep 200

Explanation:

Runs for 200 seconds

Blocks the terminal

You cannot type anything until it finishes

This is called a foreground process.

🔹 2️⃣ Running a Process in Background

Command:

    sleep 200 &

Explanation:

& sends process to background

Terminal becomes free immediately

System returns a Job ID and PID

Example Output:

[1] 852


Where:

1 = Job ID

852 = Process ID (PID)

🔹 3️⃣ Viewing Running Processes

Using ps

    ps -aux | grep sleep


Explanation:

ps -aux → shows all running processes

grep sleep → filters sleep process

🔹 4️⃣ Killing a Process

Normal Termination (Graceful)

    kill <PID>


Example:

kill 852


Sends SIGTERM (15)

Allows cleanup before stopping

Force Kill

    kill -9 <PID>


Sends SIGKILL (9)

Immediately stops process

No cleanup

Use only when process is stuck.

🔹 5️⃣ Real-Time Monitoring with top
Command:

    top

Shows:

CPU usage

Memory usage

Running processes

Load average

To exit:

Press q

🔹 6️⃣ Checking Memory Usage

Command:

    free -h

Explanation:

-h = human readable

Shows RAM and swap usage in MB/GB

Example Output:

Mem: 3.8Gi total, 409Mi used, 3.4Gi free

🧠 Key Concepts Learned

Concept	Meaning

Foreground Process	Blocks terminal

Background Process	Runs without blocking terminal

PID	Process ID

SIGTERM	Graceful termination

SIGKILL	Force termination

top	Real-time system monitor

free -h	Memory usage (human readable)

💡 Real-World Scenario

If server CPU becomes 100%:

Run top

Identify high CPU process

Get PID

Inspect using:

ps -fp <PID>


Decide to restart or kill

This is how DevOps engineers troubleshoot live systems.

📌 Interview Questions

What is the difference between foreground and background process?

Foreground process

Runs attached to terminal

Blocks terminal until it finishes

Example: sleep 200

Background process

Runs independently of terminal

You get terminal control back immediately

Example: sleep 200 &

Real world example:

When deploying an app, you don’t want it blocking the terminal. So services run in background.

What is difference between kill and kill -9?

kill <PID>

Sends SIGTERM (15)

Politely asks process to stop

Process can clean up resources before exiting

kill -9 <PID>

Sends SIGKILL (9)

Force kill

Cannot be ignored

No cleanup happens

Interview tip:

Always try normal kill first.

Use kill -9 only when process is stuck.

How do you check memory usage in Linux?

free

Shows memory in bytes

Hard to read

free -h

Human readable format

Shows in MB / GB

In production, clarity matters. So we use -h.

What is load average in Linux?

Load average shows how busy your system is.

When you run:

top


You see something like:

load average: 0.00, 0.02, 0.00


These three numbers mean:

1 minute average,
5 minute average,
15 minute average


So Linux tells you:

How many processes were waiting for CPU

Over the last 1, 5, and 15 minutes

🧠 What Does the Number Mean?

Load average represents:

Number of processes either running or waiting for CPU

Now the important part 👇

You must compare it with CPU cores.

Example:

If your system has:

1 CPU core → Load 1.0 means fully busy

2 CPU cores → Load 2.0 means fully busy

4 CPU cores → Load 4.0 means fully busy

🔍 Simple Rule
Load	Meaning
Less than CPU cores	System is healthy
Equal to CPU cores	Fully utilized
Greater than CPU cores	System overloaded
💡 Example

If you have 2 CPU cores and load average is:

3.5


That means:

2 processes running

1.5 processes waiting

System is overloaded

🔥 Real Production Scenario

If a client says:

"Server is slow"

You will:

Run top

Check load average

Compare with number of cores:

nproc


If load is high → investigate high CPU process

🎯 Why This Question Is Asked in Interviews

Because it tests:

Do you understand system performance?

Or do you only know commands?

Now tell me:

If your system has 2 cores and load average is:

0.50, 0.40, 0.30


Is the system overloaded or healthy? And why?
