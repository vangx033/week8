#!/bin/bash
#Xee Ho Vang
#Week 11 script - Late summit
# Adding the command "sleep with 5 seconds delay so everyone can follow up with my script
echo "Hello Class"

# Create directory and create files inside it
mkdir dir1

cd dir1

# show where am I 
pwd 

sleep 5

touch file1.txt file2.txt
sleep 5

ls 

sleep 5

echo "This is testing" > file1.txt

cat file1.txt

sleep 5

rm file2.txt

sleep 5

ls -l

sleep 5

chmod 755 file1.txt

ls -l

sleep 5

ls /dev

sleep 5

cd /dev
pwd

sleep 5

echo Hi there > /dev/null

# Showing the path for the device sda
udevadm info --query=all --name=/dev/sda

sleep 5

# Monitoring udev events
udevadm monitor udev 

sleep 5

# View current mounted filesystem status
mount | less

sleep 5

sudo dmesg | less

sleep 5

# View Universally Unique Identify (UUID)
sudo blkid

sleep 5

# View the size and utilization of the current mounted filesystems
df

sleep 5

free

sleep 5

# Go back to home directory
cd ~
sleep 10

# Create a hardlink point dir_2/file5 to dir_1/file2
mkdir dir_1
mkdir dir_2

ls 

sleep 5
echo a > dir_1/file_1.txt
echo b > dir_1/file_2.txt
echo b > dir_1/file_3.txt
echo d > dir_2/file_5.txt
ln dir_1/file_2.txt dir_2/file_5.txt

sleep 5

# To verify inode
ls -i

sleep 5

# View kernel's boot and messages
sudo dmesg | less

sleep 5

# Go back to home directory and view kernel's parameters
cd ..
cat /proc/cdmline

sleep 5

# Display current runlevel and when was it established
who -r

sleep 5

# Display current configuration search path, init information and jobs
systemctl -p UnitPath show
systemctl list-units
systemctl list-jobs

sleep 5

# Display an overview of the system
init ctl list

sleep 5

# Testing the system logger
logger -p daemon.info Hey this is testing

sleep 5

# Showing terminals and display a login prompt
ps ao args | grep getty

sleep 5

echo "Thanks for looking"
