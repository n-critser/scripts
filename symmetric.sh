#!/bin/bash

DIR=/home/"$USER"/dayIsDone
echo $DIR
TODAY="`date +"%m"`.`date +"%d"`.`date +"%y"`"
TODAY_FILE="$TODAY.org"
FILE=$DIR/$TODAY_FILE
PUBLIC=$DIR/publicToday/
echo $FILE
echo $PUBLIC
CRYPTO=$TODAY_FILE.gpg
if [ -f $SEARCH_PATH ];
  then
    clear
    echo "$TODAY"
    echo "*`zdump EST`*" 
    cal `date +"%m"` `date +"%Y"`
    echo $FILE
    gpg --output $CRYPTO --symmetric $TODAY_FILE
    mv $CRYPTO "$PUBLIC$CRYPTO"
  else
    echo "NO FILE FOR $TODAY"
    
fi

#TO DECRYPT
#gpg --output doc --decrypt 02.25.14.org.gpg 
