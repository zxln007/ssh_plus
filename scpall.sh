#!/bin/bash
srcfilename=$1
destdirname=$2
for i in `cat list`;
do
echo "===========================$i==========================";
scp -r $srcfilename  $i:$destdirname;
done
