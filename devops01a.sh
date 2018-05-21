#!/bin/sh

echo "==========Volumes=================================="
df -h

echo "==========Number of Cpu/Cores======================="
#sysctl -n hw.logicalcpu hw.physicalcpu machdep.cpu.brand_string
system_profiler SPHardwareDataType | grep 'Processor Name:\|Total Number of Cores'

echo "==========Amount of RAM============================="
#sysctl -h hw.memsize
system_profiler SPHardwareDataType | grep 'Memory'

echo "========== MAC Address and IP Addresss=============="
ifconfig en1 | grep -w 'ether\|inet'
