#!/bin/bash

#this script makes a backup of my home dir
BACKUPDIR=/home
BACKUPFILES=chaos
#change to /var/tmp after testing
TARFILE=/home/chaos/scripts/home_chaos.tar
BZIPFILE=/home/chaos/scripts/home_chaos.tar.bz2
#SERVER=XXX
#REMOTEDIR=XXX
LOGFILE=/home/chaos/scripts/home_backup.log
cd $BACKUPDIR

#this creates the archive
tar cf $TARFILE $BACKUPFILES #> /dev/null 2>&1

#remove old bzip2 fiel
rm $BZIPFILE 2> /dev/null

#copy to another host
#scp $BZIPFILE $SERVER:$REMOTEDIR > /dev/null 2>&1

#create timestamp log file
date >>$LOGFILE
echo backup succeeded >> $LOGFILE