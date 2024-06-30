#!/bin/bash

## This tool takes two ip addresses or domain names and run a ping scan on them

echo "Start of the first ping"
ping -c 10 $1
echo "End of first ping result"
echo ""

echo "Start of the second ping sweep"
ping -c 10 $2
echo "End of first ping result"
echo ""
