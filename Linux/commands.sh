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

"=========================================================================="

echo "========= 🧾 AWK Commands ========="

echo -e "\n1️⃣ awk '{print}' test.log : Print all contents of the file"
awk '{print}' test.log

echo -e "\n2️⃣ awk '{print \$1}' test.log : Print only the first column"
awk '{print $1}' test.log

echo -e "\n3️⃣ awk '{print \$1, \$2}' test.log : Print first and second columns"
awk '{print $1, $2}' test.log

echo -e "\n4️⃣ awk '{print \$1, \$2, \$4}' test.log : Print first, second, and fourth columns"
awk '{print $1, $2, $4}' test.log

echo -e "\n5️⃣ awk '{print \$1, \$2, \$3, \$5}' test.log : Print selected columns"
awk '{print $1, $2, $3, $5}' test.log

echo -e "\n6️⃣ awk '/INFO/ {print \$1, \$2, \$3, \$5}' test.log : Print selected columns only for lines containing INFO"
awk '/INFO/ {print $1, $2, $3, $5}' test.log

echo -e "\n7️⃣ awk '/INFO/ {print \$1, \$2, \$3, \$5}' test.log > only-info.log : Save only INFO lines to a file"
awk '/INFO/ {print $1, $2, $3, $5}' test.log > only-info.log

echo -e "\n8️⃣ awk '/INFO/ {count++} END {print count}' only-info.log : Count number of INFO lines"
awk '/INFO/ {count++} END {print count}' only-info.log

echo -e "\n9️⃣ awk '\$2 >= \"08:53:00\" && \$2 <= \"08:54:00\" {print \$2, \$3, \$4}' test.log : Filter by time range"
awk '$2 >= "08:53:00" && $2 <= "08:54:00" {print $2, $3, $4}' test.log


echo "========= ✂️ SED Commands ========="

echo -e "\n🔟 sed '/INFO/p' test.log : Print lines containing INFO (duplicates output)"
sed '/INFO/p' test.log

echo -e "\n11️⃣ sed -n '/INFO/p' test.log : Print only lines with INFO"
sed -n '/INFO/p' test.log

echo -e "\n12️⃣ sed 's/INFO/LOG/g' test.log : Replace all 'INFO' with 'LOG'"
sed 's/INFO/LOG/g' test.log

echo -e "\n13️⃣ sed -n -e '/INFO/p' test.log : Same as above with explicit -e option"
sed -n -e '/INFO/p' test.log

echo -e "\n14️⃣ sed -n -e '/INFO/=' test.log : Print line numbers where INFO appears"
sed -n -e '/INFO/=' test.log

echo -e "\n15️⃣ sed -n -e '/INFO/=' -e '/INFO/p' test.log : Print line numbers and matching lines"
sed -n -e '/INFO/=' -e '/INFO/p' test.log


echo "========= 🔍 GREP Commands ========="

echo -e "\n16️⃣ grep test.log : (Incorrect usage — should specify a pattern) Example shown below"
echo "✅ Correct Usage: grep INFO test.log"

echo -e "\n17️⃣ grep INFO test.log : Find all lines containing INFO"
grep INFO test.log

echo -e "\n18️⃣ grep -i info test.log : Case-insensitive search for 'info'"
grep -i info test.log

echo -e "\n19️⃣ grep -i -c info test.log : Count lines containing 'info' (case-insensitive)"
grep -i -c info test.log

echo -e "\n20️⃣ ps aux | grep ubuntu : Search for running processes related to 'ubuntu'"
ps aux | grep ubuntu

"=========================================================================="

echo "========= 💽 DISK & PARTITION MANAGEMENT ========="

echo -e "\n1️⃣ lsblk : List block devices (disks, partitions, LVM)"
lsblk

echo -e "\n2️⃣ sudo fdisk /dev/sda : Manage partitions (MBR - interactive)"
echo "👉 Example: sudo fdisk /dev/sdb"

echo -e "\n3️⃣ sudo parted /dev/sdb : Manage partitions (supports GPT)"
sudo parted -l

echo -e "\n4️⃣ df -h : Display disk space usage in human-readable format"
df -h

echo -e "\n5️⃣ du -sh /var/log : Show total size of /var/log directory"
du -sh /var/log

echo -e "\n6️⃣ sudo blkid : Display UUIDs and filesystem info for block devices"
sudo blkid

echo -e "\n7️⃣ sudo mount /dev/sdb1 /mnt/data : Mount filesystem"
echo -e "8️⃣ sudo umount /mnt/data : Unmount filesystem"

echo -e "\n9️⃣ ls /dev/sd* : List all storage devices"
ls /dev/sd*

echo -e "\n🔟 sudo parted -l : Show detailed partition info"
sudo parted -l


echo "========= 🧩 FILE SYSTEM MANAGEMENT ========="

echo -e "\n11️⃣ sudo mkfs.ext4 /dev/sdb1 : Create ext4 filesystem on device"
echo -e "\n12️⃣ sudo fsck /dev/sda1 : Check and repair filesystem errors"
echo -e "\n13️⃣ sudo tune2fs -l /dev/sda1 : Display filesystem parameters"
echo -e "\n14️⃣ sudo resize2fs /dev/sda1 : Resize ext filesystem"
echo -e "\n15️⃣ sudo e2label /dev/sda1 DATA_DISK : Set/change filesystem label"


echo "========= ⚙️ LVM (LOGICAL VOLUME MANAGER) ========="

echo -e "\n16️⃣ sudo pvcreate /dev/sdb1 : Create Physical Volume (PV)"
echo -e "\n17️⃣ sudo vgcreate vg_data /dev/sdb1 : Create Volume Group (VG)"
echo -e "\n18️⃣ sudo lvcreate -n lv_backup -L 20G vg_data : Create Logical Volume (LV)"

echo -e "\n19️⃣ sudo pvdisplay : Display Physical Volume details"
sudo pvdisplay | head -n 10

echo -e "\n20️⃣ sudo vgdisplay : Display Volume Group details"
sudo vgdisplay | head -n 10

echo -e "\n21️⃣ sudo lvdisplay : Display Logical Volume details"
sudo lvdisplay | head -n 10

echo -e "\n22️⃣ sudo lvextend -L +10G /dev/vg_data/lv_backup : Extend LV by 10GB"
echo -e "\n23️⃣ sudo lvreduce -L 15G /dev/vg_data/lv_backup : Reduce LV size to 15GB (⚠️ risk of data loss)"

echo -e "\n24️⃣ sudo vgextend vg_data /dev/sdc1 : Add disk to Volume Group"
echo -e "\n25️⃣ sudo vgreduce vg_data /dev/sdc1 : Remove disk from Volume Group"

echo -e "\n26️⃣ sudo lvremove /dev/vg_data/lv_backup : Remove Logical Volume"
echo -e "\n27️⃣ sudo vgremove vg_data : Remove Volume Group"
echo -e "\n28️⃣ sudo pvremove /dev/sdb1 : Remove Physical Volume metadata"

echo -e "\n29️⃣ sudo pvs : Summary of all Physical Volumes"
sudo pvs

echo -e "\n30️⃣ sudo vgs : Summary of all Volume Groups"
sudo vgs

echo -e "\n31️⃣ sudo lvs : Summary of all Logical Volumes"
sudo lvs


echo "========= 🪣 MOUNT & PERSISTENT STORAGE ========="

echo -e "\n32️⃣ sudo mount -a : Mount all filesystems from /etc/fstab"
sudo mount -a

echo -e "\n33️⃣ cat /etc/fstab : View persistent mount configurations"
cat /etc/fstab | head -n 10

echo -e "\n34️⃣ lsblk -f : List filesystems with mount points"
lsblk -f

echo -e "\n35️⃣ ls -lh /dev/disk/by-uuid/ : Show disks by UUID"
ls -lh /dev/disk/by-uuid/


echo "========= 📊 SYSTEM & STORAGE INFORMATION ========="

echo -e "\n36️⃣ df -Th : Show filesystem types with disk usage"
df -Th

echo -e "\n37️⃣ sudo parted -l : Check all partitions on all disks"
sudo parted -l | head -n 10

echo -e "\n38️⃣ du -h /home : Display disk usage of /home directory"
du -h /home | head -n 10

echo -e "\n39️⃣ mount | column -t : Show mounted filesystems neatly"
mount | column -t | head -n 10

echo -e "\n40️⃣ iostat : Display disk I/O statistics"
iostat | head -n 10

echo -e "\n41️⃣ cat /proc/partitions : Display kernel partition table"
cat /proc/partitions

echo -e "\n42️⃣ sudo hdparm -I /dev/sda : Show hardware info for disk"
sudo hdparm -I /dev/sda | head -n 15

"=========================================================================="
