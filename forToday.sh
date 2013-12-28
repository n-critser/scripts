#!/bin/bash
# can also add "-xv" to the shebang for debugging
# This script Speaks out the current date and then reads the file
# of items or reminders for that day (if the file exists)
# otherwise it starts up an emacs session with a file for
# that date
# to debug use the < $ bash -x script1.sh > command
# or you can use piecewise debugging
#  set -x			# activate debugging from here
#  w
#  set +x			# stop debugging from here

##### SCRIPT STARTS HERE
echo "`date +"%A"` `date +"%B"` `date +"%e"` `date +"%C"` `date +"%y"`" | espeak # > /dev/null 2
clear
TODAY="`date +"%m"`.`date +"%d"`.`date +"%y"`"
#/home/chaos/Desktop/DoThisShit
SEARCH_DIR=/home/"$USER"/dayIsDone
SEARCH_PATH=$SEARCH_DIR/$TODAY
TODAY_FILE="$TODAY.org"
echo "$SEARCH_DIR"
echo "$SEARCH_PATH"
echo "$TODAY"
echo "$TODAY_FILE"
echo "this is your todo list for today"
echo "Todays date is `date`."

echo
if [ -f $SEARCH_PATH ];
  then
    #cat "$TODAY_FILE"| espeak  # > /dev/null 2
    clear
    echo "$SEARCH_DIR"
    echo "$SEARCH_PATH"
    echo "$TODAY_FILE"
    echo "$TODAY"
    cal `date +"%m"` `date +"%Y"`
    more "$TODAY_FILE"
    emacs "$TODAY_FILE" -nw
  else
    emacs "$TODAY_FILE" -nw 
    
fi

#emacs `date +"%m"`.`date +"%d"`.`date +"%y"`
# if (
#emacs $TODAY