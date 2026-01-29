#!/bin/bash
#$Revision:001$
#$Thu Jan 29 10:30:33 IST 2026$


# Provide the of directory
# Check if the directory is present or not
# Create 'archive' folder if not already present
# Find all the files with size more than 100 MB compress each file
# Move the compressed file in 'archive' folder
# Make a corn job to run the script every day at given time 

#Variables

BASE=/Users/ashutoshtiwari/Downloads
DAYS=10
DEPTH=1
RUN=0

if [ ! -d ${BASE} ]
then
    echo "directory does't exist: ${BASE}"
    exit 1
fi
if [ ! -d ${BASE}/archive ]
then
    mkdir -p ${BASE}/archive
fi
# find the list of files larger than 100MB
for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do
    if [ ${RUN} -eq 0 ]
    then
        echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done 
