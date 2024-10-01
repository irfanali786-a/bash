#!/bin/bash
# Set your threshold % here
THRESHOLD=75

# Set your email here
EMAIL='your-email@example.com'

# Get the disk usage
USAGE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')

# Check if the disk usage is more than the threshold
if [ $USAGE -gt $THRESHOLD ]; then
    # Get the object sizes
    du -sh /path/to/your/directory/* > objects.txt

    # Send an email
    mail -s 'Disk Space Alert' $EMAIL < objects.txt

    # Clean up
    rm -f objects.txt