#!/bin/bash

if [ "$1" == "" ]
then 
echo "Syntax: ./ipsweep.sh 192.168.1"

else
	for ipp in `seq 1 10`; do 
		for ip in `seq 1 254`; do 
		ping -c 1 $1.$ipp.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> result.txt &
		done
done
fi
