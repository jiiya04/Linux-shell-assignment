#!/bin/bash
# This script checks CPU and memory usage and saves it to a file
# Author: hpjiyagupta

# create a folder to store logs
mkdir -p ~/monitor_logs

# where the log will be saved
logfile=~/monitor_logs/usage.txt

echo "Checking system usage..." >> $logfile
date >> $logfile

# CPU usage (using top)
top -bn1 | grep "Cpu(s)" >> $logfile

# Memory usage (using free)
free -h >> $logfile

echo "Saved in $logfile"
