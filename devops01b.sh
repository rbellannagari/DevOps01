#!/bin/sh
# This is checking cronjob

if [ $1 == 'volumes' ]
then
  echo "volumes""
  df -h
elif [ $2 == 'cpu' ]
then
  echo "cpu"
  system_profiler SPHardwareDataType | grep 'Processor Name:\|Total Number of Cores'
elif [ $3 == 'ram' ]
then
  echo "ram"
  system_profiler SPHardwareDataType | grep 'Memory'
elif [ $4 == 'network' ]
then
  echo "Network"
  ifconfig en1 | grep -w 'ether\|inet'
elif [ $5 == 'all' ]
then
  echo "all"
  df -h
  system_profiler SPHardwareDataType | grep 'Processor Name:\|Total Number of Cores'
  system_profiler SPHardwareDataType | grep 'Memory'
  ifconfig en1 | grep -w 'ether\|inet'
else
  echo "some thing wrong"

fi

