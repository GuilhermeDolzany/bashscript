#!/bin/bash

# Network Reconnaissance Tool - Host Discovery
# This script identifies active hosts on a given network prefix.

# Check for argument (network prefix)
if [ -z "$1" ]; then
    echo "Usage: ./scan.sh <network_prefix>"
    echo "Example: ./scan.sh 192.168.1"
    exit 1
fi

# Inform the user that the scan is starting
echo "Scanning network: $1.0/24..."

# Iterate through all possible hosts (0-254)
for i in {0..254}; do
    # -c 1: send only 1 packet
    # -W 1: wait only 1 second for response
    # 2>/dev/null: ignore time/sync errors
    ping -c 1 -W 1 "$1.$i" 2>/dev/null | grep "64 bytes" | cut -d " " -f 4 | sed "s/.$//" &
done

# Wait for all background processes to finish before exiting
wait
echo "Scan complete."
