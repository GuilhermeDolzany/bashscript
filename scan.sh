#!/bin/bash

# Network Reconnaissance Tool - Host Discovery
# This script identifies active hosts on a given network prefix.

if [ -z "$1" ]; then
    echo "Usage: ./scan.sh <network_prefix>"
    echo "Example: ./scan.sh 192.168.1"
    exit 1
fi

echo "Scanning network: $1.0/24..."

for i in {0..254}; do
    # -c 1: send only 1 packet
    # 2>/dev/null: ignore time/sync errors
    ping -c 1 -W 1 "$1.$i" 2>/dev/null | grep "64 bytes" | cut -d " " -f 4 | sed "s/.$//" &
done

wait
echo "Scan complete."
