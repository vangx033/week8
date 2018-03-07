#!/bin/bash
#Xee Ho Vang
#Week 8 script

echo "Hello Class"

mkdir dir1

cd dir1

touch file1.txt file2.txt
echo "This is testing" > file1.txt

cat file1.txt

rm file2.txt

chmod 755 file1.txt

ls -l

ls /dev

cd /dev
pwd

echo Hi there > /dev/null

# Showing the path for the device sda
udevadm info --query=all --name=/dev/sda

udevadm monitor 

# View current mounted filesystem status
mount | less

sudo dmesg | less

# View Universally Unique Identify (UUID)
sudo blkid

# View the size and utilization of the current mounted filesystems
df

free


# Create a hardlink point dir_2/file5 to dir_1/file2
sudo mkdir dir_1
sudo mkdir dir_2

sudo echo a > dir_1/file_1.txt
sudo echo b > dir_1/file_2.txt
sudo echo b > dir_1/file_3.txt
sudo echo d > dir_2/file_5.txt
sudo ln dir_1/file_2.txt dir_2/file_5.txt

# To verify inode
ls -i

# View kernel's boot and messages
sudo dmesg | less

# Go back to home directory and view kernel's parameters
cd ..
cat /proc/cdmline

# Display current runlevel and when was it established
who -r

# Display current configuration search path, init information and jobs
systemctl -p UnitPath show
systemctl list-units
systemctl list-jobs

# Display an overview of the system
init ctl list
