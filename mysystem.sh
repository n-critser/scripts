#!/bin/bash
clear
echo "this is infroamtion provided by mysystem.sh. program starts now"

echo "hello, $USER"
echo

echo "todays dat is `date`, this is week `date +"%V"`."
echo

echo "these users are currently connected:"
w | cut -d " " -f 1 - | grep -v USE | sortu -u
echo

echo "this is `uname -s` on a `uname -m` processor."
echo
echo "this is the uptime information:"
uptime
echo

echo "that's all folks"



