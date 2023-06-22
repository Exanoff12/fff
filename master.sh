#!/bin/bash

echo "Flash Checker v0.1 beta"
echo "copyright - 2023 - Erik (AKPR)"

if [ ! $1 ] then
echo "usage: ./fc <mounted drive path>"
fi

KBreportedSize=$(df -k $1 | tail -1 | awk '{print $4}')
reportedSize=$(($KBreportedSize * 1024))
