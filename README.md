# Bash Scripting for Security Operations

This repository contains a collection of Bash scripts developed for network security tasks, automation, and penetration testing labs. The primary goal is to streamline reconnaissance and administrative tasks within a Linux environment (Kali Linux).

## Repository Structure

* `scan.sh`: A host discovery tool using ICMP echo requests to identify active devices in a specific subnet.
* More scripts will be documented as they are added.

## Installation and Setup

1. Clone the repository:
   git clone https://github.com/GuilhermeDolzany/bashscript.git

2. Navigate to the directory:
   cd bashscript

3. Grant execution permissions:
   chmod +x *.sh

## Usage

### Host Discovery (scan.sh)
This script identifies active hosts by iterating through a defined IP range.

**Syntax:**
./scan.sh <network_prefix>

**Example:**
./scan.sh 192.168.1
This will scan the range 192.168.1.1 to 192.168.1.254.

## Technical Requirements
* Linux-based operating system (Kali Linux recommended).
* Standard GNU utilities (grep, ping, cut).
* Root or sudo privileges for certain network operations.

## Security Disclaimer
These tools are intended for authorized security auditing and educational purposes only. Unauthorized use against systems without prior written consent is illegal. The author is not responsible for any misuse or damage caused by these scripts.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
