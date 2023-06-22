#!/bin/bash

echo "Flash Checker v0.1 beta"
echo "copyright - 2023 - Erik (AKPR)"

if [ ! $1 ]; then
echo "usage: ./fc <mounted drive path>"
else
master_class
fi

master_class {
KBreportedSize=$(df -k $1 | tail -1 | awk '{print $4}')
reportedSize=$(($KBreportedSize * 1024))
maxAllowedSize=1099511627776

if (( $reportedSize >= $maxAllowedSize )); then
echo "drive reported space is larger than allowed size. aborting test"
else
echo "continue"
fi
}
