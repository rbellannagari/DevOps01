#!/bin/sh
# This is checking cronjob

case "$*" in
     volumes)
          echo "volumes"
          df -h
          ;;
     cpu)
          echo "cpu"
          system_profiler SPHardwareDataType | grep 'Processor Name:\|Total Number of Cores'
          ;;
     ram)
          echo "ram"
          system_profiler SPHardwareDataType | grep 'Memory'
          ;;
     network)
          echo "Network"
          ifconfig en1 | grep -w 'ether\|inet'
          ;;
     all)
          echo "all"
          df -h
          system_profiler SPHardwareDataType | grep 'Processor Name:\|Total Number of Cores'
          system_profiler SPHardwareDataType | grep 'Memory'
          ifconfig en1 | grep -w 'ether\|inet'
          ;;
     *)
          echo "Provide Options like devops01b.sh volumes || devops01b.sh cp || devops01b.sh cpu || devops01b.sh network || devops01b.sh all"
          ;;
esac
