📌 Day 2: Linux Users, Permissions & Git Fundamentals

Objective

Understand Linux user management and Git workflows used in teams.

🔹 Linux Users & Groups

whoami

id

    Shows current user and group info.

cat /etc/passwd | head

cat /etc/group | head

    Lists users and groups.

🔹 Create User & Group

sudo groupadd devops

sudo useradd -m -g devops devuser

sudo passwd devuser

    Creates a user and assigns a group.

su - devuser

exit

    Switch between users.

🔹 Ownership & Permissions

sudo chown devuser:devops secret.txt

chmod 640 secret.txt


    Controls who can read, write, or execute files.

🔹 Git Basics

Clone Repository

git clone https://github.com/username/devops-90-days.git

Check Status

git status

git branch

🔹 Branching Workflow

git checkout -b day-2-practice

    Creates and switches to a new branch.

git add .

git commit -m "Day 2: Git branch practice"

🔹 Merge Branch

git checkout main

git merge day-2-practice

git push origin main

    Used in real team collaboration.

✅ Outcome

Understand Linux users & permissions

Work with Git branches

Merge and push changes confidently
