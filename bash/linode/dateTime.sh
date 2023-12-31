#!/bin/bash

# print default output
echo `date`

# print current date without time
echo `date +"%m-%d-%y"`

# display four digits for year
echo `date +"%m-%d-%Y"`

# display time only
echo `date +"%T"`

# display 12 hour time
echo `date +"%r"`


# Time without seconds
echo `date +"%H:%M"`

# Print full date
echo `date +"%A %d %b %Y %H:%M:%S"`

# Nanoseconds
echo Nanoseconds: `date +"%s-%N"`

# Different timezone by name
echo Timezone: `TZ=":US/Eastern" date +"%T"`
echo Timezone: `TZ=":Europe/UK" date +"%T"`

# Print epoch time - convenient for filenames
echo `date +"%s"`

# Print week number
echo Week number: `date +"%V"`

# Create unique filename
f=`date +"%s"`
touch $f
ls -l $f
rm $f

# Add epoch time to existing file
f="/tmp/test"
touch $f
mv $f $f.`date +"%s"`
ls -l "$f".*
rm "$f".*