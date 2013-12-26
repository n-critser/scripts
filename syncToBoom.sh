#!/bin/bash

#SAVEDIR=$1

#rsync -av /home/chaos/dayIsDone/ /media/chaos/boomstick/dayIsDone
# This script will test if you have given a leap year or not.

echo "Type the name of the directory to backup, followed by [ENTER]:"

read SAVEDIR

echo $SAVEDIR
echo "where do you want to back it up to?"
read TARGETDIR
echo $TARGETDIR

echo "the save directory has contents: "
ls $SAVEDIR

echo "Is that correct? true or false"
read ASK
if (("$ASK" == "true") || ("$ASK"== "TRUE")); then
    echo "Target directory contains: "
    ls $TARGETDIR
    echo "Is that TARGET correct? true or false"
    read ASK2
    if (("$ASK2" == "true") || ("$ASK2"== "TRUE")); then
	echo " now backing up directory"
	rsync -av $SAVEDIR $TARGETDIR
    else
	echo "shit something fucked up"
	exit 1
    fi
else
    exit 1
fi