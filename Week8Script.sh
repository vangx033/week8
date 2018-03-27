#!/bin/bash
#Xee Ho Vang
#Week 11 script - Late summit

echo "Hello Class"

# Create directory and create files inside it
mkdir dir1

cd dir1

touch file1.txt file2.txt

sleep 1

echo "This is testing" > file1.txt

cat file1.txt

sleep 1

rm file2.txt

ls -l

sleep 1

chmod 755 file1.txt

ls -l

sleep 1

ls /dev

cd /dev
pwd

echo Hi there > /dev/null

# Showing the path for the device sda
udevadm info --query=all --name=/dev/sda

sleep 1

udevadm monitor 

sleep 1

# View current mounted filesystem status
mount | less

sleep 1

sudo dmesg | less

sleep 1

# View Universally Unique Identify (UUID)
sudo blkid

sleep 1

# View the size and utilization of the current mounted filesystems
df

sleep 1

free

sleep 1

# Create a hardlink point dir_2/file5 to dir_1/file2
mkdir dir_1
mkdir dir_2

echo a > dir_1/file_1.txt
echo b > dir_1/file_2.txt
echo b > dir_1/file_3.txt
echo d > dir_2/file_5.txt
ln dir_1/file_2.txt dir_2/file_5.txt

sleep 1

# To verify inode
ls -i

sleep 1

# View kernel's boot and messages
sudo dmesg | less

sleep 1

# Go back to home directory and view kernel's parameters
cd ..
cat /proc/cdmline

sleep 1

# Display current runlevel and when was it established
who -r

sleep 1

# Display current configuration search path, init information and jobs
systemctl -p UnitPath show
systemctl list-units
systemctl list-jobs

sleep 1

# Display an overview of the system
init ctl list

sleep 1

# Testing the system logger
logger -p daemon.info Hey this is testing

sleep 1

# Showing terminals and display a login prompt
ps ao args | grep getty

sleep 1

echo "Thanks for looking"
