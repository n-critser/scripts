#!/usr/bin/env python

import os,sys
import subprocess

print "Current working Directory",os.getcwd()


#runProcess("ls")

#n = subprocess.Popen("ls", stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
#ret = n.poll()
#subprocess.check_call(["ls"," -l"])
# from subprocess import call
#call("cat "+"gitStatus.py", shell=True)


from os.path import join, getsize
for root, dirs, files in os.walk('/home/nick_chaos/scripts'):
    if ".git" in root:
        continue
    else:
        #print "[root]=",root
        #print "[file]=",files
        for fi in files:
            #print fi
            lines = open(fi)
            for line in lines:
                if "echo" in line:
                    print "File_Name=",fi
                    break
                    #print "Line=",line
            
    #print sum(getsize(join(root, name)) for name in files),
    #print "bytes in", len(files), "non-directory files"
    #if 'CVS' in dirs:
     #   dirs.remove('CVS')  # don't visit CVS directories

