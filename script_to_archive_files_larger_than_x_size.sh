#!/bin/bash

BASE=/home
DAYS=10
DEPTH=1
RUN=0

#check if directory is exist 

if [ ! -d $BASE ]
then 
  echo "directory is not exist:$BASE"
  exit 1
fi

#check archive directory if not exist

if [ ! -d $BASE/archive ]
then 
  mkdir $BASE/archive 
fi

#find the list of files larger than 20M

for i in `find $BASE -type f -size +20M`
do
  if [ $RUN -eq 0 ]
  then 
     echo "[$(date "+%Y-%m-%d  %H:%M:%s")] archiving $i ==> $BASE/archive"
     gzip $i || exit 1
     mv $i.gz $BASE/archive || exit 1
  fi
done
