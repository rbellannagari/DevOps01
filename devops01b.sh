#!/bin/sh
# This is checking cronjob

func01(){

if [ -n "$1" ]

echo "volumes""
df -h

if [ -n "$2" ]
echo "Cpu"
system_profiler SPHardwareDataType | grep 'Processor Name:\|Total Number of Cores'

if [ -n "$3" ]
echo "RAM"
system_profiler SPHardwareDataType | grep 'Memory'

if [ -n "$4" ]
echo "Network"
ifconfig en1 | grep -w 'ether\|inet'

if [ -n "$@" ]

fi
fi
fi
fi
fi

}

