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

