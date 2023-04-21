#!/bin/bash
#Create Training and Demo Directory (this is a comment)
mkdir Training Demo
#move to the Demo directory
cd Demo
#create 10 files
touch file{1..60}.txt
#create the filelist.txt and document created text files
ls -l > filelist.txt
