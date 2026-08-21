#!/bin/bash

echo "===== UNIX COMMANDS ====="

echo
echo "1. Current Date and Time"
date

echo
echo "2. Current User"
whoami

echo
echo "3. Hostname"
hostname

echo
echo "4. Current Directory"
pwd

echo
echo "5. Logged-in Users"
who

echo
echo "6. System Information"
uname -a

echo
echo "7. Operating System Details"
cat /etc/os-release

echo
echo "8. CPU Information"
lscpu

echo
echo "9. Disk Usage"
df -h

echo
echo "10. Directory Contents"
ls
