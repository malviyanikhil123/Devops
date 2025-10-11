#!/bin/bash
# ===============================================================
# Linux Commands with Examples
# Author: Nikhil Malviya
# Description: Demonstrates essential Linux commands with examples
# ===============================================================

echo "========= Basic File and Directory Commands ========="

echo -e "\n ls : Lists directory contents"
ls

echo -e "\n cd : Changes current directory"
echo "Example: cd /home"

echo -e "\n pwd : Prints current working directory"
pwd

echo -e "\n mkdir : Creates a new directory"
echo "Example: mkdir test_dir"

echo -e "\n rm : Removes files or directories"
echo "Example: rm -rf old_dir"

echo -e "\n touch : Creates or updates a file timestamp"
touch demo.txt

echo -e "\n cp : Copies files or directories"
echo "Example: cp demo.txt copy.txt"

echo -e "\n mv : Moves or renames files or directories"
echo "Example: mv copy.txt renamed.txt"

echo -e "\n ln : Creates hard or soft links"
echo "Example: ln demo.txt hardlink.txt"
echo "Example: ln -s demo.txt softlink.txt"


echo "========= File Viewing and Manipulation Commands ========="

echo -e "\n cat : Displays file content"
cat demo.txt

echo -e "\n1 head : Shows first few lines of a file"
head demo.txt

echo -e "\n1 less : Scrolls through a file"
echo "Example: less demo.txt"

echo -e "\n1 wc : Counts lines, words, and characters"
wc demo.txt

echo -e "\n1 cut : Extracts sections from lines"
echo "Example: cut -d':' -f1 /etc/passwd"

echo -e "\n1 sort : Sorts lines in a file"
sort demo.txt

echo -e "\n1 tee : Displays and writes output to file"
echo "Hello Linux" | tee output.txt

echo -e "\n1 diff : Compares two files"
echo "Example: diff demo.txt output.txt"

echo -e "\n1 vi : Opens a text editor"
echo "Usage: vi demo.txt"


echo "========= Process Management and System Info ========="

echo -e "\n1 ssh : Secure remote login"
echo "Example: ssh user@192.168.1.10"

echo -e "\n2 df : Displays disk space usage"
df -h

echo -e "\n2 du : Shows directory size"
du -sh .

echo -e "\n2 ps : Lists running processes"
ps aux | head -5

echo -e "\n2 top : Displays active processes dynamically"
echo "Example: top (Press q to quit)"

echo -e "\n2 kill : Terminates a process by PID"
echo "Example: kill -9 1234"

echo -e "\n2 nohup : Runs a command immune to hangups"
echo "Example: nohup ping google.com &"

echo -e "\n2 vmstat : Displays system performance stats"
vmstat 1 3

echo -e "\n2 free : Shows memory usage"
free -h


echo "========= Hard Link vs Soft Link Concepts ========="

echo -e "\n2 Hard Link:"
echo "Another name for the same file data; data persists until all links are deleted."

echo -e "\n2 Soft Link:"
echo "A symbolic shortcut pointing to another file; breaks if the target is removed."


echo "========= Example Usage ========="

echo -e "\n3 mkdir test_dir"
mkdir -p test_dir

echo -e "\n3 cd test_dir"
cd test_dir

echo -e "\n3 touch file1.txt"
touch file1.txt

echo -e "\n3 echo 'Hello Linux' > file1.txt"
echo 'Hello Linux' > file1.txt

echo -e "\n3 cat file1.txt"
cat file1.txt

echo -e "\n3 sort file1.txt"
sort file1.txt

echo -e "\n3 cp file1.txt copy.txt"
cp file1.txt copy.txt

echo -e "\n3 diff file1.txt copy.txt"
diff file1.txt copy.txt

echo -e "\n3 vi file1.txt (Manual)"
echo "Use vi file1.txt to edit the file manually in terminal."

"=========================================================================="

echo "========= System Information Commands ========="

echo -e "\n uname -a : Print all system information"
uname -a

echo -e "\n uptime : Show how long the system has been running"
uptime

echo -e "\n date : Display the current system date and time"
date


echo "========= User and Session Commands ========="

echo -e "\n who : List all logged-in users"
who

echo -e "\n whoami : Show the current user"
whoami

echo -e "\n which bash : Locate the path of a command"
which bash

echo -e "\n sudo example (requires root privileges)"
echo "Try: sudo ls /root (Shows root directory if permitted)"

echo -e "\n su example (switch to another user)"
echo "Usage: su - username"


echo "========= Power Management Commands ========="

echo -e "\n shutdown example (commented for safety)"
echo "# sudo shutdown now  → Immediately shut down"
echo "# sudo shutdown +10  → Shut down after 10 minutes"

echo -e "\n reboot example (commented for safety)"
echo "# sudo reboot → Restart the system"


echo "========= Package and System Administration ========="

echo -e "\n1 apt update : Refresh package list"
sudo apt update -y

echo -e "\n1 apt install example : Install curl"
sudo apt install -y curl

echo -e "\n1 useradd example (creates new user)"
echo "# sudo useradd devuser"

echo -e "\n1 userdel example (delete user)"
echo "# sudo userdel -r devuser"

echo -e "\n1 passwd example (change password)"
echo "# passwd username"

echo -e "\n1 groupadd example (create group)"
echo "# sudo groupadd developers"

echo -e "\n1 groupdel example (delete group)"
echo "# sudo groupdel developers"

echo -e "\n1/ gpasswd example (add user to group)"
echo "# sudo gpasswd -a nikhil developers"

echo -e "\n1 umask example : Show default permissions"
umask


echo "========= File Permissions and Ownership ========="

echo -e "\n2 ls -l : Show detailed file list"
ls -l

echo -e "\n2 chmod example : Add execute permission"
echo "# chmod +x script.sh"

echo -e "\n2 chown example : Change file owner"
echo "# sudo chown nikhil:nikhil file.txt"

echo -e "\n2 chgrp example : Change group ownership"
echo "# sudo chgrp developers file.txt"


echo "========= Compression and Archiving ========="

echo -e "\n2 zip example"
echo "zip -r backup.zip /path/to/folder"

echo -e "\n2 unzip example"
echo "unzip backup.zip -d /destination"

echo -e "\n2 tar example (archive)"
echo "tar -cvf backup.tar /path/to/files"

echo -e "\n2 tar.gz example (compressed)"
echo "tar -czvf backup.tar.gz /path/to/folder"
echo "tar -xzvf backup.tar.gz"


echo "========= Network and File Transfer ========="

echo -e "\n2 scp example : Secure copy between systems"
echo "scp file.txt user@192.168.1.10:/home/user/"

echo -e "\n2 rsync example : Sync files efficiently"
echo "rsync -avz /local/path user@server:/remote/path"

echo -e "\n All commands demonstrated successfully!"
